# Miscellaneous

*Extracting of keywords*
```
exiftool -progress: -progress -charset filename="" -XMP-dc:Subject -b -sep ", " -sep "\n" . > keywords.txt
```

*Operations with originals*
```
exiftool -progress: -progress -restore_original -ext cr2 .
exiftool -progress: -progress -delete_original! -ext cr2 .
exiftool -progress: -progress "-filename<${filename;s/_original$//}" *_original
```

*File distribution by folders*
```
exiftool -progress: -progress -charset filename="" -d "%Y/%Y%m%d" "-FileName<${exif:datetimeoriginal}/%f.%e" .
```

*Extracting of tags value to text files*
```
exiftool -progress: -progress -w %f_%e.txt -G -a -s -sort -ext cr2 .
exiftool -progress: -progress -w %f_%e.html -h -G -a -s -sort -ext cr2 .
```

*Restoring of RAW-filename*
```
exiftool -progress: -progress -charset filename="" -G -s -a -f -colorspace -xmp-crs:rawfilename -xmp-xmp:nickname -makernotes:fileindex -ext cr2 .

exiftool -progress: -progress -charset filename="" "-filename<AdobeRGB/${filename}" -if "$MakerNotes:ColorSpace eq 'Adobe RGB'" -ext cr2 .
exiftool -progress: -progress -charset filename="" "-filename<sRGB/${filename}" -if "$MakerNotes:ColorSpace eq 'sRGB'" -ext cr2 .

exiftool -progress: -progress -charset filename="" -overwrite_original "-xmp-crs:rawfilename<_MG_${Composite:FileNumber;s/^.*-//}.CR2" "-xmp-xmp:nickname<_MG_${Composite:FileNumber;s/^.*-//}.CR2" -if "$MakerNotes:ColorSpace eq 'Adobe RGB'" -ext cr2 .
exiftool -progress: -progress -charset filename="" -overwrite_original "-xmp-crs:rawfilename<IMG_${Composite:FileNumber;s/^.*-//}.CR2" "-xmp-xmp:nickname<IMG_${Composite:FileNumber;s/^.*-//}.CR2" -if "$MakerNotes:ColorSpace eq 'sRGB'" -ext cr2 .
```

*Renaming of EIP-files*
```
exiftool -progress: -progress -charset filename="" -d "%Y%m%d_%H%M%S" -tagsfromfile %d%-.4f.cr2 "-FileName<${exif:datetimeoriginal}_${exif:offsettimeoriginal;s/\+/f/;s/-/b/;s/://}_${exif:model;s/ //g}_${exif:serialnumber}_${xmp-crs:rawfilename}.%le" -ext comask -ext cos .
```
20190422_134454_f0300_CanonEOS600D_163066096287_IMG_0041.eip
```
exiftool -progress: -progress "-filename<${filename;s/^(\d{4}).*/$1/}/${filename;s/^(\d{8}).*/$1/}/%f.%e" -ext eip .
```
