# pl2ml

[Source](../../static/scripts/pl2ml.lsp)

```lsp title="pl2ml.lsp"
(defun C:P2L (/ ss n pl i); = Polyline(s) {to} Leader(s)
  (if (setq ss (ssget "_:L" '((0 . "*POLYLINE"))))
    (repeat (setq n (sslength ss))
      (setq
        pl (ssname ss (setq n (1- n)))
        i -1
      ); setq
      (command "_.leader")
      (repeat (+ (fix (vlax-curve-getEndParam pl)) (if (vlax-curve-isClosed pl) 0 1))
        (command (vlax-curve-getPointAtParam pl (setq i (1+ i))))
      ); repeat
      (command
        "" "" "_none"
        "_.matchprop" pl (entlast) ""
      ); command
      (entdel pl)
    ); repeat
  ); if
  (princ)
); defun
(vl-load-com)
```