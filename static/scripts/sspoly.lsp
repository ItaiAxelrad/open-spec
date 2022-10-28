(vl-load-com)
(defun sspoly ( / en ent pnts )
  (setq en (car (entsel)) ent (entget en))
  (if (/= (cdr (assoc 0 ent)) "LWPOLYLINE")
    (princ "\nNot an LwPolyline.")
    (progn
      (setq pnts (mapcar 'cdr (vl-remove-if-not (function (lambda ( p / ) (= (car p) 10))) ent)))
      (ssget "WP" pnts) ; Return the pickset
    )
))