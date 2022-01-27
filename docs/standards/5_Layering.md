---
title: 'Layering'
eleventyNavigation:
  key: Layering
  order: 5
date: 2021-04-10
---

## Layering Convention

The foundation of the layering convention is from the industry standard from the U.S. National CAD Standards (NCS). These standards have been developed by AIA, the National Institute of Building Sciences, the Construction Standards Institute, CADD/GIS Tech Center for the Corps of Engineers. The A&E industry generally follows this standard.

It is important to place all features in a drawing on the appropriate layers to allow for manipulation of those features without conflict. It will also make transmittals to third parties more efficient.

### Hierarchy of Data Fields

The layer name format is organized as a hierarchy. This arrangement allows users to select from a number of options for naming layers according to the level of detailed information desired. Layer names consist of distinct data fields separated from one another by dashes. A detailed list of abbreviations, or field codes, is prescribed to define the content of layers. Most field codes are mnemonic English abbreviations of construction terminology that are easy to remember.

There are four defined layer name data fields:

- Discipline Designator
- Major Group
- Minor Groups
- Status

The Discipline Designator and Major Group fields are mandatory. The Minor Group and Status fields are optional. Each data field is separated from adjacent fields by a dash ("-") for clarity.

![National CAD Standards](/img/standards/image5.png)

#### Discipline Designator, Level 1

The Discipline Designator denotes the category of subject matter contained on the specified layer. The Discipline Designator is a two-character field. The first character is the discipline character, and the second character is an optional modifier.

![Level 1 Discipline](/img/standards/image16.png)

#### Major Group

The major group is a four-character field that identifies a major building system. The prescribed Major Group field codes (four-character abbreviations) shown on the Layer List are logically grouped with specific discipline designators. However, any Major Group may be combined with any prescribed Discipline Designator, provided that the definition of the Major Group remains unchanged. Therefore, any reasonable combination of the prescribed Discipline Designators and Major Groups is permitted

#### Minor Group

This is an optional, four-character field to further define the Major Groups. For example, A-WALL-FULL denotes Architectural, Wall, Full-height. A second minor group may be used for still further delineation of the data contained on a layer. For example, A-WALLFULL TEXT indicates Architectural, Wall, Full-height, Text. The prescribed Minor Group field codes (four-character abbreviations) shown on the Layer List are logically grouped with specific Major Groups. However, any Minor Group may be used to modify any Major Group, provided that the definition of the Minor Group remains unchanged. Therefore, any reasonable combination of the prescribed Major and Minor Groups is permitted.

#### Status / Phase

The status field is a single-character field that distinguishes the data contained on the layer according to the status of the work or the construction phase. The prescribed field codes for this field are as follows:

- D - Existing to Demolish
- E - Existing
- F - Future Items
- N - New Items
- T - Temporary Items

#### Additional Layers

In addition to the standard layers described in the following pages, CIVIL 3D included 2 other layers with special features or functions:

| Layer | Color | Description |
| ----- | ----- | ----------- |
| 0 | white (7) | Has special characteristics when creating a block. If an Entity in on layer 0 when a block is created, that entity will assume the characteristics of whatever layer the block is inserted on. If the block is exploded, the entity will return to layer 0. |
| Defpoints | white (7) | Contains definition points of associative dimensions. This layer will not plot even when on and thawed. This feature makes it the ideal layer for `MVIEW` windows and construction lines that you want to see on the screen but do not want to plot. |

#### Layer Examples

This is already setup from the template. C will be the Discipline Designator. Next Characters (Varies) – relates to plan information

- C - Civil
- G - Grading
- S - Site
- U - Utility
- EC - Erosion Control

![Layer spreadsheet](/img/standards/image17.png)

The Template drawing has the majority of the layers already created that you will use on any project. These layers have the properties set so that they will appear as the correct type and weight when produced on company plotters or printers. Each layer has a description that will clearly indicate what features are appropriate for that layer. A list of the Template layers can be found in the Appendices. DO NOT alter the properties of any of these layers in your drawing. In the event that there is no Template layer appropriate for a feature you need to enter, you will need to create a layer based on the format in the following section.

### Layer Management

Proper layer management allows the user to have more control over drawing entities when producing sheets for publication. Typically all features to be included in any sheet will be turned on in model space and then manipulated through the viewport using VP Freeze to freeze a layer.

To turn off/freeze all survey points, a layer filter has been added to the layer properties manager. Select the “Hide Survey Points” filter located on the left side of the window. All layers associated with the points will be filtered so they can be turned off or frozen in the drawing.

![Layer Manager](/img/standards/image12.png)
