---
title: CORRIDORS – CURB RETURNS
---

1.  Create data reference of EG surface (existing surface).

2.  Create a PG surface for the corridor.

3.  Create ALIGNMENT, i.e. NW ROAD of proposed road.

4.  Create PROFILE of alignment created in step III above.

1.  Add EG surface to profile.![](images/curb-returns/image26.png)

![](images/curb-returns/image10.png)

5.  Create PROFILE VIEW for vertical curve to be created in step VI below. 

![](images/curb-returns/image28.png)

6.  Create VERTICAL CURVE based on profile of existing grade created from alignment (make sure grade A (algebraic) differences and K-values are per city minimum requirement’s)

1.  PROFILE 🡪 Profile Creation Tool 
2.  “Profile Layout Tools” toolbar pops up

1.  Algebraic difference in grade breaks has to be  <0.40%, K-Values: Sag>40, Crest>30
2.  To create vertical curves: More Free Vertical Curves🡪 Free Vertical Parabola (PVI) based![](images/curb-returns/image9.png)![](images/curb-returns/image27.png)

![](images/curb-returns/image23.png)

7.  Create ASSEMBLY for corridor for vertical curve.

1.  Assembly 🡪 Create Assembly 🡪 Name 🡪 “LOCAL ROAD 28’ FL-FL”

1.  Assembly Type = Undivided Crowned Road
2.  Assembly Style = Standard
3.  Code Set Style= Standard
4.  Pick a spot near profile view created to locate where the baseline of the assembly will be located![](images/curb-returns/image22.png)

2.  Open TOOL PALETTE

1.  Lanes 🡪 Generic Pavement Structure

1.  Select lane assembly created in Step 1

above, and add to both sides of baseline,

(green line)

1.  Change width = 12’

(distance from CL to edge of pan)

2.  Change depth = 0.50’
3.  Change slope = 2.0%![](images/curb-returns/image25.png)

![](images/curb-returns/image2.png)

![](images/curb-returns/image1.png)![](images/curb-returns/image1.png)

![](images/curb-returns/image1.png)

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

![](images/curb-returns/image2.png)![](images/curb-returns/image24.png)

![](images/curb-returns/image1.png)![](images/curb-returns/image1.png)![](images/curb-returns/image1.png)

![](images/curb-returns/image12.png)

3.  Mountable Curbs 🡪 Urban Curb Gutter Valley 1

1.  Select lane assembly created in Step 1

above, and add to both sides of Lane created above,

1.  Change gutter slope = -8.33
2.  Change subgrade depth = 0.01’ (if depth unknown)
3.  Change subgrade extension = 0.0’
4.  Change subase slope = -2.0%
5.  change Dimension A = 6”
6.  change Dimension B = 24”
7.  change Dimension C = 2”
8.  change Dimension D = 4”
9.  change Dimension E = 7”
10.  change Dimension F = 10”

![](images/curb-returns/image2.png)![](images/curb-returns/image4.png)

![](images/curb-returns/image1.png)![](images/curb-returns/image1.png)

![](images/curb-returns/image11.png)![](images/curb-returns/image1.png)

4.  Curb 🡪 Urban Sidewalk

1.  Select lane assembly created in Step 1

above, and add to both sides of gutter created above,

1.  Change sidewalk width = 6’
2.  Change slope = 2.0%
3.  Change depth = 0.5’

![](images/curb-returns/image3.png)

![](images/curb-returns/image2.png)

![](images/curb-returns/image1.png)![](images/curb-returns/image1.png)![](images/curb-returns/image1.png)

5.  Generic 🡪 Link Slope to surface

1.  Select lane assembly created in Step 1

above, and add to both sides of sidewalk created above,

1.  Change slope = 25% or 33%
2.  Add to Link Code = daylight![](images/curb-returns/image5.png)

![](images/curb-returns/image2.png)

![](images/curb-returns/image1.png)

![](images/curb-returns/image1.png)

6.  Add name to each assembly with text box and edit field,

1.  Create mText box above assembly, right click within text box 🡪Insert Field 🡪Object 🡪 Select Assembly 🡪Then select “Name” within property box

8.  Creating the corridor

1.  Corridor 🡪 “Create Corridor” pop up box

1.  Name \= NW Road
2.  Corridor Style = BEC Corridor
3.  Alignment = NW Road (alignment created in step III)
4.  Profile = FG NW Road 1 (profile created in step VI)
5.  Assembly = LOCAL ROAD 28’ FL – FL (or corresponding assembly)
6.  Target Surface = EG (or surface to daylight to)
7.  Set baseline and region parameters = Uncheck Box![](images/curb-returns/image14.png)

8.  Corridor should have been built along alignment.
9.  Right click Corridor 🡪Corridor Properties 🡪Surfaces 🡪 Click on first Icon, Corridor added to list.
10.  Specify Code 🡪 Top 🡪 Add 🡪 Apply

1.  Surface should be created

![](images/curb-returns/image13.png)

![](images/curb-returns/image6.png)![](images/curb-returns/image6.png)

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

![](images/curb-returns/image20.png)

![](images/curb-returns/image7.png)

![](images/curb-returns/image7.png)

15.  Add Corridor Surface to PG surface under Edits 🡪 right click 🡪 paste surface![](images/curb-returns/image19.png)

![](images/curb-returns/image21.png)

INTERSECTIONS

1.  Create intersection, then select intersection point of alignments.

![](images/curb-returns/image29.png)

2.  GENERAL

Intersection Name =

Intersection Marker Style= BEC\_Intersection

Intersection Label Style= Standard

Intersection Corridor Type= Primary Road Crown Maintained

![](images/curb-returns/image30.png)

3.  GEOMETRY DETAILS

1.  Intersecting Alignments= (make sure correct alignments are shown)

![](images/curb-returns/image31.png)

2.  Offset and Curb Returns🡪 OFFSET PARAMETERS

![](images/curb-returns/image32.png)

3.  Offset and Curb Returns🡪 CURB RETURN PARAMETERS (make sure to go through all quadrants)

![](images/curb-returns/image33.png)![](images/curb-returns/image18.png)

4.  Offset and Curb Return Profiles🡪 LANE SLOPE PARAMETERS

![](images/curb-returns/image15.png)

5.  Offset and Curb Return Profiles🡪 CURB RETURN PROFILE PARAMETERS (all quadrants)

![](images/curb-returns/image16.png)![](images/curb-returns/image8.png)

4.  CORRIDOR REGIONS

1.  Create corridors in the intersection area= (make sure correct alignments are shown)

1.  Be sure to ad to existing corridor
2.  Choose the correct Assembly for each region

![](images/curb-returns/image17.png)

2.  Corridor Region Section Type

1.  Curb radius fillet = \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
2.  Primary Road Section = \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
3.  Primary Road Section- Daylight LEFT = \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
4.  Primary Road Section- Daylight RIGHT = \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
5.  Secondary Road Section = \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
6.  Secondary Road Section- Daylight LEFT = \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
7.  Secondary Road Section- Daylight RIGHT = \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_

3.  Create Intersection