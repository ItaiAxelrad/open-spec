---
title: 'Sheet Sets'
eleventyNavigation:
  key: Sheet Sets
  order: 14
date: 2021-04-10
---

Sheet set manager is a tool for organizing, managing, and plotting multiple sheet tabs from at the same time. These sheets may be in the same drawing or multiple drawings. This toll is a significant time saving device when plotting. Each new project started with more than three sheets should include initiating a sheet set for that project. Typically a sheet set manager is created after all drawings for the project have been established, however, additional drawings may be added to the Sheet Set at any time.

### Naming Convention

Name the sheet set with the project number and description of what it is. Below are examples of how to name the sheet sets:

- Construction Plans
  - XXXX Project Name CDs.dst
- Planning documents
  - XXXX Site Plan/OPD/SDP.dst
- Survey Documents
  - XXXX Plat/Alta/ISP/LSP.dst

### Create a sheet set

1. Command Line: `SHEETSET` A dialogue box will open.
2. From the top pull down menu, select “New Sheet Set”
3. Toggle “Create a Sheet Using: Existing Drawings”
4. Click “Next”
5. You will be prompted to name the Sheet Set. The name should include the project number, title, and the type of submittal you are creating the set for. (Example: co2931a-McDonald Audi-Civil CDs). You may also enter a description of the sheet set at this time.
6. In the “Store Sheet Set Data Here:” box, browse for the project Drawing folder, select it, and click “Open”.
7. Click “Next”
8. The “Choose Layouts” box will appear. Browse for the project Drawings folder and select it
9. The “Choose Layouts” box will populate with all the project drawing files and the available sheet tabs in each drawing.
10. Select each sheet tab you wish to include in the Sheet Set Manager and click “Next”
11. You will then be given a preview of the Sheet Set. If it is acceptable, click “Finish”. If not, repeat the previous steps until all the drawings for the set are shown.
12. Your sheet set will now populate in the Sheet Set Manager dialogue box.

#### Adding to Sheet Sets

1. To add a sheet to a set, right click on the name of your sheet set in the dialogue box OR right click on the sheet tab you wish to add and select “Import Layout as Sheet”. Repeat the steps above to browse for and select the sheet you wish to add.
2. The new sheet will be added to the sheet set manager list at the bottom.
3. To move the sheet into a different position in the set, simply highlight it in the sheet set manager dialogue box and drag it to the new position.

#### Modifying Sheet Sets

One of the benefits to using Sheet Set Manager is that it will update sheet information for you without opening each drawing and tab to change it manually:

1. To change the sheet names and numbers, right click on the sheet you wish to modify and select Rename & Renumber
2. A dialogue box will appear. Adjust the information in this box as appropriate. Clicking “Next” will cycle the box to the next sheet in the set.
3. Repeat as necessary until all sheet info is correct and press “OK”.
4. After you have established your sheet set, right click on each sheet in the list and select “Properties.” In the “Sheet Number” box, enter the appropriate sub-set sheet number. For example, the first Civil Sheet will be C1, the first Water Sheet will be W1, etc.
5. In the “Description” box, enter the cumulative sheet number. If it is the 26th sheet in the set, enter 26 in this box.
6. Make sure to regenerate (Command Line `RE`) your drawing to see the effects of any changes made in the Sheet Set.

#### Insert Sheet List Table

Sheet Set Manager will also update your sheet list on your title bock:

1. Right click on the Sheet Set Name in the Sheet Set Manager dialogue box.
2. Select “Insert Sheet List Table”
3. A dialogue box will appear. From the pull-down menu in the upper left, select “Sheet Index”
4. In the box to the right, change the headings for each section as shown below.
5. Click ”OK” and place your Sheet Index on the cover sheet.
6. To update this list, right click on the table and select “Update Table Data Links”
7. When you have selected all the sheets and updated all the sheet info, you are now ready to plot your set.
