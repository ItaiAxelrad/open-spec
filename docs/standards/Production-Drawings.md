---
sidebar_position: 13
title: 'Production Drawings'
date: 2021-04-12
---

Production drawings represent the finished document as it will be displayed for the contractor or developer within the set. All drawings that are to be issued for publication should be annotated live in model space of the sheet drawing.

:::warning

DO NOT ANNOTATE IN PAPER SPACE

:::

## Naming Convention

Below are sheets commonly found in a civil construction document:

- Cover Sheet (Notes, Legends, Quantities and Details can also be saved in the file)
  - XXXX Cover.dwg
- Demolition Plan
  - XXXX Demo.dwg
- Horizontal Control Plan
  - XXXX HC Plan.dwg
- Detailed Grading Sheets
  - XXXX Grad Plan.dwg
- Erosion Control Sheets (Grading and Erosion Control, StormWater Management)
  - XXXX GESC.dwg or XXXX SWMP.dwg (based on jurisdiction)
- Plan and Profile Sheets
  - XXXX “Description” P&P.dwg
- Street Cross Sections
  - XXXX X-Sect.dwg
- Signage and Striping
  - XXXX S&S Plan.dwg
- Storm Sewer Plan and Profile
  - XXXX Storm P&P.dwg
- Sanitary Sewer Plan and Profile
  - XXXX San P&P.dwg
- Water Plan and Profile
  - XXXX Water P&P.dwg
- Pond Plans
  - XXXX Pond.dwg
- Detail Sheets (If not included in the Cover Drawing)
  - XXXX Details.dwg

:::note

A flowchart for drawing organization can be found in Section 3.b.

:::

![drawing diagram small](/images/standards/image15.png)

![drawing diagram large](/images/standards/image4.png)

Within each sheet, give each sheet tab an individual and specific name as it will help to keep them organized when setting up Sheet Set Manager.

## Creating a Production Drawing

1. Open a new drawing with the template and save it to the project Drawings folder with the project number and the type of drawing in the title. (Example: 5000-CIVIL CDs)
2. When the drawing is set up, insert the desired base drawings into model space, following the steps outlined in the External Reference section.
3. Additional drawings may be created as needed in this manner for planning documents such as FDPs or USRs, or to separate utilities such as storm, water, and sanitary.
4. Create sheet tabs for each drawings sheet (Examples: Cover, Site Plan, Grading Plan, Details, etc.). Adjust Viewports as necessary to properly frame the data to be presented on each sheet.
5. If multiple sheet drawings are being employed to create sheets, assemble them for production using Sheet Set Manager, as explained in Section 6.d.

## Insert Sheet Info Block

1. From the Drawing Setup Tool Palette, select the Sheet Info block that corresponds to the title block size you inserted.
2. Insert the Sheet Info block at 0,0,0
3. The Attributes Dialogue Box will open.
4. If you are planning to use Sheet Set Manager for your project, click OK. You will enter the Sheet Info data there.
5. If you are not using Sheet Set Manager enter the Plan Name, Sheet Number and Sheet X.

## Reference the Titleblock

1. From the Xref Manager dialogue box, click on the box in the upper left hand corner that shows a DWG icon
2. Browse for the project title block drawing previously saved. Select the drawing.
3. The “Attach External Reference” Dialogue Box will appear.
4. Toggle on “Overlay” and Toggle off “Scale: Specify Onscreen” and “Insertion Point: Specify Onscreen”.
5. The title block will appear in the correct location and at the correct size.

## Copy a Sheet

1. To create additional sheets with the same size and title block, right click on the sheet tab you just created and select “Move or Copy”.
2. Toggle on “Create a Copy” and select the placement for the new tab as prompted.
3. When the new tab appears, rename it as appropriate.

## Images & PDFs

At times it will be necessary to insert picture files into a drawing. This can be done through the Xref manager. Next to the DWG icon in the upper left hand corner is a pulldown that will allow you to insert other file types. Select the appropriate file type and follow the instructions above as you would for an xref.

When inserting detail images from municipalities, it is preferred that they be TIFF or PDF files. If the municipality issues both CAD and PDF or image files of their details, the PDF version should be selected.

Typically, drawings should not show the frame around an inserted image when plotted. To prevent this, for any drawing that has an image inserted:

1. Command Line: `IMAGEFRAME`
2. You will be prompted to enter a value. Type 2 and press enter. This will allow you to manipulate the image frame in the drawing, but will not plot the frame.

:::note

When inserting an aerial, it should always be inserted on layer “XREF-IMAGE”.

:::

## Sheet Numbering

Sheet numbering typically follows industry standards, with an alphabetic prefix by discipline and a numeric sheet number suffix. Typically the prefix will be “C” for “Civil”. Projects that have mechanical components will have an “M” prefix, survey sheets will have an “S” prefix, etc.

## North Arrow and Scale

A north arrow and a dynamic block scale are available for insertion into all sheets from the tool palette for Sheet Setup. See section 4.C for instruction on setting up and using Tool Palettes. Scales and north arrows should always be inserted into the PAPERSPACE of a drawing. Use the pull down attribute in the scale block to select the correct scale to match the associated viewport.

Take care to rotate the north arrow so that it orients with the view of the drawing. Typically the north direction should be either at the top or right hand side of the sheet.

## Sheet Callouts

A dynamic Sheet Callout block is available for insertion from the Page Setup tool Palette. Every viewport, drawing, and detail should have a callout identifying the page number, title of the drawing or view, and the first sheet that references the drawing.

The callout should be placed in PAPERSPACE of the drawing. Typically it will be grouped with the scale and north arrow, preferably centered at the bottom of the page or in the lower right hand corner. Refer to the example drawings in the appendices for more information.

## Plotting & Page Setup

1. Open the project drawing that will contain the sheet set.
2. Activate a tab in paperspace.
3. Each tab you create will need to have the Page Setup Manager updated. Right click on the tab and select “Page Setup Manager”.
4. A dialogue box will appear. Select “Import”
5. Browse for the file: N:\\Autodesk\\Blocks\\Title Blocks.
6. This will populate your list of available Page Setups. Select the appropriate setup for the size of your drawing. This should match the size of the title block previously saved.
