---
id: 17
title: 'Troubleshooting'
date: 2021-04-10
---

If you are getting the following dialog box when you start Civil 3D about AutoCAD Raster Design, it will keep happening every time you open it.

![](/images/standards/image8.png)

To get it to stop you will need to close Civil 3D and then open up AutoCAD Map 3D 2016 – English. Once that is open you can close it and the dialog box should now not appear when you open Civil 3D.

## Drawing Maintenance

It is recommended that periodically the user use the Overkill, Audit and Purge commands to “clean up drawings” and help prevent fatal errors from occurring.

### Purge

`PURGE` will remove unused layers from the drawing, including those initially present in the Template. It is recommended to only use Purge after design work is substantially complete or there is an issue with the drawing. If you have purged the drawing and would like to get items from the template back into the drawing you can use the Design Center (command `DC`). Create a new drawing from the template and then drag and drop items from the design center into your drawing.

If you are trying to get rid of layers and notice that layers that aren’t used aren’t able to be purged it’s because they are embedded in Civil 3D styles and labels. To purge Civil 3D styles select the “Purge Styles” button on the far right of the “Manage” ribbon. This will need to be repeated multiple times in order to purge all the unused Civil 3D styles and labels. You then should be able to rerun the regular purge command to get rid of those layers.

### Audit

The audit command will parse and detect errors within a drawing. Type `audit` then the `y` flag to allow AutoCAD to fix any errors detected. It is recommended to audit drawings regularly to avoid error build-up.

### Overkill

The overkill command removes overlapping or double linework in a drawing. While not as vital to drawing maintenance as the `purge` and `audit` commands, it is still useful.

### Recover

AutoCAD is notoriously unstable at times. In the event a drawing crashes the drawing recovery will usually automatically load when you restart Civil 3D. If it doesn’t, the user should use the `DRAWINGRECOVERY` command to find previous versions of the drawing that may be more stable. The list is in order of the date last saved with the newest file on top. This includes the original drawing, autosave files, .bak files and recovery files.
