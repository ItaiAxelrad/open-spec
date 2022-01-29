---
title: 'Viewports'
eleventyNavigation:
date: 2021-04-10
---
A viewport is used to “see” the entities in model space from the paper space layout. The template drawing has one viewport already created on the vports layer.

#### Use a viewport

1. Activate it by double-clicking inside it
2. Type `Z` (ZOOM)
3. Type `E` (EXTENTS)

This will frame all of the entities in model space inside the viewport. You can now zoom to the part of the drawing you wish to display in the sheet.

#### Create a new viewport

1. Type `VPORTS`
2. A dialogue box will appear. Select the number of viewports you wish to create.
3. Click “OK”
4. Place the viewports as appropriate in paper space.

Follow steps above to set the new view ports’ approximate scale.

#### Rotate a view

1. Select the “Express Tools” tab from the main ribbon.
2. In the Layout tab, select “Align Space”
3. You will be prompted in the command line to select a reference line in model space. Choose the line that you will use to rotate the view.
4. You will then be prompted to select a reference line in Paper space that the view will rotate to.
5. If you have multiple view ports you will be asked to select which viewport you wish to rotate.
6. Once you have accepted the change AutoCAD will rotate the view to the reference line you selected.
7. Once you have the display approximately set:
8. Type `PS` (PAPERSPACE)
9. Single click on the viewport.
10. Type `PR` (PROPERTIES)
11. In the Misc. section of the Properties Manager you can select the Standard Scale from the pull down menu located there. There is also the option to create a custom scale. This should be avoided. Typical scales for Civil drawings are:

- 1”=10’
- 1”=20’
- 1”=30’
- 1”=40’
- 1”=50’
- 1”=100’
- 1”=500’

There is also a line for Annotative Scale in the Misc. section. If you are using Annotative Text as described in section H.i., make sure that the annotative scale for your viewport matches that of the text you wish to display from the model space.

Once you are satisfied with the scale and position of your viewport, change the Display Locked line from “No” to “Yes”. To make any future changes to the viewport’s scale or position will require this line to be set back to “No”. Always make sure to lock your display again after editing to prevent accidental changes in the sheet’s appearance.
