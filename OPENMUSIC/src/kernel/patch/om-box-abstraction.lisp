(in-package :om)

(defclass OMBoxAbstraction (OMBoxCall) 
  ((pre-delay :initform 0 :accessor pre-delay)
   (ready :initform t :accessor ready))
  (:default-initargs :text-align :center :icon-pos :left)
  (:metaclass omstandardclass))

(defmethod box-patch-name ((box OMBoxAbstraction) &optional (name nil name-provided-p))
  (if name-provided-p 
      ;;; SET
      (if (is-persistant (reference box))
          (let ((newpatch (and (probe-file name)
                               (load-doc-from-file name :patch))))
            (if newpatch
                (let ((oldpatch (reference box)))
                  (release-reference oldpatch box)
                  (setf (reference box) newpatch)
                  (push box (references-to newpatch))
                  (update-from-reference box))
             (progn 
               (om-message-dialog "this file is not a valid patch !")
               (update-inspector-for-box box))))
        (set-name (reference box) name))
    ;;; GET
    (if (is-persistant (reference box))
        (mypathname (reference box))
      (name (reference box)))))

(defmethod get-properties-list ((self OMBoxAbstraction))
  (let ((properties ))   
    (add-properties-list 
     (call-next-method) 
     `(("Appearance"
        ((:display "View (m)" ,(display-modes-for-object (reference self)) display)))
       ("Abstraction"
        ((:filename 
          ,(if (is-persistant (reference self)) "File name" "Name") 
          ,(if (is-persistant (reference self)) :path :text) 
          box-patch-name)))
       ("Scheduling"
        ((:pre-delay "Pre-delay (ms)" :number pre-delay)))))))


(defmethod set-reactive ((self OMBoxAbstraction) val)
  (setf (ready self) nil)
  (call-next-method))

(defmethod omNG-make-new-boxcall ((reference OMProgrammingObject) pos &optional init-args)
  (let* ((box (make-instance (get-box-class reference)
                            :name (if init-args (format nil "~A" init-args) (name reference))
                            :reference reference)))
    (setf (box-x box) (om-point-x pos)
          (box-y box) (om-point-y pos)
          ;(box-w box) (om-point-x (minimum-size box))
          ;(box-h box) 50
          )
    (push box (references-to reference))
    box))

;(defmethod set-name ((self OMBoxAbstraction) text)  
;  (call-next-method)
;  (setf (name (reference self)) text))

(defmethod get-icon-id-from-reference ((self OMBoxAbstraction)) 
  (icon (reference self)))

(defmethod create-box-inputs ((self OMBoxAbstraction)) 
  (mapcar #'(lambda (in) 
              (make-instance 'box-input :reference in 
                             :name (name in)
                             :box self
                             :value (eval (defval in))
                             :doc-string (doc in)))
          (sort (inputs (reference self)) '< :key 'index)
          ))

(defmethod create-box-outputs ((self OMBoxAbstraction)) 
  (mapcar #'(lambda (out) 
              (make-instance 'box-output :reference out 
                             :name (name out)
                             :box self
                             :doc-string (doc out)))
          (sort (outputs (reference self)) '< :key 'index)
          ))

(defmethod update-from-editor ((self OMBoxAbstraction))
  ;(contextual-update self (container self))
  (when (frame self)
    ;(update-inspector-for-box (frame self))
    (reset-cache-display self)
    (om-invalidate-view (frame self))))

(defmethod update-from-reference ((self OMBoxAbstraction))
  (setf (name self) (name (reference self)))
  (call-next-method))


;;; called when the patch it is in is closed
(defmethod close-internal-element ((self OMBoxAbstraction)) t)

(defmethod om-copy ((self OMBoxAbstraction)) 
  (let ((newbox (call-next-method)))
    (setf (box-w newbox) (box-w self) (box-h newbox) (box-h self))
    (push newbox (references-to (reference newbox)))
    newbox))

(defmethod omng-delete ((box OMBoxAbstraction))
  (let ((patch (reference box)))
    (release-reference patch box)
    (unless (is-persistant patch) ;; do not destroy the patch when the box is deleted
      (omng-delete patch)))
  (call-next-method))


;;;=======================
;;; THESE BEHAVIOURS DIFFER BETWEEN 
;;; INTERNAL OR FILE ABSTRACTION
;;;=======================

(defmethod allow-rename ((self OMBoxAbstraction)) 
  (not (is-persistant (reference self))))

;;; only internal does report to the container's editor
(defmethod update-from-editor ((self OMBoxAbstraction))
  (unless (is-persistant (reference self))
    (report-modifications (editor (container self))))
  (call-next-method))

;;; called when the patch it is in is closed/deleted
(defmethod close-internal-element ((self OMBoxAbstraction)) 
  (unless (is-persistant (reference self))
    (close-internal-elements (reference self))
    (close-editor (reference self))
    (omng-delete self))
  t)

(defmethod allow-text-input ((self OMBoxAbstraction)) 
  (unless (is-persistant (reference self))
    (values (name self)
            #'(lambda (box text)
                ;;; the box name shall be updated as well
                (set-name (reference self) text)
                (update-inspector-for-box self)
                ))))

(defmethod internalize-abstraction ((self OMBox)) nil)
(defmethod internalized-type ((self t)) (type-of self))
(defmethod copy-contents ((from t) (to t)) nil)

(defmethod internalize-abstraction ((self OMBoxAbstraction))
  (if (is-persistant (reference self))
      (let* ((old-ref (reference self))
             (new-ref (make-instance (internalized-type old-ref) :name (name old-ref))))
        (close-editor old-ref)
        (copy-contents old-ref new-ref)
        (release-reference old-ref self)
        (setf (reference self) new-ref)
        (push self (references-to new-ref))
        (redraw-frame self))
    (om-beep-msg "The ~A '~A' is already internal." (type-of (reference self)) (name (reference self)))
    ))
      

;;;===================
;;; DISPLAY
;;;===================

(defmethod draw-patch-icon ((self OMBoxAbstraction))
  (let* ((abs (reference self))
         (iconsize (if (is-persistant abs) 24 16)))
    (om-draw-picture (icon abs) :x 0 :y 4 :w iconsize :h iconsize)
    ))

(defmethod minimum-size ((self OMBoxAbstraction))
  (let ((text-size (round (om-string-size (name self) (text-font self)))))
    (om-make-point (+ 10 
                      (max (+ 28 text-size)
                           (* (length (inputs self)) 10)
                           (* (box-n-outs self) 10)))
                   28)))

(defmethod maximum-size ((self OMBoxAbstraction)) (omp 200 200))

