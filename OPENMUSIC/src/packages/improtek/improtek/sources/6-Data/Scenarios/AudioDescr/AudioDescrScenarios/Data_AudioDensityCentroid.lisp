(in-package :om)

;Gurtu_ED10-SC4
;--------------------------------------------------------------------------------------------------------------------
(setf 
	Gurtu_ED10-SC4_grid (quote ((0 0)(0 0)(0 0)(1 1)(0 0)(1 1)(1 2)(0 0)(0 1)(3 2)(1 2)(1 2)(1 2)(0 2)(3 2)(5 3)(3 2)(3 2)(1 0)(0 1)(4 1)(2 0)(3 0)(1 0)(3 0)(3 0)(3 0)(3 0)(3 0)(3 0)(3 0)(3 0)(5 0)(3 0)(3 0)(1 0)(2 0)(2 0)(3 1)(3 1)(3 1)(3 1)(3 1)(3 1)(3 0)(1 0)(3 0)(3 0)(3 0)(1 0)(3 0)(3 0)(3 0)(3 0)(3 0)(3 0)(1 0)(3 0)(3 0)(3 0)(4 0)(3 0)(3 0)(3 0)(4 0)(2 0)(2 0)(0 0)(2 0)(0 0)(1 0)(0 0)(3 0)(1 0)(0 0)(3 0)(0 1)(1 0)(0 0)(1 0)(0 0)(1 0)(0 0)(4 0)(0 0)(3 0)(0 0)(3 0)(1 0)(0 0)(0 0)(3 0)(0 1)(1 0)(0 0)(0 0)(1 0)(1 0)(1 0)(1 0)(1 0)(1 0)(3 0)(0 0)(2 0)(2 0)(2 0)(0 2)(2 2)(3 2)(3 3)(2 3)(5 3)(0 0)(0 0)(2 0)(0 1)(2 2)(2 2)(2 2)(2 1)(0 0)(2 0)(0 1)(2 1)(2 2)(3 2)(0 2)(2 2)(0 0)(2 0)(2 1)(0 2)(3 1)(2 0)(3 0)(4 0)(5 0)(3 0)(5 0)(5 0)(3 0)(5 0)(1 0)(4 0)(4 0)(2 0)(0 0)(0 0)(1 0)(1 0)(1 0)(1 0)(0 0)(3 0)(0 0)(0 0)(1 0)(3 1)(1 1)(5 2)(1 2)(5 2)(1 1)(1 1)(1 1)(0 0)(0 1)(1 1)(0 0)(3 1)(1 1)(0 0)(4 1)(0 0)(0 0)(1 0)(3 0)(3 0)(0 1)(3 0)(3 1)(3 1)(1 0)(4 0)(2 0)(5 1)(4 0)(0 0)(1 0)(4 0)(3 0)(0 0)(0 0)(3 0)(1 0)(1 0)(1 0)(2 0)(2 0)(0 0)(0 0)(2 0)(4 1)(2 0)(1 0)(1 0)(0 0)(3 0)(0 0)(0 1)(1 0)(1 0)(0 0)(0 0)(0 1)(2 0)(3 0)(0 0)(0 0)(3 0)(3 0)(0 0)(3 0)(0 0)(4 0)(3 0)(3 0)(5 0)(0 0)(0 0)(0 0)(2 0)(0 0)(0 0)(0 0)(3 0)(0 0)(1 0)(1 0)(1 0)(3 0)(0 0)(3 0)(5 0)(0 0)(1 0)(3 0)(3 0)(3 1)(3 1)(2 1)(1 0)(1 0)(0 0)(0 0)(0 0)(0 1)(0 0)(1 0)(3 0)(1 0)(3 1)(3 1)(3 1)(2 1)(2 0)(1 0)(1 1)(0 1)(0 0)(1 0)(5 0)(3 0)(3 0)(3 1)(5 1)(5 1)(0 1)(5 1)(2 1)(2 1)(0 1)(3 1)(2 1)(2 2)(4 2)(2 2)(4 2)(3 2)(2 2)(3 2)(5 2)(3 2)(3 2)(3 1)(5 1)(5 1)(3 1)(0 1)(2 1)(4 1)(0 1)(3 1)(5 1)(5 1)(2 2)(4 1)(3 2)(3 1)(4 1)(0 1)(4 1)(0 1)(2 2)(2 1)(3 1)(4 2)(3 1)(4 1)(3 1)(3 2)(3 1)(0 1)(3 2)(2 1)(0 1)(1 1)(3 1)(3 1)(1 1)(3 1)(0 1)(2 1)(2 1)(1 1)(3 1)(3 1)(2 1)(0 1)(2 1)(0 1)(2 1)(2 1)(2 1)(2 1)(2 1)(0 1)(2 1)(2 1)(0 1)(0 1)(0 1)(0 1)(4 1)(2 1)(2 1)(1 1)(1 1)(0 1)(0 1)(2 0)(3 0)(0 0)(1 1)(0 0)(3 1)(3 0)(0 0)(0 1)(2 0)(2 1)(0 1)(2 1)(2 1)(5 0)(0 1)(2 0)(3 0)(0 1)(0 1)(3 1)(4 1)(3 2)(3 2)(4 2)(2 2)(1 2)(4 1)(0 2)(1 2)(3 2)(0 2)(3 2)(2 2)(2 2)(4 1)(4 1)(5 1)(4 1)(5 1)(4 2)(4 2)(1 2)(0 2)(5 1)(5 1)(2 1)(4 1)(4 2)(2 2)(1 2)(4 2)(4 2)(4 2)(4 2)(2 2)(2 2)(2 1)(2 1)(4 1)(4 1)(4 2)(5 2)(2 2)(2 2)(5 2)(4 1)(4 2)(0 2)(1 1)(3 2)(1 2)(0 1)(0 0)(2 1)(1 0)(0 0)(0 0)(1 0)(1 0)(2 0)(0 0)(0 0)(2 0)(2 0)(0 0)(0 0)(2 0)(2 0)(0 0)(2 0)(1 0)(2 0)(2 0)(1 0)(0 0)(0 0)(2 0)(1 0)(1 0)(2 0)(1 0)(2 0)(2 0)(4 0)(0 0)(0 0)(3 0)(2 0)(4 0)(0 0)(2 0)(1 1)(3 1)(3 1)(0 1)(0 1)(1 1)(1 1)(1 1)(1 0)(0 0)(0 0)(1 0)(1 0)(2 0)(1 0)(2 0)(2 0)(0 0)(3 0)(1 0)(3 0)(2 0)(4 0)(3 0)(2 0)(4 0)(0 0)(2 0)(1 0)(3 0)(0 0)(3 0)(2 0)(0 0)(0 0)(2 0)(2 0)(1 0)(1 0)(0 0)(0 0)(1 0)(0 0)(1 0)(3 0)(2 0)(2 0)(0 0)(1 1)(4 0)(4 1)(2 1)(4 1)(0 0)(0 0)(0 1)(0 0)(0 0)(0 1)(0 0)(1 0)(0 0)(1 0)(0 0)(0 0)(2 0)(0 0)(0 0)(0 0)(0 0)(1 0)(1 0)(2 0)(1 0)(0 0)(1 0)(0 0)(2 0)(0 1)(0 0)(3 0)(0 0)(0 0)(2 1)(2 0)(0 0)(1 0)(2 0)(0 0)(0 0)(2 0)(0 0)(1 0)(0 0)(0 0)(0 0)(1 0)(0 0)(0 0)(2 0)(2 0)(1 0)(3 0)(1 1)(1 0)(0 0)(1 1)(3 1)(1 1)(1 0)(3 0)(3 0)(3 0)(1 0)(3 0)(1 0)(0 0)(0 0)(2 0)(0 1)(3 0)(2 1)(0 0)(0 0)(3 0)(3 0)(1 0)(3 1)(1 0)(3 0)(0 0)(1 0)(1 0)(3 0)(0 0)(3 1)(2 1)(0 0)(0 0)(2 0)(2 0)(0 0)(3 0)(3 0)(0 0)(1 0)(0 0)(1 0)(1 0)(3 1)(1 0)(0 1)(0 0)(3 0)(0 0)(1 0)(0 0)(0 0)(1 0)(3 0)(1 0)(1 0)(1 0)(1 0)(3 0)(1 0)(0 0)(3 0)(0 0)(0 0)(0 0)(0 0)(0 0)(0 0)(3 2)(1 0)(0 1)(0 0)(0 0)(1 1)(1 0)(1 1)(0 0)(1 0)(0 0)(3 1)(1 1)(0 0)(0 0)(3 0)(0 0)(2 0)(0 0)(0 0)(3 0)(1 0)(3 0)(0 0)(1 0)(1 0)(2 0)(1 0)(1 0)(0 0)(0 0)(2 0)(0 0)(0 0)(1 0)(4 0)(3 0)(2 0)(3 0)(0 0)(0 0)(0 0)(3 0)(1 0)(1 0)(0 0)(1 0)(3 0)(1 0)(4 0)(0 0)(0 0)(0 0)(1 0)(1 0)(0 0)(1 0)(3 0)(3 0)(0 0)(1 0)(2 0)(1 0)(3 0)(3 0)(1 0)(1 0)(1 0)(3 0)(0 0)(1 0)(3 0)(3 0)(3 0)(1 0)(1 0)(1 0)(0 0)(1 0)(0 0)(1 0)(3 0)(1 0)(0 0)(3 0)(0 0)(0 0)(1 0)(0 0)(1 2)(5 2)(1 1)(0 0)(1 0)(3 1)(1 0)(0 1)(1 0)(1 1)(0 1)(1 2)(1 1)(0 1)(0 3)(1 1)(0 0)(1 3)(1 0)(1 0)(1 2)(1 3)(0 0)(1 3)(0 0)(3 0)(1 2)(1 2)(0 0)(1 1)(1 1)(0 2)(0 0)(2 3)(0 2)(0 1)(2 3)(0 1)(1 2)(0 3)(2 1)(0 1)(0 3)(1 1)(3 3)(0 3)(2 3)(2 1)(0 2)(0 1)(0 0)(1 3)(0 1)(1 1)(0 2)(3 2)(0 0)(0 1)(1 0)(1 0)(0 2)(3 2)(0 0)(0 2)(0 0)(0 0)(0 1)(1 1)(0 0)(1 2)(1 0)(0 0)(0 0)(0 1)(1 2)(1 3)(3 1)(2 0)(0 1)(3 1)(0 0)(2 2)(0 0)(0 0)(0 2)(4 3)(0 1)(0 0)(0 1)(0 0)(0 1)(0 0)(2 3)(1 1)(1 0)(0 1)(1 2)(0 1)(1 2)(0 1)(0 1)(0 0)(3 2)(1 2)(1 3)(1 0)(0 1)(0 0)(1 2)(1 0)(1 0)(1 0)(1 1)(0 1)(3 2)(1 1)(0 0)(0 0)(0 1)(0 1)(0 2)(1 1)(1 0)(1 1)(0 0)(0 2)(2 2)(1 1)(1 0)(0 0)(0 2)(0 0)(3 1)(0 0)(0 2)(0 0)(1 1)(1 0)(3 1)(0 1)(1 1)(0 0)(3 3)(0 0)(0 0)(0 3)(3 0)(1 0)(0 0)(1 0)(0 1)(1 0)(0 0)(0 3)(3 0)(1 0)(0 1)(1 0)(0 1)(1 0)(1 0)(1 2)(1 0)(0 0)(0 0)(0 0)(1 1)(0 0)(1 0)(0 0)(0 0)(2 0)(0 0)(0 0)(1 0)(0 0)(1 0)(0 2)(0 1)(0 0)(0 0)(0 2)(2 0)(0 1)(0 0)(0 0)(3 2)(0 0)(0 0)(0 3)(0 0)(0 0)(3 2)(1 0)(1 0)(1 0)(1 0)(0 1)(0 0)(1 2)(1 1)(1 0)(0 0)(3 1)(0 1)(0 2)(0 0)(5 2)(1 0)(0 0)(3 3)(0 1)(0 1)(1 2)(0 1)(3 1)(1 2)(0 0)(5 3)(0 0)(1 0)(0 2)(1 1)(0 0)(4 1)(1 1)(0 0)(1 1)(0 2)(0 0)(1 1)(1 0)(0 0)(1 1)(0 0)(1 0)(5 0)(3 0)(0 0)(2 0)(0 0)(2 0)(0 0)(2 1)(2 0)(3 0)(2 0)(0 0)(1 1)(4 0)(0 0)(1 0)(1 0)(2 0)(0 0)(2 0)(0 0)(0 0)(0 0)(1 0)(2 0)(2 0)(0 0)(0 0)(0 0)(1 0)(2 0)(0 0)(1 0)(2 0)(3 1)(2 0)(1 0)(2 0)(1 0)(0 0)(1 0)(5 0)(2 0)(0 0)(0 0)(1 0)(2 0)(0 0)(2 0)(0 0)(0 0)(2 1)(2 0)(4 0)(0 0)(2 0)(0 0)(1 0)(1 0)(0 0)(2 0)(1 0)(4 0)(2 0)(2 0)(4 0)(0 0)(4 0)(2 0)(0 0)(0 0)(0 0)(2 0)(2 0)(0 0)(1 0)(0 0)(0 0)(0 1)(2 0)(4 0)(0 0)(0 0)(0 0)(3 0)(5 0)(1 0)(1 0)(1 0)(4 0)(2 0)(2 0)(4 0)(1 0)(0 0)(1 0)(1 0)(2 0)(1 0)(0 0)(0 0)(2 0)(2 0)(0 0)(0 0)(2 0)(0 0)(2 0)(0 0)(0 0)(0 0)(0 0)(0 0)(3 0)(3 0)(1 0)(1 0)(1 0)(5 0)(0 0)(0 0)(3 0)(3 0)(1 0)(3 0)(0 0)(0 0)(5 0)(1 0)(0 0)(3 0)(0 0)(3 0)(0 0)(3 0)(1 1)(3 0)(0 0)(0 0)(2 0)(0 0)(2 0)(2 0)(2 0)(0 0)(0 0)(0 0)(1 1)(0 1)(2 2)(0 1)(0 0)(0 0)(0 2)(0 0)(0 2)(0 3)(1 1)(0 1)(0 1)(0 0)(1 2)(4 2)(1 1)(2 1)(0 1)(1 0)(1 2)(1 2)(1 2)(1 2)(0 2)(0 1)(0 3)(0 3)(0 3)(0 2)(0 1)(1 2)(0 3)(1 3)(1 2)(1 1)(5 2)(3 3)(0 3)(0 3)(2 3)(0 3)(0 3)(0 2)(0 1)(1 2)(1 3)(0 2)(1 3)(0 0)(1 3)(0 2)(3 3)(1 1)(0 3)(0 2)(1 2)(0 3)(0 3)(3 2)(1 3)(0 3)(2 3)(0 3)(3 3)(1 3)(1 3)(4 3)(0 3)(1 3)(1 2)(1 3)(3 3)(1 3)(0 3)(1 3)(1 3)(2 3)(1 3)(0 3)(1 3)(0 3)(1 3)(1 3)(0 2)(0 2)(0 2)(1 3)(3 2)(1 3)(1 3)(2 3)(1 3)(1 3)(1 3)(3 3)(1 3)(3 3)(0 3)(0 2)(0 3)(3 3)(1 2)(0 1)(1 2)(1 3)(0 2)(1 3)(1 2)(1 2)(0 3)(3 2)(0 3)(1 3)(1 3)(3 3)(0 2)(1 3)(1 3)(1 3)(1 3)(1 3)(0 2)(2 2)(1 2)(0 1)(0 1)(3 2)(0 2)(3 3)(2 3)(4 3)(0 3)(0 2)(4 3)(1 2)(0 2)(3 2)(2 2)(2 3)(3 3)(3 3)(1 3)(1 3)(0 1)(1 2)(1 2)(1 2)(3 2)(3 3)(3 2)(0 3)(1 3)(1 3)(3 3)(0 3)(3 3)(0 3)(3 3)(0 3)(1 3)(1 3)(1 3)(4 3)(2 3)(2 3)(4 3)(2 3)(5 3)(1 3)(2 3)(2 3)(1 3)(5 3)(1 3)(0 2)(2 3)(4 3)(0 3)(4 3)(4 3)(2 3)(4 3)(4 3)(2 3)(4 3)(4 3)(3 3)(1 3)(3 3)(3 3)(4 3)(4 3)(4 3)(4 3)(3 3)(3 3)(3 3)(4 3)(4 3)(1 3)(3 3)(3 3)(3 3)(4 3)(3 3)(4 3)(2 3)(3 3)(3 3)(1 3)(2 3)(2 3)(2 3)(1 3)(4 3)(4 3)(4 3)(4 3)(1 3)(1 3)(1 2)(3 3)(1 3)(3 3)(1 3)(2 3)(0 3)(3 3)(0 3)(1 3)(0 3)(3 3)(1 3)(5 2)(0 3)(3 2)(1 2)(1 3)(1 2)(1 1)(3 2)(1 2)(3 2)(3 2)(4 2)(0 1)(0 3)(2 3)(2 3)(0 3)(0 1)(3 0)(0 0)(2 0)(2 0)(2 0)(2 0)(3 0)(0 0)(0 0)(1 0)(1 0)(1 0)(1 0)(3 0)(3 0)(3 0)(3 0)(1 0)(0 3)(5 2)(0 1)(0 0)(0 0)(1 1)(0 0)(5 2)(5 2)(0 0)(1 1)(1 1)(0 0)(0 0)(0 0)(2 1)(0 0)(0 0)(0 0)(3 1)(0 1)(0 1)(0 1)(2 2)(2 3)(5 2)(1 2)(0 1)(0 2)(0 1)(0 3)(1 2)(0 1)(1 1)(1 1)(1 2)(0 0)(1 3)(0 1)(3 3)(2 0)(0 1)(0 3)(0 1)(1 1)(1 0)(4 0)(4 0)(3 0)(0 0)(1 0)(1 1)(0 1)(3 2)(0 3)(1 1)(3 2)(1 0)(1 0)(0 3)(0 0)(0 2)(1 0)(0 0)(1 3)(3 3)(1 1)(0 0)(0 2)(1 1)(1 2)(0 2)(0 1)(1 0)(3 0)(2 0)(2 3)(0 1)(2 2)(4 1)(0 3)(0 2)(1 2)(1 1)(0 3)(1 1)(0 3)(0 2)(1 2)(0 1)(0 2)(1 1)(0 0)(1 1)(1 1)(0 1)(0 1)(1 2)(0 3)(0 1)(0 0)(1 1)(1 2)(0 1)(0 1)(1 0)(1 1)(0 1)(1 2)(0 1)(0 0)(1 2)(0 2)(1 0)(1 1)(1 3)(1 3)(1 3)(2 2)(0 1)(3 0)(1 1)(0 1)(0 0)(5 0)(0 0)(1 1)(0 0)(1 0)(0 0)(3 2)(0 1)(1 2)(1 3)(3 3)(0 3)(4 2)(1 2)(3 1)(3 2)(5 2)(0 2)(3 3)(0 1)(2 1)(1 2)(2 3)(0 1)(3 2)(1 2)(0 1)(1 1)(0 1)(0 0)(1 3)(0 0)(0 0)(3 2)(2 1)(0 0)(0 2)(0 1)(1 0)(1 0)(1 0)(0 3)(5 0)(2 0)(0 0)(0 1)(0 0)(1 3)(0 1)(1 1)(2 0)(4 0)(1 1)(1 1)(0 0)(3 2)(0 1)(2 0)(2 0)(3 0)(3 0)(3 0)(4 0)(1 1)(1 1)(0 1)(1 1)(1 1)(2 0)(0 1)(0 1)(1 2)(1 1)(0 2)(0 1)(0 1)(0 1)(3 2)(1 1)(1 1)(0 1)(1 3)(0 1)(1 3)(0 1)(0 1)(5 2)(3 1)(1 2)(1 2)(2 1)(2 3)(1 2)(1 1)(0 2)(1 2)(1 1)(0 2)(0 1)(1 3)(0 1)(0 1)(1 3)(1 2)(1 1)(3 1)(2 3)(0 1)(0 1)(1 2)(0 1)(0 2)(0 1)(0 1)(1 1)(3 2)(0 1)(1 2)(3 0)(3 0)(1 0)(2 0)(2 0)(3 0)(3 0)(3 0)(1 0)(4 0)(5 0)(3 0)(0 1)(0 2)(0 2)(1 1)(1 0)(1 0)(1 1)(0 1)(0 1)(3 1)(2 0)(3 0)(3 0)(3 3)(3 2)(0 1)(0 2)(0 2)(4 0)(3 0)(1 0)(0 1)(3 3)(1 1)(2 1)(3 0)(3 0)(3 0)(2 0)(2 0)(2 0)(1 0)(2 0)(1 0)(1 2)(0 1)(0 1)(1 0)(3 1)(0 0)(1 0)(0 0)(0 1)(0 2)(0 0)(0 2)(0 0)(0 1)(1 0)(2 2)(1 1)(1 2)(1 1)(0 1)(1 2)(3 1)(1 1)(1 2)(0 1)(1 2)(1 2)(0 1)(0 0)(1 1)(0 1)(1 0)(0 0)(0 0)(0 3)(1 2)(1 2)(1 3)(1 2)(0 2)(0 3)(1 2)(1 1)(3 3)(1 3)(1 2)(0 3)(5 3)(0 3)(5 3)(0 3)(1 3)(0 2)(0 2)(1 3)(3 2)(0 3)(0 3)(3 3)(0 3)(1 3)(3 3)(3 3)(1 3)(1 3)(0 3)(1 2)(3 3)(5 3)(0 3)(0 3)(3 3)(0 3)(3 3)(3 3)(1 3)(0 3)(3 3)(0 3)(1 2)(3 3)(5 3)(0 2)(0 2)(0 1)(0 3)(0 1)(5 1)(0 2)(5 2)(4 1)(3 0)(0 1)(0 0)(3 1)(1 0)(0 0)(1 2)(0 2)(0 0)(3 1)(0 1)(1 1)(3 1)(0 1)(1 3)(0 2)(0 0)(1 2)(0 1)(1 3)(0 1)(0 0)(0 1)(1 2)(0 0)(0 1)(1 1)(3 1)(3 2)(0 1)(1 0)(1 0)(1 2)(0 2)(0 2)(0 2)(3 2)(0 1)(0 0)(0 1)(1 1)(0 2)(1 1)(0 1)(0 0)(0 1)(3 2)(0 1)(0 1)(0 2)(0 1)(0 2)(1 2)(0 1)(3 1)(1 0)(0 1)(0 2)(1 1)(0 1)(0 0)(3 3)(0 1)(0 1)(2 2)(0 3)(2 2)(0 2)(1 1)(0 2)(0 1)(1 1)(0 0)(0 1)(0 2)(0 1)(1 1)(0 2)(1 1)(0 2)(4 3)(0 2)(3 3)(0 2)(3 3)(0 0)(0 1)(1 3)(1 2)(0 1)(0 0)(0 1)(0 1)(1 1)(0 1)(0 2)(0 1)(1 0)(1 2)(1 2)(1 2)(1 1)(1 2)(1 1)(1 1)(3 0)(3 0)(1 0)(5 0)(5 0)(1 0)(1 0)(3 0)(1 0)(0 0)(0 1)(0 1)(4 2)(0 1)(1 0)(1 0)(1 0)(3 0)(0 0)(1 0)(0 0)(3 0)(2 0)(2 0)(3 1)(1 1)(2 1)(2 1)(0 0)(0 1)(0 1)(0 2)(0 2)(0 0)(1 2)(0 1)(0 0)(2 0)(1 1)(2 2)(2 1)(0 1)(2 1)(2 1)(2 1)(2 2)(2 1)(2 2)(1 1)(0 2)(1 2)(0 1)(0 1)(0 1)(0 1)(1 1)(0 1)(0 1)(0 2)(1 0)(1 0)(3 2)(5 1)(4 0)(1 0)(2 0)(3 0)(0 1)(4 0)(1 0)(3 0)(1 1)(3 0)(0 0)(3 0)(4 0)(3 1)(2 0)(4 0)(4 0)(4 0)(3 0)(3 0)(3 0)(2 0)(1 0)(1 2)(1 2)(0 1)(1 2)(0 1)(1 1)(2 1)(0 0)(0 2)(2 1)(2 2)(2 0)(2 1)(3 2)(2 1)(1 1)(2 1)(1 1)(2 1)(0 2)(0 2)(0 1)(1 0)(4 0)(0 3)(2 2)(1 1)(0 1)(0 0)(0 1)(0 2)(1 2)(0 1)(5 2)(0 1)(1 0)(1 1)(0 1)(1 1)(1 1)(0 2)(0 2)(0 2)(3 2)(0 1)(3 2)(1 2)(0 2)(0 1)(0 1)(0 1)(0 2)(0 2)(1 1)(3 2)(3 2)(1 2)(2 0)(0 2)(0 1)(0 1)(3 0)(1 0)(3 0)(0 0)(2 0)(1 0)(0 1)(3 1)(0 0)(3 0)(2 0)(1 1)(1 1)(1 1)(0 1)(0 2)(1 2)(0 2)(0 2)(0 2)(1 1)(3 0)(2 0)(3 1)(4 0)(5 0)(3 0)(3 0)(3 0)(4 0)(3 0)(0 0)(3 0)(3 1)(3 0)(1 1)(3 1)(0 1)(0 0)(0 0)(3 0)(0 0)(0 0)(4 0)(0 1)(0 0)(0 0)(0 0)(0 0)(1 1)(1 0)(0 0)(1 1)(0 0)(1 1)(0 0)(0 0)(1 1)(0 3)(0 0)(1 1)(1 1)(1 2)(0 1)(0 0)(1 1)(1 1)(0 1)(0 2)(0 2)(2 1)(3 1)(2 0)(0 0)(0 1)(4 1)(3 1)(1 0)(2 1)(1 0)(1 1)(1 0)(3 1)(1 0)(1 1)(1 1)(1 0)(1 1)(1 1)(1 1)(1 1)(1 0)(2 1)(1 0)(1 0)(1 0)(1 0)(2 0)(0 0)(0 0)(3 1)(0 0)(1 1)(0 0)(3 1)(0 0)(0 1)(0 0)(0 0)(0 0)(0 0)(0 2)(1 2)(1 1)(1 1)(1 1)(4 2)(3 1)(3 1)(2 1)(2 1)(1 1)(4 1)(3 1)(2 1)(5 1)(4 1)(4 1)(5 1)(3 1)(1 1)(2 1)(3 1)(5 1)(1 1)(5 1)(5 1)(3 1)(2 1)(3 1)(2 1)(3 1)(3 1)(3 1)(3 1)(3 1)(5 1)(5 1)(3 1)(3 1)(3 1)(1 1)(3 1)(4 1)(3 1)(5 1)(5 1)(5 1)(4 1)(4 1)(3 1)(5 1)(4 1)(1 1)(3 1)(5 1)(5 1)(5 1)(3 1)(1 1)(3 1)(4 1)(5 1) ) )
	Gurtu_ED10-SC4_beatdur (bpmtobeatdur 158))
	(setf Event_density_clusters_centroids '(3.7086 6.2189 7.9885 9.8823 11.9408 14.5115 )) ;:Centroid (list  1635.1235 2664.2546 3775.032 5136.5772 ) ))
(setf Gurtu_ED10-SC4_tune (make-instance (quote realtimetune) :grid Gurtu_ED10-SC4_grid :chapters (quote (1)) :beatduration Gurtu_ED10-SC4_beatdur :tunename "Gurtu_ED10-SC4" :NbBeatsPerMeasure 4 :Datafromanalysis Event_density_clusters_centroids))
(setf (gethash (quote "Gurtu_ED10-SC4") *available-grids*) Gurtu_ED10-SC4_tune)