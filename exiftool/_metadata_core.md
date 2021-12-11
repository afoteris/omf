# METADATA CORE

## SELECTED TAGS FROM STANDARDS

### EXIF 2.31

```
0x9003 | DateTimeOriginal (no time zone in Exif, ISO 8601) | exif:DateTimeOriginal
0x9011 | OffsetTimeOriginal                                | 
0x0110 | Model                                             | tiff:Model
0xA431 | BodySerialNumber                                  | exifEX:BodySerialNumber
0x9286 | UserComment                                       | exif:UserComment

0x013B | Artist (Tiff)                                     | dc:creator
0x8298 | Copyright (Tiff)                                  | dc:rights

0xA430 | CameraOwnerName                                   | exifEX:CameraOwnerName
```

### IPTC

**IPTC Photo Metadata Standard 2019.1 (IPTC Core 1.2)**

```
Copyright Notice       | dc:rights
Creator                | dc:creator
Creator’s Contact Info | Iptc4xmpCore:CreatorContactInfo
  Address              |   Iptc4xmpCore:CiAdrExtadr
  City                 |   Iptc4xmpCore:CiAdrCity
  Country              |   Iptc4xmpCore:CiAdrCtry
  Email address(es)    |   Iptc4xmpCore:CiEmailWork
  Phone number(s)      |   Iptc4xmpCore:CiTelWork
  Postal Code          |   Iptc4xmpCore:CiAdrPcode
  State/Province       |   Iptc4xmpCore:CiAdrRegion
  Web URL(s)           |   Iptc4xmpCore:CiUrlWork
Rights Usage Terms     | xmpRights:UsageTerms

Title                  | dc:title
Caption/Description    | dc:description
Keywords               | dc:subject
```

**IPTC Photo Metadata Standard 2019.1 (IPTC Extension 1.5)**

```
Copyright Owner        | plus:CopyrightOwner
  Copyright Owner Name |   plus:CopyrightOwnerName
Image Creator          | plus:ImageCreator
  Image Creator Name   |   plus:ImageCreatorName
Licensor               | plus:Licensor
  Licensor Name        |   plus:LicensorName

Digital Image GUID     | Iptc4xmpExt:DigImageGUID
```

### PLUS 1.2.2

```
Licensor               | plus:Licensor
  Licensor Name        |   plus:LicensorName
Copyright Status       | plus:CopyrightStatus
Copyright Owner        | plus:CopyrightOwner
  Copyright Owner Name |   plus:CopyrightOwnerName
Image Creator          | plus:ImageCreator
  Image Creator Name   |   plus:ImageCreatorName
Other Image Info       | plus:OtherImageInfo
```

### XMP

**XMP SPECIFICATION, PART 1 "DATA MODEL, SERIALIZATION, AND CORE PROPERTIES", April 2012**

```
xmp:CreateDate

xmp:CreatorTool

dc:creator
dc:rights
xmpRights:Marked
xmpRights:Owner
xmpRights:UsageTerms

dc:identifier
xmp:Identifier (Unordered array of Text)
xmp:Label

dc:title
dc:description
dc:subject
```

**XMP SPECIFICATION, PART 2 "ADDITIONAL PROPERTIES", August 2016**

```
crs:RawFileName

xmp:Nickname
```

## UNITED TAGS

```
Maintained Data          | Standard | Standard Tag                | ExifTool Tag
=====================================================================================================
pif (DATE_TIME_TIMEZONE) | XMP      | exif:datetimeoriginal       | xmp-exif:datetimeoriginal
pif (DATE_TIME_TIMEZONE) | XMP      | xmp:createdate              | xmp-xmp:createdate
pif (DATE_TIME)          | EXIF     | datetimeoriginal            | exif:datetimeoriginal
pif (TIMEZONE)           | EXIF     | offsettimeoriginal          | exif:offsettimeoriginal

pif (CAMERAMODEL)        | EXIF     | model                       | exif:model
pif (CAMERAMODEL)        | XMP      | tiff:model                  | xmp-tiff:model
pif (CAMERAMODEL)        | XMP      | xmp:creatortool             | xmp-xmp:creatortool

pif (CAMERASERIALNUMBER) | EXIF     | bodyserialnumber ---------->| exif:serialnumber
pif (CAMERASERIALNUMBER) | XMP      | exifex:bodyserialnumber --->| xmp-exifex:serialnumber

pif (FRAMEDESIGNATION)   | XMP      | crs:rawfilename             | xmp-crs:rawfilename
pif (FRAMEDESIGNATION)   | XMP      | xmp:nickname                | xmp-xmp:nickname

pif (ADDITION)           | EXIF     | usercomment                 | exif:usercomment
pif (ADDITION)           | XMP      | exif:usercomment            | xmp-exif:usercomment

pif (Photo name)         | XMP      | dc:identifier               | xmp-dc:identifier
pif (Photo name)         | XMP      | iptc4xmpext:digimageguid -->| xmp-iptcExt:digitalimageguid
pif (Photo name)         | XMP      | xmp:identifier              | xmp-xmp:identifier
pif (Photo name)         | XMP      | xmp:label                   | xmp-xmp:label
-----------------------------------------------------------------------------------------------------
authorship               | EXIF     | artist                      | exif:artist
authorship               | XMP      | dc:creator                  | xmp-dc:creator
authorship               | XMP      | plus:imagecreatorname       | xmp-plus:imagecreatorname
authorship               | XMP      | Iptc4xmpCore:CiAdrExtadr -->| xmp-iptccore:CreatorAddress      
authorship               | XMP      | Iptc4xmpCore:CiAdrCity ---->| xmp-iptccore:CreatorCity         
authorship               | XMP      | Iptc4xmpCore:CiAdrCtry ---->| xmp-iptccore:CreatorCountry      
authorship               | XMP      | Iptc4xmpCore:CiEmailWork -->| xmp-iptccore:CreatorWorkEmail    
authorship               | XMP      | Iptc4xmpCore:CiTelWork ---->| xmp-iptccore:CreatorWorkTelephone
authorship               | XMP      | Iptc4xmpCore:CiAdrPcode --->| xmp-iptccore:CreatorPostalCode   
authorship               | XMP      | Iptc4xmpCore:CiAdrRegion -->| xmp-iptccore:CreatorRegion       
authorship               | XMP      | Iptc4xmpCore:CiUrlWork ---->| xmp-iptccore:CreatorWorkUrl      
-----------------------------------------------------------------------------------------------------
copyright                | EXIF     | copyright                   | exif:copyright
copyright                | XMP      | dc:rights                   | xmp-dc:rights
copyright                | XMP      | plus:copyrightownername     | xmp-plus:copyrightownername
copyright                | XMP      | plus:licensorname           | xmp-plus:licensorname
copyright                | XMP      | xmprights:owner             | xmp-xmprights:owner
copyright                | XMP      | xmprights:marked            | xmp-xmprights:marked
copyright                | XMP      | plus:copyrightstatus        | xmp-plus:copyrightstatus
copyright                | XMP      | plus:otherimageinfo         | xmp-plus:otherimageinfo
copyright                | XMP      | xmprights:usageterms        | xmp-xmprights:usageterms
-----------------------------------------------------------------------------------------------------
device owner             | EXIF     | cameraownername ----------->| exif:ownername
device owner             | XMP      | exifex:cameraownername ---->| xmp-exifex:ownername
-----------------------------------------------------------------------------------------------------
description              | XMP      | dc:description              | xmp-dc:description
description              | XMP      | dc:subject                  | xmp-dc:subject
description              | XMP      | dc:title                    | xmp-dc:title
-----------------------------------------------------------------------------------------------------
```
