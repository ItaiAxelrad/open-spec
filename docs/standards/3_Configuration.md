---
id: 3
title: 'Configuration'
date: 2021-04-10
---

Upon first setting up your AutoCAD profile, the following configurations should be made:

## Support Files Setup

1. Command Line: `OPTIONS` (or `OP`). A dialogue box will open.
2. Select the “Files” tab. The dialogue box will display a list of search paths, file names, and file locations
3. Expand “Support File Search Path”
4. Click “Add…” then click “Browse…”
5. Select the following folder from the network: N:\\Autodesk\\Fonts
6. Click “Add…” then click “Browse…”
7. Select the following folder from the network: N:\\Autodesk\\Support
8. Expand “Trusted Locations” (2014 and up)
9. Click “Add…” then click “Browse…”
10. Select the following folder from the network: N:\\Autodesk\\Support
11. Click “Add…” then click “Browse…”
12. Select the following folder on your workstation for the appropriate version you are using (if present on your C: drive. 2016 and after this should already be on the list): C:\\Program Files\\Common Files\\Autodesk Shared\\Extensions 20XX

## Plotter Settings

1. Command Line: `OPTIONS` (or `OP`).
2. Select the “Files” tab. The dialogue box will display a list of search paths, file names, and file locations
3. Expand “Printer Support File Path”
4. Expand “Printer Configuration Search Path”
5. Replace the default location with: N:\\Autodesk\\Plotters
6. Expand “Printer Description File Search Path”
7. Replace the default location with: N:\\Autodesk\\Plotters\\PMP File.
8. Expand “Plot Style Table Search Path”
9. Replace the default location with: N:\\Autodesk\\Plot Styles

## Template Settings

1. Command Line: `OPTIONS` (or `OP`).
2. Select the “Files” tab. The dialogue box will display a list of search paths, file names, and file locations
3. Expand “Template Settings”
4. Expand “Default Template File Name for QNEW”
5. Replace the default location with: N:\\Autodesk\\Template\\C3D_20XX.dwt

## Add a Tool Palette

1. Command Line: `OPTIONS` (or `OP`).
2. Select the “Files” tab. The dialogue box will display a list of search paths, file names, and file locations
3. Expand the “Tool Palettes File Locations”
4. Click “Add…” then click “Browse…”
5. Select the following folder: N:\\Autodesk\\Support\\ToolPalette
6. Make sure that the added path is below the default path.
7. If you accidentally replace the default tool palette instead of adding new tool palettes you can add the default one back from the following path: C:\\Users\\`username`\\AppData\\Roaming\\Autodesk\\C3D 20XX\\enu\\Support\\ToolPalette
8. Click OK.

## Customize a Tool Palette

1. Press `CTRL + 3` to open the Tool Pallet
2. Command Line: `CUSTOMIZE` A dialogue box will open.
3. Right click in the bottom of the Palette Groups box
4. Select “New Group”. Name the group.
5. Drag all desired items in the Palettes box to the new Palette Group.
6. Click “Close”.
7. Right click in the sidebar of the Tool Palette. Select the new pallet from the list.

![Options](/img/standards/image13.png)

![Customize](/img/standards/image10.png)

## Drafting Setup and Customization

### Recommended Settings

Most users prefer to work on black backgrounds (to be able to see the color yellow more easily), while the AutoCAD default for paper space is a white background. To change the backgrounds:

1. Command line: `OPTIONS` (or `OP`). A dialogue box will open.
2. Select the “Display” tab.
3. Click on “Colors…”
4. A new dialogue box will appear. In the “Context” box, select “Sheet / layout”.
5. In the “Interface Element” box, select “Uniform Background”
6. Select “Black” or another dark color in the “Color” pull down. You should see the background color in the preview screen change from White to Black.

### Simplify the available printing choices

1. Command line: `OPTIONS` (or `OP`). A dialogue box will open.
2. Select the “Plot and Publish” Tab.
3. Toggle “ON” Hide System Printers.
4. Click “OK”

### Improve performance of the Undo/Redo command

1. Type `OPTIONS` in the command line
2. A dialogue box will appear. Click on the “User Preferences” tab.
3. In the Undo/Redo section, toggle “ON” “Combine zoom and pan commands” (this should be already selected by default)
4. Click “OK”

### System Variables

1. Type `SYSVARMONITOR`
2. Add the variables in the image below or any other variable you like to monitor for changes. This helps for instance when you crash and `FILEDIA` gets switched to 0. This will give you a notification and you can easily switch it back.
3. Click on “Enable balloon notification".

![System Variable Monitor](/img/standards/image6.png)

## Settings Outside of AutoCAD

In order to make drawing recovery easier, change the following Windows settings:

1. Open Windows Explorer and search “Folder Options”
2. A dialogue box will appear. Click on the “View” tab.
3. Hidden Files and folders: toggle “Show hidden files, folders, and drives”
4. Uncheck “Hide extensions for known file types”
