# Feature Line Quick Keys

[Source](/scripts/FeatureLineQuickKeys.lsp)

```lsp title="FeatureLineQuickKeys.lsp"
;;; Feature Line Quick Keys
(defun c:fd () (command "_AeccDrawFeatureLine")(princ))
(defun c:fbl () (command "_AeccFeatureAddAsBreakline")(princ))
(defun c:fab () (command "_AeccFeatureAddAsBreakline")(princ));Add to Surface as Breaklines(defun c:fco () (command "_AeccCreateFeatureLines")(princ));Create Feature Lines from Objects(defun c:fc () (command "_AeccCreateFeatureLines")(princ));Create Feature Lines from Objects;;; Elevations
(defun c:fge () (command "_AeccGradingElevEditor")(princ))
(defun c:fei () (command "_AeccInsertFeatureElevPoint")(princ))
(defun c:fed () (command "_AeccDeleteFeatureElevPoint")(princ))
(defun c:fhp () (command "_AeccInsertFeatureHighLowPoint")(princ))
(defun c:frl () (command "_AeccRaiseLowerFeatures")(princ))
(defun c:fq () (command "_AeccQuickEditFeatureElevs")(princ))(defun c:q () (command "_AeccQuickEditFeatureElevs")(princ))(defun c:fe () (command "_AeccEditFeatureElevs")(princ))
(defun c:fg () (command "_AeccSetFeatureGrade")(princ))
(defun c:fr () (command "_AeccRaiselowerFeaturesByRef")(princ))
(defun c:fv () (command "_AeccSetFeatureRefElev")(princ));"Vertex" elevation
(defun c:fa () (command "_AeccAdjacentFeatureElevsByRef")(princ))
(defun c:fx () (command "_AeccFeatureGradeExtensionByRef")(princ))
(defun c:fes () (command "_AeccFeatureElevsFromSurf")(princ))
;;; Geometry
(defun c:fpi () (command "_AeccInsertFeaturePI")(princ))(defun c:fi () (command "_AeccInsertFeaturePI")(princ))(defun c:fpd () (command "_AeccDeleteFeaturePI")(princ))(defun c:fdd () (command "_AeccDeleteFeaturePI")(princ))(defun c:fb () (command "_AeccBreakFeatures")(princ))
(defun c:fj () (command "_AeccJoinFeatures")(princ))
(defun c:ft () (command "_AeccTrimFeatures")(princ))
(defun c:fo () (command "_AeccOffsetFeature")(princ))
(defun c:fw () (command "_AeccWeedFeatures")(princ))
;;; End Feature Line Quick Keys
```
