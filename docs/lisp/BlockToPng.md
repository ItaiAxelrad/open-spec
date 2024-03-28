# Blocks to PNG

[Source](/scripts/BlocksToPng.lsp)

```
(defun c:BlocksToPng ( / s i e n l f x)

  (or *BlocksToPng-folder* (setq *BlocksToPng-folder* (getvar 'dwgprefix)))

  (if (and (setq s (ssget "_X" (list '(0 . "INSERT") (cons 8 (getvar 'clayer)) (cons 410 (getvar 'ctab)))))
	   (setq *BlocksToPng-folder* (acet-ui-pickdir "Specify output folder" *BlocksToPng-folder*))
	   )
    (repeat (setq i (sslength s))
      (setq e (ssname s (setq i (1- i)))
	    n (cdr (assoc 2 (entget e))))
      (if (and (not (vl-position n l))
	       (or (snvalid n 0) (prompt (strcat "\n'" n '" not valid filename. Ignored."))))
	(progn
	  (setq l (cons n l))
	  (setq f (strcat *BlocksToPng-folder* "\\" n))
	  (setq x (findfile f))
	  (command "_.zoom" "_o" e "")
	  (command "_.pngout" f)
	  (if x (command "_y"))
	  (command e "")))))
  (princ)
  )
```
