# Pline Totals

[Source](/scripts/PLINE_TOTALS.lsp)

```lsp title="PLINE TOTALS.lsp"
(defun C:TOT ( / CurObj CurSet FltLst TmpLgt TotLgt)
 (if (< (atof (getvar "ACADVER")) 15.0)
  (alert " VxJoinLines requires AutoCAD 2000(i) or higher. ")
  (progn
   (vl-load-com)
   (setq FltLst '((0 . "3DPOLY,ARC,CIRCLE,ELLIPSE,LINE,LWPOLYLINE,POLYLINE,SPLINE")
                  (-4 . "<NOT")
                   (-4 . "<OR")
                    (-4 . "&=") (70 . 16)
                    (-4 . "&=") (70 . 64)
                   (-4 . "OR>")
                  (-4 . "NOT>")
                 )
         CurSet (cond ((ssget "I" FltLst)) ((ssget FltLst)))
         TotLgt 0
   )
   (if CurSet
    (progn
     (while (setq CurEnt (ssname CurSet 0))
      (setq CurObj (vlax-ename->vla-object CurEnt)
            TmpLgt (vlax-curve-getDistAtParam CurObj
                    (vlax-curve-getEndParam CurObj)
                   )
            TotLgt (+ TotLgt TmpLgt)
            CurSet (ssdel CurEnt CurSet)
      )
     )
     (alert (strcat "Total length of selected object(s) " (rtos TotLgt) "."))
    )
   )
  )
 )
 (princ)
)
```
