---
sidebar_position: 6
title: 'Annotation'
date: 2021-04-10
---

All text in drawings should have a uniform appearance. There are appropriate text styles available in the Tool Pallets and in the Annotate header on the AutoCAD ribbon. The example drawings also offer additional guidance.

All drawing callouts and annotation should be inserted into MODEL SPACE on the appropriate layer for that drawing.

Do not label anything visible in a viewport in paper space.

## Font Families

Leroy style font is the current standard for body text. The font “MultPL-H” is used for titles, and headings.

## Styles

When creating a drawing form the Template, all text and annotation styles will be pre-loaded and available for use. To access these styles, select the “Annotate” tab in the ribbon. Each category of annotation will have a pull down with a list of available styles. Civil 3D labels are also available from this tab in the ADD LABELS feature.

Use the L100 style at a height of 0.10 times the drawing scale for all callouts, dimensioning and other notes.

## Dimensions

The size for arrows are to be set to 0.12 and for closed dots set to 0.08 at a height of 1.0 times the drawing scale and width of 0.8 for all dimensioning. This should be setup already from the template drawing.

## Annotative Scale

Annotative Scale is a method for managing the size of text, blocks, dimensions and callouts in drawings in the same set that may be at different scales. When used correctly, Annotative objects will appear the same size on printed sheets regardless of the scale of the drawing. While this can be a useful tool, it can also be very confusing. Generally speaking, you should only use Annotative Scale for drawings that have multiple viewports with different scales. For example, you may have an overall site plan at 1”:50’ and a series of detailed site plans at 1”:30’ and in both cases want text to appear at 0.1” on a printed page.

### Assign Annotative scale to Items

1. After object is created, right click and select “Properties”
2. Under Text, Select the Annotative pull down and change it to YES.
3. Under the Annotative Scale pull down, select the ellipses and from the list that appears, select all drawing scales that correspond to the viewport scales of the sheets where you wish the object to appear.
4. To position or rotate the text in model space once the annotative scales have been assigned, you must change the drawing scale by using the tab in the lower right hand corner of the screen to cycle between the different annotative scales. You can also position or rotate the object through the viewport.
5. Make sure that the Annotation Visibility icon in the lower right hand corner of the screen is toggled “ON” and the icon to automatically add annotation scales to objects is toggled “OFF”

:::note

If you have not selected the correct scale the object will not appear in the viewport.

:::

The template drawing has text, callout, and annotation styles already established with Annotative Scales enabled. These can be found on the Annotation Tab in the main ribbon. For these objects you can eliminate step 2 above.

In the case of Civil 3D label objects, Annotative Scale works differently. Refer to that section for more information.

## Color

The AutoCAD color palette uses numbers from 1-255. Each number corresponds to a color and lineweight. This works in conjunction with the .ctb print files in order to produce drawings as they should appear for distribution to reviewing agencies, clients, and contractors. See the Appendices for a sheet showing all colors and their corresponding appearances as plotted.

## Linetypes

Within the provided template, all layers have been assigned specific linetypes. All template layers have an associated linetype that will plot according to the standards. Do not alter or change the template linetypes for any reason. These linetypes are to remain as is. Per the .LIN file. All entities created in a drawing should be assigned a linetype `BYLAYER` in the entity properties menu.

![](/images/standards/image18.png)

In the event there is no template layer appropriate for an entity that needs to be included in a drawing, create a new layer as described in section G.ii and assign the desired linetype to it.

### Assign a Linetype to a Layer

1. After creating a new layer, click on its linetype
2. A dialogue box will open, showing the available, loaded linetypes in the template.
3. If the linetype you wish to use is not in this list, click LOAD
4. A new dialogue box will appear. Click FILE and browse for the following "N:\\Autodesk\\Support\\acad20XX.lin"
5. Select this file and you will see the dialogue box populate with all approved linetypes.
6. Select the linetype you wish to load. Click OK.
7. Select the linetype again and click OK to assign it to the created layer.
