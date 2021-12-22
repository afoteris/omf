# Common

Tag names are presented according to *ExifTool*.

## Conventional notation

```
*  — metadata coinciding with necessary standard metadata.
** — suitable native metadata.
-> — existing value is used.
?  — metadata that may be useful in the future.
```

## Native metadata

```
exiftool -G -s -sort -a -e FILENAME
```

### Preparation

On Windows *cmd.exe* should be used, not *PowerShell*.

Code page of *cmd.exe* should be *65001* (UTF-8).
```
chcp 65001
```

If UTF-8 is used on Windows level ("*Use Unicode UTF-8 for worldwide language support.*"), don't use `-charset filename=""` & `-charset Cyrillic` in commands.
