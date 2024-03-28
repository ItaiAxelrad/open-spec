# acaddoc

[Source](/scripts/acaddoc.lsp)

copyright 2013, Timothy Corey

Delta Engineering Systems, Redding CA
530.221.2994
support@deltaengineeringsystems.com

Permission is hereby granted to install, use and modify the code without charge,
but you may not sell this code or use it as part of a commercial software.
Timothy Corey and Delta Engineering Systems make no promise of usability
or promise that the software is free of defects. You are responsible for
testing the program to see if it is suitable for your needs.

We have tested on AutoCAD Civil 3d 2014 and 2013

```lsp title="acaddoc.lsp"
;--------------------------------------
(defun C:ALERTME ()
   (vl-load-com)
   (setq VTFRXN (vlr-editor-reactor nil '((:VLR-sysVarChanged . VTF))))
)

(defun VTF (CALL CALLBACK)
   (if (and
	 (= (strcase (car CALLBACK)) (setq str "SAVETIME"))
	 (not (eq (getvar str) 30))
       )
       (progn
	 ;(alert (strcat str " has been changed back to 30"))
	 (setvar "SAVETIME" 30)
       )
   )
)
(c:alertme)

(defun c:pi (/		     pts	     ptsctr
	     ptslen	     layerlist	     pt
	     lyr	     vpt	     ptstyl
	     mkr	     lbl	     lblstyl
	     vptlblst	     lblprop	     lblstyllayer
	     lblvalue	     Acadapp	     C3dapp
	     C3ddoc	     C3dactdoc	     C3dsettings
	     C3dptcmdsettings		     C3dcreateptsettings
	     C3dptstylesettings		     C3dptdefaultstyle
	     c3dPtDefaultStyleName	     c3dPtDefaultLabelStyle
	     c3dPtDefaultLabelStyleName	     PtStyls
	     Cnt	     Ctr	     Itm
	     Ptstyname	     Mark	     Marklyr
	     Pstylabl	     Pstylabllyr     PtLablStyls
	     PtLablStyName   Lablprop	     Labllayer
	     labllyrname
	    )


  (vl-load-com)
  (getdoc)
  (layerstate-save "PointIsoLayerState" 1 nil)


  (setq firstobj (car (entsel "\nSelect object on layer to set current: "))
	newclyr (cdr (assoc 8 (entget firstobj)))
	)
  (setq pts (ssadd))
  (ssadd firstobj pts)


  (prompt "Select objects on layers to isolate: ")
  (setq	ptsget	  (ssget)
	ptsctr	  0
	;ptslen	  (if (not (= ptsget nil))(sslength ptsget))
	layerlist (strcat (cdr (assoc 8 (entget (ssname pts ptsctr)))) ",")
  )

  (if (not (= ptsget nil))
    (progn
      (ssadd firstobj ptsget)
      (setq pts ptsget)
      )
    )
  (setq ptslen (sslength pts))
  (while (< ptsctr ptslen)
    (setq pt (ssname pts ptsctr))
    (if	(= (cdr (assoc 0 (entget pt))) "AECC_COGO_POINT")
      (progn

	(setq lyr	(cdr (assoc 8 (entget pt)))
	      layerlist	(strcat layerlist lyr ",")
	)






	(setq vpt (vlax-ename->vla-object pt))

	(setq ptstyl (vlax-get-property vpt 'Style))
	(if (= ptstyl nil)
	  (progn
	    (DefaultPointStyle)
	    (GetDefPtStyLyr)
	    (setq
	      layerlist	(strcat layerlist MarkLyr "," PstyLablLyr ",")
	    )
	  )				;end progn

	  (progn			;if ptstyl is not nil
	    (setq
	      mkr (vlax-get-property ptstyl 'MarkerDisplayStylePlan)
	    )
	    (setq lbl (vlax-get-property ptstyl 'LabelDisplayStylePlan))
	    (setq layerlist (strcat layerlist
				    (vlax-get-property mkr 'Layer)
				    ","
			    )
	    )
	    (setq layerlist (strcat layerlist
				    (vlax-get-property lbl 'Layer)
				    ","
			    )
	    )
	  )				;end progn
	)				;end if



	(setq lblstyl (vlax-get-property vpt 'LabelStyle))
	(if (= lblstyl nil)
	  (progn
	    (defaultLabelStyle)
	    (GetDefPtLablStyLayer)
	    (setq layerlist (strcat layerlist LablLyrName ","))
	  )				;end progn
	  (progn
	    (setq vptlblst (vlax-get-property vpt 'LabelStyle))
	    (setq lblprop (vlax-get-property vptlblst 'LabelProperties))
	    (setq lblstyllayer (vlax-get-property lblprop 'Layer))
	    (setq lblvalue (vlax-get-property lblstyllayer 'Value))
	    (setq layerlist (strcat layerlist lblvalue ","))

	  )				;end progn
	)				;end if
      )					;end progn
      (progn
	(setq lyr	(cdr (assoc 8 (entget pt)))
	      layerlist	(strcat layerlist lyr ",")
	)
      )					;end progn
    )					;end if


    (setq ptsctr (1+ ptsctr))

  )					;end while


  (setq la (substr layerlist 1 (- (strlen layerlist) 1)))
  (vl-cmdf "layer" "off" "*" "y" "on" la "s" newclyr "")
  (vl-cmdf "Regen")
  (prompt "\nRegenerated")
  (princ)

)					;end defun



(defun getdoc ()


  (setq prod (vlax-product-key))
  (setq	aecappno (strcat "AeccXUiLand.AeccApplication"
			 (cond ((vl-string-search "\\R17.0\\" prod)
				".4.0"
			       )
			       ;;2007

			       ((vl-string-search "\\R17.1\\" prod)
				".5.0"
			       )
			       ;;2008

			       ((vl-string-search "\\R17.2\\" prod)
				".6.0"
			       )
			       ;;2009
			       ((vl-string-search "\\R18.0\\" prod)
				".7.0"
			       )
			       ;;2010

			       ((vl-string-search "\\R18.1\\" prod)
				".8.0"
			       )
			       ;;2011

			       ((vl-string-search "\\R18.2\\" prod)
				".9.0"
			       )
			       ;;2012

			       ((vl-string-search "\\R19.0\\" prod)
				".10.0"
			       )
			       ;;2013

			       ((vl-string-search "\\R19.1\\" prod)
				".10.3"
			       )
			       ;;2014

				((vl-string-search "\\R20.0\\" prod)
				".10.4"
			       )
			       ;;2015

				((vl-string-search "\\R20.1\\" prod)
				".10.5"
			       )
			       ;;2016
		       		((vl-string-search "\\R21.0\\" prod)
				".11.0"
			       )
			       ;;2017

			       (t "")
			 );end cond

  );end strcat
		 )


  (setq	acadapp	(vlax-get-acad-object)
	c3dapp	(vla-getinterfaceobject acadapp aecappno)
	C3Ddoc	(vla-get-activedocument C3Dapp)
  )

)					;end function



(defun DefaultPointStyle ()

  (setq	C3dActDoc (vlax-get-property c3dapp 'Activedocument)
	c3dSettings
	 (vlax-get-property c3dactdoc 'Settings)
	c3dPtCmdSettings
	 (vlax-get-property
	   c3dSettings
	   'PointCommandsSettings
	 )
	c3dCreatePtSettings
	 (vlax-get-property
	   c3dPtCmdSettings
	   'CreatePointsSettings
	 )
	c3dPtStyleSettings
	 (vlax-get-property
	   c3dCreatePtSettings
	   'StyleSettings
	 )
	c3dPtDefaultStyle
	 (vlax-get-property c3dPtStyleSettings 'Style)
	c3dPtDefaultStyleName
	 (vlax-get-property c3dPtDefaultStyle 'Value)
  )
)					;end function


(defun defaultLabelStyle ()

  (setq	C3dActDoc (vlax-get-property c3dapp 'Activedocument)
	c3dSettings
	 (vlax-get-property c3dactdoc 'Settings)
	c3dPtCmdSettings
	 (vlax-get-property
	   c3dSettings
	   'PointCommandsSettings
	 )
	c3dCreatePtSettings
	 (vlax-get-property
	   c3dPtCmdSettings
	   'CreatePointsSettings
	 )
	c3dPtStyleSettings
	 (vlax-get-property
	   c3dCreatePtSettings
	   'StyleSettings
	 )
	c3dPtDefaultLabelStyle
	 (vlax-get-property
	   c3dPtStyleSettings
	   'LabelStyle
	 )
	c3dPtDefaultLabelStyleName
	 (vlax-get-property
	   c3dPtDefaultLabelStyle
	   'Value
	 )
  )
)					;end function


(defun c:dump ()
  (setq	vbl (vlax-ename->vla-object
	      (getstring "\nEnter VLAX object to dump: ")
	    )
  )
  (vlax-dump-object vbl)
  (princ)
)




(defun GetDefPtStyLyr ()
  (setq	c3dactdoc (vlax-get-property c3dapp 'Activedocument)
	PtStyls	  (vlax-get-property c3dactdoc 'PointStyles)
	cnt	  (vlax-get-property PtStyls 'count)
	ctr	  1
  )

  (while (<= ctr cnt)
    (setq itm (vlax-get-property PtStyls 'item ctr))
    (setq PtStyName (vlax-get-property itm 'name))

    (if	(= PtStyName c3dPtDefaultStyleName)
      (progn
	(setq Mark	  (vlax-get-property itm 'MarkerDisplayStylePlan)
	      MarkLyr	  (vlax-get-property Mark 'Layer)
	      PstyLabl	  (vlax-get-property itm 'LabelDisplayStylePlan)
	      PstyLablLyr (vlax-get-property PstyLabl 'Layer)
	)
	(setq ctr (1+ cnt))		;found what it was looking for so it sets the counter beyond the While parameters
      )					;end progn
    )					;end if
    (setq ctr (1+ ctr))
  )					;end while

)					;end defun




(defun GetDefPtLablStyLayer ()
  (setq	c3dactdoc   (vlax-get-property c3dapp 'Activedocument)
	PtLablStyls (vlax-get-property c3dactdoc 'PointLabelStyles)
	cnt	    (vlax-get-property PtLablStyls 'count)
	ctr	    1
  )

  (while (<= ctr cnt)
    (setq itm (vlax-get-property PtLablStyls 'item ctr))
    (setq PtLablStyName (vlax-get-property itm 'name))

    (if	(= PtLablStyName c3dPtDefaultLabelStyleName)
      (progn
	(setq LablProp	  (vlax-get-property itm 'LabelProperties)
	      LablLyr	  (vlax-get-property LablProp 'Layer)
	      LablLyrName (vlax-get-property LablLyr 'Value)
	)
	(setq ctr (1+ cnt))		;found what it was looking for so it sets the counter beyond the While parameters
      )					;end progn
    )					;end if
    (setq ctr (1+ ctr))
  )					;end while

)					;end defun

(defun c:pui ()
  (layerstate-restore "PointIsoLayerState")
  (layerstate-delete "PointIsoLayerState")
  (command "regen")
  (princ)
)
```
