---
title: Corridors
---

1.  Create data reference of EG surface (existing surface).
2.  Create a PG surface for the corridor.
3.  Create ALIGNMENT, i.e. NW ROAD of proposed road.
4.  Create PROFILE of alignment created in step 3 above.
5.  Add EG surface to profile.![](images/corridors/image27.png)

![](images/corridors/image11.png)

1.  Create a PROFILE VIEW for the vertical curve to be created in step VI below. 

![](images/corridors/image29.png)

2.  Create VERTICAL CURVE based on profile of existing grade created from alignment (make sure grade A (algebraic) differences and K-values are per city minimum requirements)

1.  PROFILE 🡪 Profile Creation Tool 
2.  “Profile Layout Tools” toolbar pops up

1.  Algebraic difference in grade breaks has to be  <0.40%, K-Values: Sag>40, Crest>30
2.  To create vertical curves: More Free Vertical Curves🡪 Free Vertical Parabola (PVI) based![](images/corridors/image10.png)![](images/corridors/image28.png)

![](images/corridors/image24.png)

3.  Create an ASSEMBLY for the corridor or vertical curve.

1.  Assembly 🡪 Create Assembly 🡪 Name 🡪 “LOCAL ROAD 28’ FL-FL”

1.  Assembly Type = Undivided Crowned Road
2.  Assembly Style = Standard
3.  Code Set Style= Standard
4.  Pick a spot near profile view created to locate where the baseline of the assembly will be located![](images/corridors/image23.png)

2.  Open TOOL PALETTE

1.  Lanes 🡪 Generic Pavement Structure

1.  Select lane assembly created in Step 1

above, and add to both sides of baseline,

(green line)

1.  Change width = 12’

(distance from CL to edge of pan)

2.  Change depth = 0.50’
3.  Change slope = 2.0%![](images/corridors/image26.png)

![](images/corridors/image2.png)

![](images/corridors/image1.png)![](images/corridors/image1.png)

![](images/corridors/image1.png)

2.  Curbs 🡪 Urban Curb & Gutter

1.  Select lane assembly created in Step 1

above, and add to both sides of Lane created above,

1.  Change gutter slope = -8.33
2.  Change subgrade depth = 0.50’
3.  Change subgrade extension = 0.0’
4.  Change subase slope = -8.33%
5.  change Dimension A = 6”
6.  change Dimension B = 24”
7.  change Dimension C = 2”
8.  change Dimension D = 6”
9.  change Dimension E = 6”
10.  change Dimension F = 4.5”
11.  change Dimension G = 12”

![](images/corridors/image9.png)![](images/corridors/image25.png)

![](images/corridors/image1.png)![](images/corridors/image1.png)![](images/corridors/image1.png)

![](images/corridors/image13.png)

3.  Mountable Curbs 🡪 Urban Curb Gutter Valley 1

1.  Select lane assembly created in Step 1

above, and add to both sides of Lane created above,

1.  change gutter slope = -8.33
2.  Change subgrade depth = 0.01’ (if depth unknown)
3.  Change subgrade extension = 0.0’
4.  Change subase slope = -2.0%
5.  change Dimension A = 6”
6.  change Dimension B = 24”
7.  change Dimension C = 2”
8.  change Dimension D = 4”
9.  change Dimension E = 7”
10. change Dimension F = 10”

![](images/corridors/image2.png)![](images/corridors/image4.png)

![](images/corridors/image1.png)![](images/corridors/image1.png)

![](images/corridors/image12.png)![](images/corridors/image1.png)

4.  Curb 🡪 Urban Sidewalk

1.  Select lane assembly created in Step 1

above, and add to both sides of gutter created above,

1.  Change sidewalk width = 6’
2.  Change slope = 2.0%
3.  Change depth = 0.5’

![](images/corridors/image3.png)

![](images/corridors/image2.png)

![](images/corridors/image1.png)![](images/corridors/image1.png)![](images/corridors/image1.png)

5.  Generic 🡪 Link Slope to surface

1.  Select lane assembly created in Step 1

above, and add to both sides of sidewalk created above,

1.  Change slope = 25% or 33%
2.  Add to Link Code = daylight![](images/corridors/image5.png)

![](images/corridors/image2.png)

![](images/corridors/image1.png)

![](images/corridors/image1.png)

6.  Add name to each assembly with text box and edit field,

1.  Create mText box above assembly, right click within text box 🡪Insert Field 🡪Object 🡪 Select Assembly 🡪Then select “Name” within property box

4.  Creating the corridor

1.  Corridor 🡪 “Create Corridor” pop up box

1.  Name \= NW Road
2.  Corridor Style = BEC Corridor
3.  Alignment = NW Road (alignment created in step III)
4.  Profile = FG NW Road 1 (profile created in step VI)
5.  Assembly = LOCAL ROAD 28’ FL – FL (or corresponding assembly)
6.  Target Surface = EG (or surface to daylight to)
7.  Set baseline and region parameters = Uncheck Box![](images/corridors/image15.png)

8.  Corridor should have been built along alignment.
9.  Right click Corridor 🡪Corridor Properties 🡪Surfaces 🡪 Click on first Icon, Corridor added to list.
10.  Specify Code 🡪 Top 🡪 Add 🡪 Apply

1.  Surface should be created

![](images/corridors/image14.png)

![](images/corridors/image6.png)![](images/corridors/image6.png)

11.  Pull back limits of corridor to revised surface to actual point of new road not full length of alignment created.
12.  Right click Corridor 🡪Corridor Properties 🡪Boundaries 🡪 Right Click on corridor listed 🡪 Corridor extents at outer boundary 🡪 APPLY

1.  Contours should have been trimmed along outer boundary (where surface daylights)

13.  Right click Corridor 🡪Corridor Properties 🡪Parameters 🡪 Set all Frequencies  

1.  Along Tangents = 5
2.  Along Curves = 5
3.  Along Spirals = 5
4.  Along Profile Curves =5

14.  If the surface of the road does not show a crowned road the Subassembly of crown road codes needs to be revised to have TopLink Codes = Top,Pave & Shape Codes = Pave1

1.  Right Click Subassembly and change in properties menu

![](images/corridors/image21.png)

![](images/corridors/image7.png)

![](images/corridors/image7.png)

15.  Add Corridor Surface to PG surface under Edits 🡪 right click 🡪 paste surface![](images/corridors/image20.png)

![](images/corridors/image22.png)

INTERSECTIONS

1.  Create intersection, then select intersection point of alignments.

![](images/corridors/image30.png)

2.  GENERAL

Intersection Name =

Intersection Marker Style= BEC\_Intersection

Intersection Label Style= Standard

Intersection Corridor Type= Primary Road Crown Maintained

![](images/corridors/image31.png)

3.  GEOMETRY DETAILS

1.  Intersecting Alignments= (make sure correct alignments are shown)

![](images/corridors/image32.png)

2.  Offset and Curb Returns🡪 OFFSET PARAMETERS

![](images/corridors/image33.png)

3.  Offset and Curb Returns🡪 CURB RETURN PARAMETERS (make sure to go through all quadrants)

![](images/corridors/image34.png)![](images/corridors/image19.png)

4.  Offset and Curb Return Profiles🡪 LANE SLOPE PARAMETERS

![](images/corridors/image16.png)

5.  Offset and Curb Return Profiles🡪 CURB RETURN PROFILE PARAMETERS (all quadrants)

![](images/corridors/image17.png)![](images/corridors/image8.png)

4.  CORRIDOR REGIONS

1.  Create corridors in the intersection area= (make sure correct alignments are shown)

1.  Be sure to ad to existing corridor
2.  Choose the correct Assembly for each region

![](images/corridors/image18.png)

2.  Corridor Region Section Type

1.  Curb radius fillet = \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
2.  Primary Road Section = \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
3.  Primary Road Section- Daylight LEFT = \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
4.  Primary Road Section- Daylight RIGHT = \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
5.  Secondary Road Section = \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
6.  Secondary Road Section- Daylight LEFT = \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
7.  Secondary Road Section- Daylight RIGHT = \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

3.  Create Intersection