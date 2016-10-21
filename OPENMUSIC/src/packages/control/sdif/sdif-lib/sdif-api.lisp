;;===========================================================================
;OM API 
;Multiplatform API for OpenMusic
;Macintosh version (Digitool Macintosh Common Lisp - MCL)
;
;Copyright (C) 2004 IRCAM-Centre Georges Pompidou, Paris, France.
; 
;This program is free software; you can redistribute it and/or
;modify it under the terms of the GNU General Public License
;as published by the Free Software Foundation; either version 2
;of the License, or (at your option) any later version.
;
;See file LICENSE for further informations on licensing terms.
;
;This program is distributed in the hope that it will be useful,
;but WITHOUT ANY WARRANTY; without even the implied warranty of
;MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;GNU General Public License for more details.
;
;You should have received a copy of the GNU General Public License
;along with this program; if not, write to the Free Software
;Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.
;
;Authors: Jean Bresson and Augusto Agon
;;===========================================================================

;;===========================================================================
;DocFile
;  SDIF FUNCTIONS
;;===========================================================================

(in-package :sdif)

(export '(sdif-init 
          sdif-init-cond
          sdif-kill
          sdif-check-file
          sdif-get-pos
          sdif-set-pos
          sdif-get-signature
          sdif-calculate-padding          
          )
        :sdif)

;;; INIT/CLOSE SDIF
(defvar *sdif-initialized* nil)

(defun sdif-init (string)
  (unless *sdif-initialized*
    (when sdif::*sdif-library*
      (print "Initializing SDIF...")
      (sdif::SdifGenInit string))
    (setf *sdif-initialized* t)))

(defun sdif-init-cond ()
  (unless *sdif-initialized*
    (when sdif::*sdif-library*
      (print "Initializing SDIF...")
      (sdif::SdifGenInitCond ""))
    (setf *sdif-initialized* t)))

(defun sdif-kill ()
   (sdif::SdifGenKill)
   (setf *sdif-initialized* nil))

(defun sdif-check-file (filename)
  (not (zerop (sdif::SdifCheckFileFormat (namestring filename)))))

(defun sdif-get-pos (ptr)
  (let ((thelong (cffi::%foreign-alloc 8))
        rep)
    (sdif::SdiffGetPos ptr thelong)
    (setf rep (cffi::mem-ref thelong :unsigned-long))
    (cffi:foreign-free thelong)
    rep))

(defun sdif-set-pos (ptr thelong)
  (let ((longptr (cffi::%foreign-alloc 8)))
    (cffi::mem-set thelong longptr :unsigned-long)
    (sdif::SdiffSetPos ptr longptr)
    (cffi::foreign-free longptr)
    t))

(defun sdif-get-signature (sdiff)
   (let ((nbcharread (cffi::%foreign-alloc 4))
         rep)
     (cffi::mem-set 0 sdiff :long)
     (setf rep (sdif::SdifFGetSignature sdiff nbcharread))
     (cffi::foreign-free nbcharread)
     rep))

(defun sdif-calculate-padding (bytes)
  (let ((align 8))
    (cond ((zerop bytes) 0)
          ; ((< bytes align) (- align bytes))
          ;(t (mod (cadr (multiple-value-list (floor bytes align))) align))
          (t (- align (mod bytes align)))
          )))

; (sdif-calculate-padding 9)



;;;============================
;;; TESTS
#|
(Sdif-Init "")
(Sdif-Kill)
(setf filepath (namestring (capi::prompt-for-file nil))) 
(setf filepath (namestring filepath))
(setf sdiffile (Sdif-Open-file filepath :eReadFile))
(sdif-close-file sdiffile)
(sdif-check-file filepath)
(sdif::sdifFreadgeneralheader sdiffile)
(sdif::sdifFReadAllASCIIChunks sdiffile)  
(sdif::sdifFReadFrameHeader sdiffile)
(sdif::SdifFSkipFrameData sdiffile)
(setf sign (sdif::SdifFCurrSignature sdiffile))
(setf sign (sdif::SdifFCurrMatrixSignature sdiffile))
(setf sign (sdif::SdifFCurrFrameSignature sdiffile))
(sdif-Signature-to-string sign)
(setf bytesread (ff::make-foreign-pointer :size 2 :type :int))
(setf posptr (ff::make-foreign-pointer :size 8 :type :int))
(sdif::SdifFGetSignature sdiffile bytesread)
(sdif::sdiffcurrtime sdiffile)
(sdif::sdiffcurrdatatype sdiffile)
(sdif::sdiffcurrID sdiffile)
(sdif::sdiffcurrnbmatrix sdiffile)
(sdif::sdiffreadmatrixheader sdiffile)
(sdif::sdiffcurrnbcol sdiffile)
(sdif::sdiffcurrnbrow sdiffile)
(sdif::sdiffskipmatrixdata sdiffile) 
(sdif::sdiffgetsignature sdiffile bytesread) 
(sdif::sdiffgetpos sdiffile posptr)
(sys::memref-int (ff::foreign-pointer-address posptr) 0 0 :unsigned-long)
(defun signature (sdiff ptr)
   (print (sdif::sdifSignaturetostring (sdif::SdifFCurrSignature sdiff)))
   (sdif::sdifFReadFrameHeader sdiff)
   (sdif::sdifFSkipFrameData sdiff)
   (sdif::SdifFGetSignature sdiffile ptr))
|#