**Saving name into metadata**

```
exiftool -progress: -progress -charset filename="" "-xmp-dc:title<${FileName;s/\..*$//}" -ext cr2 .
```
