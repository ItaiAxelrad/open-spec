# TLENGTH

[Source](../../static/scripts/TLENGTH.lsp)

```lsp title="TLENGTH.lsp"

;;
;; J'ai modifi� le Lisp pour qu'il prenne en compte les R�gions et les MPolygons.
;; par Patrick_35 - 05/2009 - Forum : ACAD_2007
;; Commande au clavier :  LONGT (French Version)  --->  TLENGTH (US Version) 
;;
;; Micro-Micro Modif pour avoir le resultat dans l ecran texte (ligne de commande) 
;;
 
(defun c:TLENGTH(/ di ent n pt1 pt2 sel) 

  (vl-load-com)

  (if (ssget '((0 . "LINE,POLYLINE,LWPOLYLINE,ARC,CIRCLE,ELLIPSE,SPLINE,MLINE,REGION,MPOLYGON")))
    (progn
      (setq di 0)
      (vlax-for ent (setq sel (vla-get-activeselectionset (vla-get-activedocument (vlax-get-acad-object))))
	(cond
	  ((member (vla-get-objectname ent) '("AcDbLine" "AcDb3dPolyline" "AcDbPolyline"))
	    (setq di (+ di (vla-get-length ent)))
	  )
	  ((eq (vla-get-objectname ent) "AcDbArc")
	    (setq di (+ di (vla-get-arclength ent)))
	  )
	  ((eq (vla-get-objectname ent) "AcDbCircle")
	    (setq di (+ di (vla-get-circumference ent)))
	  )
	  ((member (vla-get-objectname ent) '("AcDbSpline" "AcDbEllipse"))
	    (setq di (+ di (vlax-curve-getdistatparam ent (vlax-curve-getendparam ent))))
	  )
	  ((eq (vla-get-objectname ent) "AcDbMline")
	    (setq n 0 pt2 nil)
	    (while (nth n (setq lst (vlax-get ent 'Coordinates)))
	      (setq pt1 (list (nth n lst)(nth (1+ n) lst)(nth (+ n 2) lst)))
	      (and pt2
		(setq di (+ di (distance pt1 pt2)))
	      )
	      (setq pt2 pt1
		    n (+ n 3)
	      )
	    )
	  )
	  ((member (vla-get-objectname ent) '("AcDbMPolygon" "AcDbRegion"))
	    (setq di (+ di (vla-get-perimeter ent)))
	  )
	)
      )
      (if (eq (vla-get-count sel) 1)


;;        (alert (strcat "La Longueur de l'objet est de : " (rtos di)))
;;        (alert (strcat "La Longueur totale des " (itoa (vla-get-count sel)) " objets est de : " (rtos di)))

;;        (princ (strcat "\nLa Longueur de l'objet est de : " (rtos di)))
;;        (princ (strcat "\nLa Longueur totale des " (itoa (vla-get-count sel)) " objets est de : " (rtos di)))

;;;;;; US Version ;;;;;; 
          (princ (strcat "\nThe Total Length of the Object is : " (rtos di)))
          (princ (strcat "\nThe Total Length of the " (itoa (vla-get-count sel)) " Objects are : " (rtos di)))

      )
      (vla-delete sel)
    )
  )
  (princ)
)
 

```