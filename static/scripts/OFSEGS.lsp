;; OFSEGS -Gilles Chanteau- 2008/03/26
;; Offsets the selected segments of lwpolyline
;; Joined segments are offseted in a single lwpolyline
;; Keeps arcs and widthes
;; Works whatever the current UCS and the pline OCS and elevation
(defun c:ofsegs (/ ofdist ent pline normal elevat params
  points side closest par bulge p1
  p2 arc_data
)
(vl-load-com)
(or *acdoc*
(setq *acdoc* (vla-get-ActiveDocument (vlax-get-acad-object)))
)
(initget 6 "Through")
(if (setq
ofdist (getdist
(strcat "\nSpecify offset distance or [Through] <"
(if (< (getvar "OFFSETDIST") 0)
"Through"
(rtos (getvar "OFFSETDIST"))
)
">: "
)
)
)
(if (= ofdist "Through")
(setvar "OFFSETDIST" -1)
(setvar "OFFSETDIST" ofdist)
)
(setq ofdist (getvar "OFFSETDIST"))
)
(if (and (setq ent (entsel "\nSelect a segment to offset: "))
(setq pline (vlax-ename->vla-object (car ent)))
(= (vla-get-ObjectName pline) "AcDbPolyline")
(setq normal (vlax-get pline 'Normal))
(setq elevat (vla-get-Elevation pline))
)
(progn
(setq params (cons (fix (vlax-curve-getParamAtPoint
pline
(trans (osnap (cadr ent) "_nea") 1 0)
)
)
params
)
)
(HighlightSegment pline (car params))
(while
(setq ent (entsel "\nSelect next segment or <exit>: "))
(if (equal (vlax-ename->vla-object (car ent)) pline)
(progn
(setq par (fix (vlax-curve-getParamAtPoint
pline
(trans (osnap (cadr ent) "_nea") 1 0)
)
)
params (if (member par params)
(vl-remove par params)
(cons par params)
)
)
(redraw)
(foreach p params (HighlightSegment pline p))
)
)
)
(if (setq side (getpoint
(if (minusp (getvar "OFFSETDIST"))
"\nSpecify through point: "
"\nSpecify point on side to offset: "
)
)
)
(progn
(redraw)
(vla-StartUndoMark *acdoc*)
(setq side (ilp
(trans side 1 0)
((lambda (p)
(trans (list (car p) (cadr p) (1+ (caddr p))) 2 0)
)
(trans side 1 2)
)
(trans (list 0 0 elevat) normal 0)
normal
)
closest (vlax-curve-getClosestPointTo pline side T)
par (vlax-curve-getParamAtPoint pline closest)
)
(if (minusp (getvar "OFFSETDIST"))
(setq ofdist (distance side closest))
)
(cond
((equal closest (vlax-curve-getStartPoint pline) 1e-9)
(setq side (trans side 0 normal))
)
((equal closest (vlax-curve-getEndPoint pline) 1e-9)
(setq par (- par 1)
side (trans side 0 normal)
)
)
((= (fix par) par)
(setq side
(polar
(trans closest 0 normal)
((if
(clockwise-p
(trans
(vlax-curve-getPointAtParam pline (- par 0.1))
0
normal
)
(trans closest 0 normal)
(trans
(vlax-curve-getPointAtParam pline (+ par 0.1))
0
normal
)
)
+
-
)
(angle '(0 0 0)
(trans (vlax-curve-getFirstDeriv pline par)
0
normal
T
)
)
(/ pi 2)
)
ofdist
)
)
)
(T
(setq par (fix par)
side (trans side 0 normal)
)
)
)
(setq bulge (vla-getBulge pline (fix par))
p1 (trans (vlax-curve-getPointAtParam pline (fix par))
0
normal
)
p2 (trans (vlax-curve-getPointAtParam pline (1+ (fix par)))
0
normal
)
)
(if (zerop bulge)
(if (clockwise-p side p2 p1)
(setq ofdist (- ofdist))
)
(progn
(setq arc_data (PolyArc-data bulge p1 p2))
(if (minusp bulge)
(if (< (cadr arc_data)
(distance (car arc_data) side)
)
(setq ofdist (- ofdist))
)
(if (< (distance (car arc_data) side)
(cadr arc_data)
)
(setq ofdist (- ofdist))
)
)
)
)
(mapcar
(function
(lambda (p)
(vl-catch-all-apply 'vla-Offset (list p ofdist))
(vla-delete p)
)
)
(Copysegments pline params)
)
(vla-EndUndoMark *acdoc*)
)
)
)
(princ "\nUnvalid entity.")
)
(princ)
)
;; CopySegments
;; Duplicates polyline segments at the same location
;; Consecutive selected segments are joined
;;
;; Arguments
;; pline : the source polyline (vla-object)
;; params ; the index list of segment to be copied
;;
;; Return
;; the list of created polylines
(defun CopySegments (pline params / nor space tmp copy ret)
(vl-load-com)
(or *acdoc*
(setq *acdoc* (vla-get-ActiveDocument (vlax-get-acad-object)))
)
(setq params (vl-sort params '<)
nor (vlax-get pline 'Normal)
space (vla-ObjectIDToObject *acdoc* (vla-get-OwnerID pline))
)
(while params
(setq tmp (cons (car params) tmp)
params (cdr params)
)
(if (and (zerop (car tmp))
(= (- (vlax-curve-getEndParam pline) 1) (last params))
(equal (vlax-curve-getStartPoint pline)
(vlax-curve-getEndPoint pline)
1e-9
)
)
(progn
(setq params (reverse params)
tmp (cons (car params) tmp)
params (cdr params)
)
(while (= (car params) (1- (car tmp)))
(setq tmp (cons (car params) tmp)
params (cdr params)
)
)
(setq tmp (reverse tmp)
params (reverse params)
)
)
)
(while (= (car params) (1+ (car tmp)))
(setq tmp (cons (car params) tmp)
params (cdr params)
)
)
(setq tmp (reverse (cons (1+ (car tmp)) tmp)))
(setq
pts
(vl-remove nil
(mapcar
(function
(lambda (pa / pt)
(if (setq pt (vlax-curve-getPointAtParam pline pa))
((lambda (p)
(list (car p) (cadr p))
)
(trans pt 0 nor)
)
)
)
)
tmp
)
)
)
(setq copy
(vlax-invoke
space
'addLightWeightPolyline
(apply 'append pts)
)
)
(foreach p (cdr (reverse tmp))
(vla-setBulge
copy
(vl-position p tmp)
(vla-getBulge pline p)
)
(vla-getWidth pline p 'swid 'ewid)
(vla-setWidth copy (vl-position p tmp) swid ewid)
)
(foreach prop '(Elevation Layer Linetype
LinetypeGeneration LinetypeScale
Lineweight Normal Thickness
TrueColor
)
(if (vlax-property-available-p pline prop)
(vlax-put copy prop (vlax-get pline prop))
)
)
(setq tmp nil
ret (cons copy ret)
)
)
)
;;======================================================;;
;; HighlightSegment
;; Highlight a polyline segment
;;
;; Arguments
;; pl : the polyline (vla-object)
;; par : the segment index
(defun HighlightSegment (pl par / p1 p2 n lst)
(and
(setq p1 (vlax-curve-getPointAtParam pl par))
(setq p1 (trans p1 0 1))
(setq p2 (vlax-curve-getPointAtParam pl (+ par 1)))
(setq p2 (trans p2 0 1))
(if (zerop (vla-getBulge pl par))
(grvecs (list -255 p1 p2))
(progn
(setq n 0)
(repeat 100
(setq lst (cons (trans (vlax-curve-getPointAtParam pl (+ n par)) 0 1)
lst
)
n (+ n 0.01)
)
)
(grvecs
(cons -255 (apply 'append (mapcar 'list lst (cdr lst))))
)
)
)
)
)
;;=====================================================;;
;;; Clockwise-p
;;; Returns T if p1 p2 and p3 are clockwise
(defun clockwise-p (p1 p2 p3)
(< (sin (- (angle p1 p3) (angle p1 p2))) -1e-14)
)
;;========================================================;;
;;; Polyarc-data
;;; Returns a list of the center, radius and angle of a 'polyarc'.
(defun polyarc-data (bu p1 p2 / ang rad cen area cg)
(setq ang (* 2 (atan bu))
rad (/ (distance p1 p2)
(* 2 (sin ang))
)
cen (polar p1
(+ (angle p1 p2) (- (/ pi 2) ang))
rad
)
)
(list cen (abs rad) ang)
)
;;====================================================;;
;;; VXV Returns the dot product of two vectors
(defun vxv (v1 v2)
(apply '+ (mapcar '* v1 v2))
)
;;===================================================;;
;;; ILP
;;; Returns the intersection point between a line (extended) and a plane
;;;
;;; Arguments
;;; p1 and p2 : two points defining the line
;;; org : a point on the plane
;;; nor : the plane normal
(defun ilp (p1 p2 org nor / scl)
(setq scl (/ (vxv nor (mapcar '- p1 org))
(vxv nor (mapcar '- p2 p1))
)
)
(mapcar (function (lambda (x1 x2) (+ (* scl (- x1 x2)) x1)))
p1
p2
)
)