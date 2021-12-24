# Common

Tag names are presented according to *ExifTool*.

## Reference Images with all current IPTC Photo Metadata

```
https://www.iptc.org/std/photometadata/examples/IPTC-PhotometadataRef-Std2021.1.jpg
```

## Extracting native metadata

```
exiftool -G -s -sort -a -e FILENAME
```

## Conventional notation

```
--> — tags for which ExifTool uses a different name.
*   — metadata coinciding with necessary standard metadata.
**  — suitable native metadata.
->  — existing value is used.
?   — metadata that may be useful in the future.
```

## Preparation

On Windows *cmd.exe* should be used, not *PowerShell*.

Code page of *cmd.exe* should be *65001* (UTF-8).
```
chcp 65001
```

If UTF-8 is used on Windows level ("*Use Unicode UTF-8 for worldwide language support.*"), don't use `-charset filename=""` & `-charset Cyrillic` in commands.
