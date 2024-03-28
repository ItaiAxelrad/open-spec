---
title: Road Grading
---

1.  Create data reference of EG surface.
2.  Create feature line of existing road CL.
3.  Determine new road requirements, ie; lane widths, bike lane, asphalt patchback requirements (2%-4%).
4.  Determine drop from CL of existing road to new flowline.
5.  Create best fit line for ex road CL to see how new flowline profile might/should look like for ideal patchback situation.

![](/images/guides/road-grading/image3.jpg)

![](/images/guides/road-grading/image12.jpg)

![](/images/guides/road-grading/image23.jpg)

IE. Lane width = 10’ @ 2% + 2’ Gutter (-0.17) = -0.37

1.  Select corridor that was just created and set width of the target to the sawcut feature line.
1.  Select corridor that was just created and set slope of the target to the sawcut feature line.

1.  xxxxx
1.  xxxxx

1.  Create PROFILE VIEW for vertical curve to be created in step VI below.

![](/images/guides/road-grading/image10.png)

10. Create VERTICAL CURVE based on profile of existing grade created from alignment (make sure grade A (algebraic) differences and K-values are per city minimum requirement’s)

1.  PROFILE 🡪 Profile Creation Tool
1.  “Profile Layout Tools” toolbar pops up

1.  Algebraic difference in grade breaks has to be  [0.40%, K-Values: Sag]40, Crest>30
1.  To create vertical curves: More Free Vertical Curves🡪 Free Vertical Parabola (PVI) based

![](/images/guides/road-grading/image22.png)

![](/images/guides/road-grading/image29.png)

![](/images/guides/road-grading/image27.png)

11. Create ASSEMBLY for corridor for vertical curve.

1.  Assembly 🡪 Create Assembly 🡪 Name 🡪 “LOCAL ROAD 28’ FL-FL”

1.  Assembly Type = Undivided Crowned Road
1.  Assembly Style = Standard
1.  Code Set Style= Standard
1.  Pick a spot near profile view created to locate where the baseline of the assembly will be located

![](/images/guides/road-grading/image15.png)

2.  Open TOOL PALETTE

1.  Lanes 🡪 Generic Pavement Structure

1.  Select lane assembly created in Step 1

above, and add to both sides of baseline,

(green line)

1.  Change width = 12’

(distance from CL to edge of pan)

2.  Change depth = 0.50’
3.  Change slope = 2.0%

![](/images/guides/road-grading/image20.png)

![](/images/guides/road-grading/image13.png)

![](/images/guides/road-grading/image1.png)

![](/images/guides/road-grading/image1.png)

![](/images/guides/road-grading/image1.png)

2.  Curbs 🡪 Urban Curb & Gutter

1.  Select lane assembly created in Step 1 above, and add to both sides of Lane created above,

1.  Change gutter slope = -8.33
1.  Change subgrade depth = 0.50’
1.  Change subgrade extension = 0.0’
1.  Change subase slope = -8.33%
1.  change Dimension A = 6”
1.  change Dimension B = 24”
1.  change Dimension C = 2”
1.  change Dimension D = 6”
1.  change Dimension E = 6”
1.  change Dimension F = 4.5”
1.  change Dimension G = 12”

![](/images/guides/road-grading/image16.png)

![](/images/guides/road-grading/image13.png)

![](/images/guides/road-grading/image1.png)

![](/images/guides/road-grading/image1.png)

![](/images/guides/road-grading/image1.png)

![](/images/guides/road-grading/image18.png)

3.  Mountable Curbs 🡪 Urban Curb Gutter Valley 1

1.  Select lane assembly created in Step 1 above, and add to both sides of Lane created above,

1.  Change gutter slope = -8.33
1.  Change subgrade depth = 0.01’ (if depth unknown)
1.  Change subgrade extension = 0.0’
1.  Change subase slope = -2.0%
1.  change Dimension A = 6”
1.  change Dimension B = 24”
1.  change Dimension C = 2”
1.  change Dimension D = 4”
1.  change Dimension E = 7”
1.  change Dimension F = 10”

![](/images/guides/road-grading/image2.png)

![](/images/guides/road-grading/image13.png)

![](/images/guides/road-grading/image1.png)

![](/images/guides/road-grading/image1.png)

![](/images/guides/road-grading/image5.png)

![](/images/guides/road-grading/image1.png)

4.  Curb 🡪 Urban Sidewalk

1.  Select lane assembly created in Step 1

above, and add to both sides of gutter created above,

1.  Change sidewalk width = 6’
2.  Change slope = 2.0%
3.  Change depth = 0.5’

![](/images/guides/road-grading/image14.png)

![](/images/guides/road-grading/image13.png)

![](/images/guides/road-grading/image1.png)

![](/images/guides/road-grading/image1.png)

![](/images/guides/road-grading/image1.png)

5.  Generic 🡪 Link Slope to surface

1.  Select lane assembly created in Step 1

above, and add to both sides of sidewalk created above,

1.  Change slope = 25% or 33%
2.  Add to Link Code = daylight

![](/images/guides/road-grading/image21.png)

![](/images/guides/road-grading/image13.png)

![](/images/guides/road-grading/image1.png)

![](/images/guides/road-grading/image1.png)

6.  Add name to each assembly with text box and edit field,

1.  Create mText box above assembly, right click within text box 🡪Insert Field 🡪Object 🡪 Select Assembly 🡪Then select “Name” within property box

1.  Creating the corridor

1.  Corridor 🡪 “Create Corridor” pop up box

1.  Name \= NW Road
1.  Corridor Style = BEC Corridor
1.  Alignment = NW Road (alignment created in step III)
1.  Profile = FG NW Road 1 (profile created in step VI)
1.  Assembly = LOCAL ROAD 28’ FL – FL (or corresponding assembly)
1.  Target Surface = EG (or surface to daylight to)
1.  Set baseline and region parameters = Uncheck Box

![](/images/guides/road-grading/image9.png)

8.  Corridor should have been built along alignment.
9.  Right click Corridor 🡪Corridor Properties 🡪Surfaces 🡪 Click on first Icon, Corridor added to list.
10. Specify Code 🡪 Top 🡪 Add 🡪 Apply

11. Surface should be created

![](/images/guides/road-grading/image4.png)

![](/images/guides/road-grading/image11.png)

![](/images/guides/road-grading/image11.png)

11. Pull back limits of corridor to revised surface to actual point of new road not full length of alignment created.
12. Right click Corridor 🡪Corridor Properties 🡪Boundaries 🡪 Right Click on corridor listed 🡪 Corridor extents at outer boundary 🡪 APPLY

13. Contours should have been trimmed along outer boundary (where surface daylights)

14. Right click Corridor 🡪Corridor Properties 🡪Parameters 🡪 Set all Frequencies

15. Along Tangents = 5
16. Along Curves = 5
17. Along Spirals = 5
18. Along Profile Curves =5

19. If the surface of the road does not show a crowned road the Subassembly of crown road codes needs to be revised to have TopLink Codes = Top,Pave & Shape Codes = Pave1

20. Right Click Subassembly and change in properties menu

![](/images/guides/road-grading/image7.png)

![](/images/guides/road-grading/image8.png)

![](/images/guides/road-grading/image8.png)

15. Add Corridor Surface to PG surface under Edits 🡪 right click 🡪 paste surface

![](/images/guides/road-grading/image6.png)

![](/images/guides/road-grading/image30.png)

INTERSECTIONS

1.  Create intersection, then select intersection point of alignments.

![](/images/guides/road-grading/image31.png)

2.  GENERAL

Intersection Name =

Intersection Marker Style= BEC_Intersection

Intersection Label Style= Standard

Intersection Corridor Type= Primary Road Crown Maintained

![](/images/guides/road-grading/image32.png)

3.  GEOMETRY DETAILS

1.  Intersecting Alignments= (make sure correct alignments are shown)

![](/images/guides/road-grading/image33.png)

2.  Offset and Curb Returns🡪 OFFSET PARAMETERS

![](/images/guides/road-grading/image34.png)

3.  Offset and Curb Returns🡪 CURB RETURN PARAMETERS (make sure to go through all quadrants)

![](/images/guides/road-grading/image24.png)

![](/images/guides/road-grading/image19.png)

4.  Offset and Curb Return Profiles🡪 LANE SLOPE PARAMETERS

![](/images/guides/road-grading/image25.png)

5.  Offset and Curb Return Profiles🡪 CURB RETURN PROFILE PARAMETERS (all quadrants)

![](/images/guides/road-grading/image26.png)

![](/images/guides/road-grading/image17.png)

4.  CORRIDOR REGIONS

1.  Create corridors in the intersection area= (make sure correct alignments are shown)

1.  Be sure to ad to existing corridor
1.  Choose the correct Assembly for each region

![](/images/guides/road-grading/image28.png)

2.  Corridor Region Section Type

1.  Curb radius fillet = \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
1.  Primary Road Section = \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
1.  Primary Road Section- Daylight LEFT = \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
1.  Primary Road Section- Daylight RIGHT = \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
1.  Secondary Road Section = \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
1.  Secondary Road Section- Daylight LEFT = \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
1.  Secondary Road Section- Daylight RIGHT = \_\_\_\_\_\_\_\_\_\_\_\_\_\_\_\_
1.  Create Intersection
