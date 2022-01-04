# Lightshot

## Adding metadata (Andrei Korzhyts)

```
exiftool -progress: -progress -P -EXIF:Copyright="Andrei Korzhyts" "-EXIF:DateTimeOriginal<FILE:FileCreateDate" "-EXIF:OffsetTimeOriginal<FILE:FileCreateDate" -EXIF:Software="Lightshot" "-IPTC:ObjectName<Filename" "-XMP:OriginalFileName<Filename" -ext png .
```

## Adding metadata (Elena Abrazhevich)

```
exiftool -progress: -progress -P -EXIF:Copyright="Elena Abrazhevich" "-EXIF:DateTimeOriginal<FILE:FileCreateDate" "-EXIF:OffsetTimeOriginal<FILE:FileCreateDate" -EXIF:Software="Lightshot" "-IPTC:ObjectName<Filename" "-XMP:OriginalFileName<Filename" -ext png .
```

## YYYY\YYYYMMDD\YYYYMMDD_HHMMSS_ORIGINALNAME.ext

```
exiftool -progress: -progress -d "%Y\%Y%m%d\%Y%m%d_%H%M%S" "-FileName<${DateTimeOriginal}_${ObjectName}" -ext png .
```

## YYYY\YYYYMMDD\YYYYMMDD_HHMMSS_TIMEZONE_SOFTWARE_ORIGINALNAME.ext

```
exiftool -progress: -progress -d "%Y\%Y%m%d\%Y%m%d_%H%M%S" "-FileName<${DateTimeOriginal}_${OffsetTimeOriginal;s/\+/f/;s/-/b/;s/://}_${Software}_${ObjectName}" -ext png .
```
