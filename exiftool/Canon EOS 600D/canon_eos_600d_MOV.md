# Canon EOS 600D. MOV

## Adding date/time to file name

```
exiftool -progress: -progress -charset filename="" -d "%Y%m%d" "-FileName<${file:filecreatedate}_%f.%e" .
```

## Adding XMP-metadata to MOV-files

### XMP-tags

```
Standard Tag   | ExifTool Tag
===================================
dc:description | xmp-dc:description
dc:subject     | xmp-dc:subject
dc:title       | xmp-dc:title
```

### ExifTool command

- you need to add a filename at the end.

```
exiftool -progress: -progress -charset filename="" -charset exif=UTF8
-xmp-dc:title="title"
-xmp-dc:description="description"
-xmp-dc:subject="keywords"
```
