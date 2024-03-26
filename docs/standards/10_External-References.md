---
id: 10
title: 'External References'
date: 2021-04-12
---

External Reference (x-ref) is the method AutoCAD uses to insert other drawings into your current working drawing so that any updates to that drawing will be reflected immediately in yours. This makes it possible for multiple users to work in the same project at the same time. Whenever a drawing you have x-referenced is updated during a work session you will be notified by AutoCAD.

Typically, each project will have a series of base drawings that are x-referenced into the drawing that includes the production sheets. There are three main types of base drawings:

- Survey Base
- Existing Base
- Site Base

## Insert an External Reference

1. Make “xref” the active layer
2. Command line: `XREF` (or `XR`)
3. Click on the DWG icon in the upper left hand corner.
4. Browse for the drawing you wish to insert and select. In most cases you will insert the drawing at 1 to 1 scale and at the origin. Toggle on “Overlay” and Toggle off “Scale: Specify Onscreen” and “Insertion Point: Specify Onscreen”.
5. Click OK.

![](/img/standards/image20.png)

Inserting x-refs that are not scaled or on the same origin or rotation as your drawing can be difficult. In this case you will typically Toggle on “Insertion Point: Specify Onscreen” and place the xref as close as possible to its correct location. When the xref has been inserted, it can be manipulated using the MOVE `M`, ROTATE `RO`, and SCALE `SC` commands to align it correctly.

Typically, Architectural drawings will need to be scaled at a factor of 1/12.
