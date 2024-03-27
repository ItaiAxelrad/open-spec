---
title: Importing LiDAR from GIS to CAD
---

Determine which LiDAR dataset the site is on with the Google Earth kmz file. Either "N:\\GIS\_data\\LiDAR Extents.kmz" or "C:\\GIS\\LiDAR Extents.kmz" on the GIS machine.

![](images/lidar/image2.png)

## GIS

*   Open ArcMap 10.5
*   In Getting Started Dialog Box Select My Templates > Blank Map and click OK
*   Go to menu Windows > Catalog
*   (If this is your first time using ArcGIS on the computer) click Connect to Folder Icon and add “N:\\GIS\_data” and “C:\\GIS folders”

![](images/lidar/image4.png)

![](images/lidar/image3.png)

*   Add some data to find your area of interest
*   Either drag and drop shapefiles from the Catalog or on the menu bar go to Add Data drop down arrow and select Add Data
*   Add shapefiles from the same location that the LiDAR shapefiles are in.
*   EG: "N:\\GIS\_data\\JeffCo\\Streets\\Jeffco\_Street.shp"
*   Note that ArcGIS sets the coordinate system for the data frame based on the first data added to a new project.
*   Add base map to refine location
*   On the menu bar go to Add Data drop down arrow and select Add Basemap and select Imagery or Streets (Streets tend to perform better than the aerial imagery).

![](images/lidar/image6.png)

*   Click close on the Geographic Coordinate Systems Warning dialog box, if it gives you a warning.
*   Choose/Check correct coordinate system
*   From the menu select View>Data Frame Properties…  and click on the Coordinate system tab
*   In the search bar type “colorado” to filter the items
*   Expand Projected Coordinate Systems>State Plane>NAD 1983 (US Feet) 
*   Depending which coordinate system you are in select either “NAD 1983 StatePlane Colorado Central FIPS 0502 (US Feet)” or “NAD 1983 StatePlane Colorado North FIPS 0502 (US Feet)”
*   You can click on the star with a plus to add these to your favorites for quicker access next time.
*   Click OK and on the Warning dialog box click Yes
*   Add other GIS data (optional)
*   Parcels – If we have Parcel data on file for the area being considered go to Catalog>N:\\GIS\_data or look online. Some county data on the server may be out of date – use with caution.
*   Add appropriate LiDAR file
*   Catalog>C:\\GIS\\...>Contours\_Smoothed
*   To make performance better you can turn off the contour data in the Table of Contents window by unchecking the box next to the Contours\_Smoothed item.
*   If Township and Range number is needed, use [http://www.earthpoint.us/Townships.aspx](https://www.google.com/url?q=http://www.earthpoint.us/Townships.aspx&sa=D&source=editors&ust=1711560433734027&usg=AOvVaw07uN8M9fJYV4OYhflmyOd8) or datasets in N:\\GIS\_data\\PLSS
*   Add Shape to clip topo
*   Go to the menu Customize>Toolbars>Snapping
*   Click on drop down Snapping arrow>uncheck use snapping 
*   Create new shape file in scratch folder
*   Catalog>N:\\GIS\_data\\scratch\\(PROJECT#)>RT-Click>New>Shapefile

![](images/lidar/image5.png)

*   Change the Name to Boundary
*   Change Feature Type: Polygon
*   Click Edit… and select appropriate coordinate system (Central or North)
*   Table of Contents>(NEWSHAPFILE)>RT-Click>Edit Features>Start Editing
*   If a dialog box pops up click Continue
*   If the Create Features Window is not present click on the Editor pulldown in the Editor Toolbar and select Editing Windows>Create Features
*   In the Create Features Window select shape file name

![](images/lidar/image8.png)

*   In Construction Tools section below select desired tool (Rectangle, Polygon, Circle)

![](images/lidar/image7.png)

*   Draw the shape that you want to use to clip down the topo
*   In the Editor toolbar click the dropdown Editor>Editor>Stop Editing>Save
*   Clip LiDAR from drawn shape
*   From the menu select Geoprocessing>Clip and expand the Show Help >> button
*   Input Features = Contours\_Smoothed
*   Clip Features = Clipping shapefile
*   Output = Save to scratch folder and name “Contours\_Clip”
*   XY = leave blank
*   Click OK and wait. You should see “Clip…Clip..” scrolling in the status bar. Refresh if necessary (bottom left of Map space)
*   Export to shape file if alternate coordinate system is desired (This correct coordinate system should have already been selected in previous steps).
*   Arc Toolbox>Data Management>Projections and Transformations>Project
*   Select coordinate system (NAD 1983- CO state plane)
*   Save to project folder

![](images/lidar/image10.png)

### Export Aerial image (optional)

*   Only turn on/add the World Imagery base map in the Table of Contents
*   Exported data will only be the visible layers
*   Zoom in as much as possible
*   From the menu select File>Export Map…
*   Give the file a name and change save as type to PNG or JPG
*   Change the resolution to 200 dpi
*   Check Write World File
*   Click Save

### Export Parcels (optional)

*   Select polygons to copy
*   In the Tools Toolbar click ‘Select Features’ drop down arrow>Select by Rectangle>draw rectangle
*   Export polygons
*   Right click on the Parcel layer in the Table of Contents>Data>Export Data…
*   Export: = Selected Features
*   Use the Same Coordinate System as: = the data frame
*   Output Feature Class: Browse to folder and name file
*   These steps work for any other GIS data for example roads, floodplains, city boundaries

## Import LiDAR to CAD

The following instructions are modified from the info on the link below.

*   [http://www.thecadmasters.com/wordpress/index.php/2011/03/16/assign-elevations-to-contours-from-an-esri-shape-file/](https://www.google.com/url?q=http://www.thecadmasters.com/wordpress/index.php/2011/03/16/assign-elevations-to-contours-from-an-esri-shape-file/&sa=D&source=editors&ust=1711560433738113&usg=AOvVaw3D5cJYzJqB4qXDaV7zwkDb)

### Part A – Import the Shape File

1.  Start a new drawing from the Baseline template "N:\\x-Autodesk\\Template\\bec\_c3d2014.dwt"
2.  IMPORTANT!!! The Baseline template in set in Colorado State Plane North Zone by default. If the project and LiDAR information is in the Central Zone you must change the coordinate system.
    *   In the “Settings” tab of the Toolspace right-click on the Drawing name and select Edit Drawing Settings…
    *   Change “Selected coordinate system code:” from CO83-NF to CO83-CF
3.  Type MAPIMPORT at the command line.
4.  Make sure Files of type is set to ESRI Shapefile, select the file, and click Open.
5.  In the Import dialog, select Import polygons as closed polylines.
6.  Make sure that the Current Coordinate system and the Input Coordinate system are the same 
7.  Click the … inside the cell under Data:

![](images/lidar/image9.png)

![](images/lidar/image1.png)

8.  Click Create object data.
    *   Optional: Click Select Fields… to choose which GIS attributes to import
9.  Click OK to close the Attribute Data dialog.
10.  Click OK to close the Import dialog.
11.  Zoom extents to see the results. Select a contour line and look at the Properties Palette.  Notice that the AutoCAD Elevation property is 0, but that we also have an “OD” category in Properties.  This is the object data that we brought in with file.  Note which field contains your elevation data, (Elevation Data will be on a field called “ContourEle”.  Minor and major contour data will be on a field called “ContourType” with a value of 0 \[minor\] or 1 \[major\].)  
12.  IMPORTANT!!! If there is a grid to ground scale factor in the survey drawing you must scale up by the scale factor (1.000XXXXXX) from 0,0. If there isn’t a scale factor in the survey contact to survey dept. to see if there is one as sometimes it is inadvertently omitted. This step must be done before assigning the elevation z-values otherwise the elevations will also be scaled.
13.  Save and close the drawing. This is a scratch drawing that can be deleted after the final steps are completed.

### Part B – Connect to the Imported DWG

1.  Start another new drawing from the Baseline template "N:\\x-Autodesk\\Template\\bec\_c3d2014.dwt"
2.  IMPORTANT!!! Again if the project and LiDAR information is in the Central Zone you must change the coordinate system.
    *   In the “Settings” tab of the Toolspace right-click on the Drawing name and select Edit Drawing Settings…
    *   Change “Selected coordinate system code:” from CO83-NF to CO83-CF
3.  If the Map Task Pane is not currently showing, type MAPWSPACE at the command line and select On.

![http://www.thecadmasters.com/wordpress/wp-content/uploads/2011/03/20110309-TaskPane.jpg](images/lidar/image13.jpg)

4.  In the Map Explorer tab, right-click Drawings and click Attach.
5.  Select the drawing previously created in Part A, click Add (if you need to add the N: drive as a connection click the Create/Exit Aliases button).
6.  Click OK.

![http://www.thecadmasters.com/wordpress/wp-content/uploads/2011/03/20110309-Attach-291x300.jpg](images/lidar/image11.jpg)

### Part C – Query to Assign Elevations.

1.  In the Task Pane on the Map Explorer tab, expand Query Library, right-click Current Query and click Define.
2.  Click the Location button. Select All
3.  Click OK.
4.  For the Query Mode, select Draw.
5.  Click Alter Properties.
6.  Select Elevation and click Expression.
7.  In the Property Alteration Expression dialog, expand Object Data, expand the object data table and select the field that contains the elevation data (‘CountourEle’)
8.  Click OK.
9.  In the Set Property Alterations dialog, click Add
10.  Select Layer and click Expression.
11.  In the Property Alteration Expression dialog, expand Object Data, expand the object data table and select the field that contains the major/minor contour data (‘ContourType’)
12.  Click OK.
13.  In the Set Property Alterations dialog, click Add
14.  Click OK.
15.  Click Execute Query.

Zoom extents, and there you have it, your contours are in the drawing with the proper elevations assigned.  Major contours are on Layer 1, and minor contours are on Layer 0.  

Save the new drawing and then detach the first drawing.  (On the Map Explorer tab of the Task Pane right-click your drawing and click Detatch).

### Part D – Move contours to correct layers.

1.  Select everything on layer 0 and move it to Layer “E-G-CONT-MINOR”
2.  Select everything on layer 1 and move it to layer “E-G-CONT-MAJOR”
3.  Alternatively you can put all the contours on layer “E-G-CONT-USER” so that if you create a Civil 3D surface they aren’t on the same layers as those contours.
4.  Enable Linetype Generation on all contour lines in both layers.

![](images/lidar/image12.png)

## CAD Import Parcels

*   Type MAPIMPORT
*   Browse to file
*   Import Polygons as Closed Polylines
*   OK
*   Move polylines to “E-S-LOT-LINES”
*   Scale using the scale factor as needed to align data
