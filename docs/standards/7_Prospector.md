---
id: 7
title: 'Prospector'
date: 2021-04-10
---

The Prospector is a tool used for managing your Civil 3D features in a project. It is activated by clicking the first small icon in the Home tab of the main ribbon. Take the time to get familiar with all the features listed in the prospector as you will be using them on a regular basis during design tasks.

## Points

Point files are typically generated as part of survey activities. They can be incorporated into surfaces for generation of contours and TIN lines. The process for importing and exporting points is outlined in Chapter 3 of MACC3D.

Every point has several identifying parameters. Typically survey incorporates points in the following manner, in order:

- P: Point#
- N: Northing
- E: Easting
- Z: Vertical Position
- D: Description.

When points are imported in the PNEZD format with the proper descriptor, styles for points and symbols will automatically associate.

### Point Groups

In more complex projects, Point Groups can be used to sort point data by selection set, numeric inclusion/exclusion, elevation, etc. A Point Group is required to generate a surface from survey data.

### Point Clouds

The survey department does not typically employ point clouds when preparing drawings.

## Surfaces

Surfaces are the most commonly used Civil 3D feature and allow the user to generate a 3-Dimensional map of the site being designed. A surface can be any combination of points, feature lines, contours, and corridors. The Prospector is used to manage all of the features that are part of the Surface data. Refer to Chapter 4 of the MACC3D manual for more information about generating surfaces.

When creating a surface, in most cases select either EXISTING (1’ and 5’) or PROPOSED (1’ and 5’) as the surface style. For special cases, 2’ and 10’ contour styles are available, as is a style for generating cut/full maps from volume surfaces.

## Sites

Sites is a tool for subdividing a parcel of land into smaller lots. Chapter 5 of the MATCC3D has more information on creating and using sites.

## Alignments

Alignments are used in roadway and utility projects to delineate the path a feature takes through the site. More information about creating and manipulating alignments is available in Chapter 6 of the MACC3D.

Many projects have multiple alignments. It’s important to develop a naming convention that allows the users to identify individual alignments efficiently. Note that when a new alignment is created, it is automatically placed on a layer specific to that alignment name. If the alignment is renamed at any point, that layer name will need to be updated manually.

Always select Alignment as the style when creating a new alignment. The No Show alignment style is available for those cases when other features obscured by an alignment need to be seen.

## Catchments

Catchments is a tool provided by Civil 3D to aid in drainage analysis. Typically, the company employs other methods for this analysis. No styles are available for this feature.

## Pipe Networks

Pipe Networks allows the user to insert dynamic storm, sanitary, or water pipes into a drawing. The creation of Pipe Networks is covered in Chapter 13 of the MACC3D. Typically, gravity pipes are designed using this tool and pressure pipes are designed by hand. In subsequent editions of Civil 3D, a pressure pipe design tool is more effective.

Styles are available for storm and sanitary lines and their appurtenances. Take care in selecting the appropriate style for the feature you are designing.

## Corridors

Corridors are, generally speaking, the most complicated of all the Civil 3D features, requiring alignments, profile, and assemblies to generate correctly. Not all sites are good candidates for the use of Corridors as a design tool. Careful selection during the initial design phases is advised. Chapters 9 and 10 in the MACC3D manual cover the creation of Corridors and should be read thoroughly before attempting any project related work.

## Assemblies

Assemblies are one of the components for generating corridors. Civil 3D provides dozens of assemblies and sub-assemblies. They can be managed from the Prospector screen for quick reference. As with other Civil 3D features, accurate and specific naming conventions should be employed. Chapter 8 of the MACC3D covers creation of Assemblies and Sub-Assemblies.

## Intersections

Corridors can be linked via the Intersections tool. More info about creating intersections is available in Chapter 10 of the MACC3D.

## Survey

The Survey Department does not employ the Prospector Survey functions at this time.

## View Frame Groups

This tool is used when creating plan and profile sheets. The procedure for generating view frames is described later on.

## Data Shortcuts

Project Data Shortcuts can be managed from this section of the Prospector. The process for creating data shortcuts is described in a later section of this manual.
