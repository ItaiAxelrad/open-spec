---
sidebar_position: 9
title: 'Design Drawings'
date: 2021-04-10
---

Design or base drawings are to externally referenced into production sheet drawings as needed to execute annotation and plan production.

## Titleblock

All title blocks for use on projects are to be found in the Tool Palettes Drawing Setup Menu. They are sorted by size of the plan sheet you are creating. This drawing is referenced into each production drawing. To set up a title block for your project, follow the steps below:

1. Open a new drawing
2. Open Tool Pallets (`Ctrl + 3`)
3. From the Drawing Setup menu, drag the appropriate sized title block into the drawing. Place it at the origin (0,0,0) in model space.
4. From the file menu, save this drawing in the project Drawings folder with the project number in the title followed by drawing size and “TITLEBLOCK “. For example: “2931a-24x36 TITLEBLOCK”
5. The title blocks contain editable attributes for all project title and client information. Click on the text and edit as appropriate for the current project.
6. The company logo in the title block has a pulldown that allows the user to select which office the drawing is originating from.
7. When the text and logo are updated, Save and Close this drawing.

## Survey Base

This drawing will contain only data created by the Survey Division. It should be created using the template and adhere to CAD standards as set forth in this manual.

This file is for the surveyors to create the existing site linework, utilities, and the existing surface. Survey data such as survey points, survey figures, feature lines and any other information needed to create the existing surface is located here. A copy of the original Survey Base shall be saved in the Survey folder found in the main project file.

This base plan created by the Survey Department or a third party surveyor will typically dictate the origin point for all other drawings in the project. Once the survey drawing has been inserted DO NOT MOVE OR ROTATE THE XREF. The xref should be placed on the appropriate layer with the XREF- prefix which should be locked and will prevent the xref from being modified.

No production drawings shall be created in this file. This file shall be as clean as possible since it is used as the existing site base drawing.

The existing surface is created as a data shortcut from this drawing.

- XXXX EG Surface

## Existing Base

This drawing should contain any data about existing features on a particular project not specifically created by the Survey Department. Sources for this data may include third party surveys, GIS data, sketches from aerial or other photographic methods, or from observations made in the field by an engineer or other designer. Wherever possible, all objects in this drawing should adhere, or be converted to, company standards for existing features.

## Site Base

This drawing will contain any proposed design features for a project. For larger projects, multiple proposed bases may be required for site design, utility design, roadway, etc. It is the responsibility of the designer to name each drawing appropriately with the type of proposed features present in the drawing.

Generaly, this is the horizontal layout of the project that is referenced into the different drawings associated with the project. This file does not contain any vertical design information, survey data or civil 3D objects. Only 2D polylines set at an elevation of zero (0) should be in the drawing. Exhibits, construction documents, etc. should not be created in this drawing. No references, images, or PDFs shall be attached to this drawing. Attaching xrefs make the file size large and will slow down drawings that use the Site base.

## Civil Base

This file is for proposed civil 3D design objects such as the proposed surface, alignments, profiles and corridors. Civil 3D objects should be data shortcut so they can be used in production drawings and exhibits. Below is the naming convention to be used for Surfaces, Alignments & Profiles & corridors. Including the project number to the naming conventions not only lets you know what project the object is for but also helps when multiple project numbers use the same data short (For example, a project has multiple phases and each one is a different project number).

Surface Names

- XXXX FG Surface
- XXXX Corridor Surface
- XXXX Combo-Description (say what is combined)

Alignments

- XXXX Road Name
  1. 3400 Road 01
  2. 3400 Road 02
  3. 3400 Road 02 Cul-De-Sac

Corridors

- XXX Project Name Corridor
  1. 3400 Main Street Corridor

Profiles

- Use templates naming standards

## Pipe Network Base

Pipe networks should be in a separate file depending on the size of the projects. Large projects or projects with a large number of pipes will have its own drawing. Multiple people can work on a project if the drawings are separated and the files not cluttered with other design information. If a project is small or has a very limited number of pipes, the pipe networks can be in the Civil Design Base. Only one pipe network shall be created for each utility (even when the pipes are separated) and named using the naming convention below. Naming the pipe network with the job number helps when multiple projects are sharing the same information.

- XXXX Storm
- XXXX Sanitary

## 3rd Party Drawings

When referencing a drawing from a third party, save that drawing with the date it was received in the title in a sub-folder of the project Drawings folder titled “3rd Party”. Follow the steps above to insert this into the working drawing. Additional coordination with the source of the drawing may be required to align and scale correctly. If any modifications to a 3rd party drawing are required as part of this coordination, save a copy of the drawing with the date and REVISED in the title in the “3rd Party” folder.
