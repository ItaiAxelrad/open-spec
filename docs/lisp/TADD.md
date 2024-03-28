# TADD

[Source](/scripts/TADD.lsp)

```lsp title="TADD.lsp"
;|                                                    ;;
       TotalADD Total Addition v. 1.0                 ;;
       By: Andrea Andreetti �     2009-10-20          ;;
                                                      |;
;;

(princ
  "\nTotalADDition v.1.0 activated!   -run \"TADD\" to start or \"TADD-r\" to end."
)

(defun c:tadd (/                     itemarea              itemperimeter         itemlinelength
               itemarclength         itemsplinelength      itemregionperimeter   itemcircumference
               itemsplineperimeter   itemplineperimeter    itemplinelength       itemtracelength
               itemarclength         itemellipselength a b c d p1 p2 itemlength tarea tperim tlength
              )
  (vl-load-com)
  (defun *oo_object_modification* (objreactor objectsmodified)
    (setq selected_objects (vla-get-pickfirstselectionset
                             (vla-get-activedocument (vlax-get-acad-object))
                           )
    )
    (setq itemarea 0
          itemperimeter 0
          itemlinelength 0
          itemarclength 0
          itemsplinelength 0
          itemregionperimeter 0
          itemcircumference 0
          itemsplineperimeter 0
          itemplineperimeter 0
          itemplinelength 0
          itemtracelength 0
          itemarclength 0
          itemellipselength 0
    )
    ;AREA
    (vlax-for n selected_objects
      (if (vlax-property-available-p n 'area)
        (if (eq (vla-get-objectname n) "AcDbRegion")
          (setq itemarea (+ itemarea (vla-get-area n)))
          (if (vlax-curve-isclosed n)
            (setq itemarea (+ itemarea (vla-get-area n)))
          )
        )
      )
      ;;CIRCLE
      (if (vlax-property-available-p n 'circumference)
        (setq itemcircumference (+ itemcircumference (vla-get-circumference n)))
      )
      ;;SPLINE
      (if (eq (vla-get-objectname n) "AcDbSpline")
        (if (vlax-curve-isclosed n)
          (setq itemsplineperimeter (+ itemsplineperimeter
                                       (vlax-curve-getdistatparam n (vlax-curve-getendparam n))
                                    )
          )
          (setq itemsplinelength (+ itemsplinelength
                                    (vlax-curve-getdistatparam n (vlax-curve-getendparam n))
                                 )
          )
        )
      )
      ;;REGION
      (if (eq (vla-get-objectname n) "AcDbRegion")
        (setq itemregionperimeter (+ itemregionperimeter (vla-get-perimeter n)))
      )
      ;;PLINE
      (if (or (eq (vla-get-objectname n) "AcDb2dPolyline")
              (eq (vla-get-objectname n) "AcDbPolyline")
          )
        (if (vlax-curve-isclosed n)
          (setq itemplineperimeter (+ itemplineperimeter
                                      (vlax-curve-getdistatparam n (vlax-curve-getendparam n))
                                   )
          )
          (setq itemplinelength (+ itemplinelength
                                   (vlax-curve-getdistatparam n (vlax-curve-getendparam n))
                                )
          )
        )
      )
      ;;LINE
      (if (eq (vla-get-objectname n) "AcDbLine")
        (setq itemlinelength (+ itemlinelength (vla-get-length n)))
      )
      ;;ARC
      (if (eq (vla-get-objectname n) "AcDbArc")
        (setq itemarclength (+ itemarclength (vla-get-arclength n)))
      )
      (if (eq (vla-get-objectname n) "AcDbEllipse")
        (setq itemellipselength (+ itemellipselength
                                   (vlax-curve-getdistatparam n (vlax-curve-getendparam n))
                                )
        )
      )
      ;;TRACE
      (if (eq (vla-get-objectname n) "AcDbTrace")
        (progn (setq plist (vlax-safearray->list
                             (vlax-variant-value (vla-get-coordinates n))
                           )
               )
               (setq a (list (nth 0 plist) (nth 1 plist) (nth 2 plist)))
               (setq b (list (nth 3 plist) (nth 4 plist) (nth 5 plist)))
               (setq c (list (nth 6 plist) (nth 7 plist) (nth 8 plist)))
               (setq d (list (nth 9 plist) (nth 10 plist) (nth 11 plist)))
               (setq p1 (polar a (angle a b) (/ (distance a b) 2.0)))
               (setq p2 (polar c (angle c d) (/ (distance c d) 2.0)))
               (setq itemtracelength (+ itemtracelength (distance p1 p2)))
        )
      )
    )
    ;;_end vlax-for
    (setq itemperimeter (+ itemcircumference
                           itemsplineperimeter
                           itemregionperimeter
                           itemplineperimeter
                        )
    )
    (setq itemlength (+ itemplinelength itemsplinelength itemlinelength itemtracelength itemarclength itemellipselength)
    )
    (setq tarea (rtos itemarea 2 8))
    (setq tperim (rtos itemperimeter 2 8))
    (setq tlength (rtos itemlength 2 8))
    (acet-ui-status (strcat "Toatl Area:       " tarea "\n" "Total Perimeter:          " tperim "\n"
                            "Total Length:            " tlength)
    )
  )
  ;;OBJECT SELECTION
  (if oo_object_modification
    (progn (vlr-remove oo_object_modification)
           (setq oo_object_modification nil)
    )
  )
  (setq oo_object_modification
         (vlr-miscellaneous-reactor
           nil
           '((:vlr-pickfirstmodified . *oo_object_modification*))
         )
  )
  ;;Command ended
  (if oo_object_modification_action
    (progn (vlr-remove oo_object_modification_action)
           (setq oo_object_modification_action nil)
    )
  )
  (setq oo_object_modification_action
         (vlr-command-reactor nil
                              '((:vlr-commandended . *oo_object_modification*)
 ;(:vlr-commandcancelled . *oo_object_modification_CANCEL*))
                               )
         )
  )
)


(defun c:TADD-r ()

  (if oo_object_modification_action
    (progn (vlr-remove oo_object_modification_action)
           (setq oo_object_modification_action nil)
    )
  )
  (if oo_object_modification
    (progn (vlr-remove oo_object_modification)
           (setq oo_object_modification nil)
    )
  )
)
```
