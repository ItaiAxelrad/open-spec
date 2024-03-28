# Steamroller

[Source](/scripts/Steamroller.lsp)

```lsp title="Steamroller.lsp"
(defun C:STEAMROLLER ()
  (setvar "CMDECHO" 0)
  (setvar "qaflags" 1)
  (if (setq C3DOBJ (ssget "X" '((0 . "AECC_SVFIGURE*"))))
    (command "explode" C3DOBJ "" "AeccConvert3dPolys" "P" "")
  )
  (if (setq C3DOBJ (ssget "X" '((0 . "AECC_FEATURE_LINE*"))))
    (command "explode" C3DOBJ "" "AeccConvert3dPolys" "P" "")
  )
  (if (setq C3DOBJ (ssget "X" '((0 . "POLYLINE*"))))
    (command "AeccConvert3dPolys" C3DOBJ "")
  )
  (if (setq C3DOBJ (ssget "X" '((0 . "LWPOLYLINE*"))))
    (command "CHANGE" C3DOBJ "" "P" "ELEV" "0" "" "PEDIT" "M" "P" "" "L" "ON" "")
  )
  (setvar "qaflags" 0)
  (setvar "CMDECHO" 1)
)
```
