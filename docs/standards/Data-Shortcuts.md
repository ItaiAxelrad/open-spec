---
sidebar_position: 11
title: 'Data Shortcuts'
date: 2021-04-10
---

A data shortcut (DREF) is a method for sharing Civil 3D information, such as surfaces, alignments, and profiles, between drawings without actually having to attach it directly. This is a two part process in which the parent drawing is set up to display a data shortcut and the destination drawing is set up to receive it.

## Parent Drawing

1. Open the “Toolspace” from the “Home” tab on the ribbon.
2. Click on the “Prospector” tab in the Toolspace
3. Right click on “Data Shortcuts”. Select “Set Working Folder”
4. Browse for the project folder you are currently working in and select it (i.e. co3308 - Chapel in the Hills
5. Click “OK”
6. Right click on “Data Shortcuts”. Select “New Data Shortcuts Project Folder”
7. A dialogue box will appear. In the “Name” box, type “Drawings”. Click “OK”
8. This will create a shortcut folder in the project Drawings folder called “\_Shortcuts”
9. Right click on “Data Shortcuts”. Select “Create Data Shortcuts”. You may be prompted to save. Do so and select “Create Data Shortcuts” again.
10. A “Share Data” dialogue box will appear. This list indicates all Civil 3D information in the drawing that is available to be shared with other drawings. Select all items that apply and click “OK”.

![](/images/standards/image21.png)

## Destination Drawing

1. Open the Toolspace from the Home ribbon and select the Prospector tab. The Data Shortcuts information that you set up in the previous steps should be visible. In the event it is not, repeat steps 3 and 4 above.
2. Right click on each item listed under Data Shortcuts that you intend to use in the destination drawing and select “Create Reference”. This will make it available to you in the upper menu of the prospector.

Any Civil 3D styles associated with the parent drawing must be present in the destination drawing for the DREFs to display correctly. The styles are pre-loaded into the Template drawings, but any older drawing not created with the template will need to have the styles loaded manually. See Chapter 4, Section A for instructions.

Any Civil 3D labels associated with the parent drawing will not be carried over to the destination drawing. They will need to be recreated as necessary. See the Annotating chapter for more information about labeling.
