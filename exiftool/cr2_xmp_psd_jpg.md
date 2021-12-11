# CR2 XMP PSD JPG

## DATE_TIME_TIMEZONE_CAMERAMODEL_CAMERASERIALNUMBER_FRAMEDESIGNATION.EXTENSION

```
exiftool -progress: -progress -charset filename="" -d "%Y%m%d_%H%M%S" -tagsfromfile %d%f.cr2 "-FileName<${exif:datetimeoriginal}_${exif:offsettimeoriginal;s/\+/f/;s/-/b/;s/://}_${exif:model;s/ //g}_${exif:serialnumber}_${xmp-crs:rawfilename;s/\..*$//}.%le" --ext cr2 .

exiftool -progress: -progress -charset filename="" -d "%Y%m%d_%H%M%S" -tagsfromfile %d%-.3f.CR2 "-FileName<tempadd_/${exif:datetimeoriginal}_${exif:offsettimeoriginal;s/\+/f/;s/-/b/;s/://}_${exif:model;s/ //g}_${exif:serialnumber}_${xmp-crs:rawfilename;s/\..*$//}_tempadd_%c.%le" --ext cr2 .

%-.3f -> %-.4f if nessesary
move to tempadd_ folder

exiftool -progress: -progress -charset filename="" "-FileName<${FileName;s/tempadd_.*//}${exif:usercomment}.%le" --ext cr2 .
```

## Adding existing ADDITION to a metadata

```
exiftool -progress: -progress -charset filename=""
"-exif:usercomment<v${filename;s/.*_(\d+)\..*/$1/ or $_ = undef}"
"-xmp-exif:usercomment<v${filename;s/.*_(\d+)\..*/$1/ or $_ = undef}"
--ext cr2 .
```
```
exiftool -progress: -progress -charset filename="" "-exif:usercomment<v${filename;s/.*_(\d+)\..*/$1/ or $_ = undef}" "-xmp-exif:usercomment<v${filename;s/.*_(\d+)\..*/$1/ or $_ = undef}" --ext cr2 .
```

*Cheking*
```
exiftool -charset filename="" -G0:1 -s -a -f
-exif:usercomment
-xmp-exif:usercomment
--ext cr2 .
```
```
exiftool -charset filename="" -G0:1 -s -a -f -exif:usercomment -xmp-exif:usercomment --ext cr2 .
```

## Metadata into xmp, psd, jpg

*Don't touch*

-xmp-xmp:creatortool
-exif:usercomment
-xmp-exif:usercomment
-makernotes:directoryindex
-makernotes:fileindex

*Moving of metadata from original RAW (%d%f, %d%-.3f…)*

```
exiftool -progress: -progress -charset filename=""
-tagsfromfile %d%f.cr2
"-exif:datetimeoriginal<${exif:datetimeoriginal}"
"-xmp-exif:datetimeoriginal<${xmp-exif:datetimeoriginal}"
"-xmp-xmp:createdate<${xmp-xmp:createdate}"
"-exif:offsettimeoriginal<${exif:offsettimeoriginal}"
"-exif:model<${exif:model}"
"-xmp-tiff:model<${xmp-tiff:model}"
"-exif:serialnumber<${exif:serialnumber}"
"-xmp-exifex:serialnumber<${xmp-exifex:serialnumber}"
"-xmp-crs:rawfilename<${xmp-crs:rawfilename}"
"-xmp-xmp:nickname<${xmp-xmp:nickname}"
--ext cr2 .
```
```
exiftool -progress: -progress -charset filename="" -tagsfromfile %d%f.cr2 "-exif:datetimeoriginal<${exif:datetimeoriginal}" "-xmp-exif:datetimeoriginal<${xmp-exif:datetimeoriginal}" "-xmp-xmp:createdate<${xmp-xmp:createdate}" "-exif:offsettimeoriginal<${exif:offsettimeoriginal}" "-exif:model<${exif:model}" "-xmp-tiff:model<${xmp-tiff:model}" "-exif:serialnumber<${exif:serialnumber}" "-xmp-exifex:serialnumber<${xmp-exifex:serialnumber}" "-xmp-crs:rawfilename<${xmp-crs:rawfilename}" "-xmp-xmp:nickname<${xmp-xmp:nickname}" --ext cr2 .
```

*Addition remaining metadata*

see canon_eos_600d.md
