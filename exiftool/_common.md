# Common

Tag names are presented according to *ExifTool*.

## Conventional notation

```
--> — tags for which ExifTool uses a different name.
*   — metadata coinciding with necessary standard metadata.
**  — suitable native metadata.
->  — existing value is used.
?   — metadata that may be useful in the future.
```

## Related links

```
XMP  — https://www.adobe.com/devnet/xmp.html
       https://github.com/adobe/xmp-docs/tree/master/XMPSpecifications
EXIF — https://www.cipa.jp/e/std/std-sec.html
IPTC — https://iptc.org/std/photometadata/specification/IPTC-PhotoMetadata
PLUS — http://ns.useplus.org/go.ashx
DC   — https://www.dublincore.org/specifications/dublin-core
TIFF — https://www.adobe.io/open/standards/TIFF.html
CV   — http://www.controlledvocabulary.com
```

## QUESTIONABLE TAGS

```
xmp:CreateDate
TIFF legacy
```

## Preparatory provisions for the ExifTool using

On Windows *cmd.exe* should be used, not *PowerShell*.

Code page of *cmd.exe* should be *65001* (UTF-8).
```
chcp 65001
```

If UTF-8 is used on Windows level ("*Use Unicode UTF-8 for worldwide language support.*"), don't use `-charset filename=""` & `-charset Cyrillic` in commands.

## Extracting native metadata

```
exiftool -G -s -sort -a -e FILENAME
```

## Reference Images with all current IPTC Photo Metadata

```
https://www.iptc.org/std/photometadata/examples/IPTC-PhotometadataRef-Std2021.1.jpg
```
