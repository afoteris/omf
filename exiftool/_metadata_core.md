# METADATA CORE

## SELECTED TAGS FROM STANDARDS

### CIPA DC-010-2020

**Exif 2.32 metadata for XMP**

```
Native             | XMP-analog              | Notes
==============================================================================
ImageDescription   | dc:description          |
Model              | tiff:Model              |
Artist             | dc:creator              |
Copyright          | dc:rights               |
UserComment        | exif:UserComment        |
DateTimeOriginal   | exif:DateTimeOriginal   | No time zone in Exif, ISO 8601
OffsetTimeOriginal |                         |
FileSource         | exif:FileSource         | 0 = others
                                             | 1 = scanner of transparent type
                                             | 2 = scanner of reflex type
                                             | 3 = DSC
CameraOwnerName    | exifEX:CameraOwnerName  |
BodySerialNumber   | exifEX:BodySerialNumber |
```

### IPTC Photo Metadata Standard 2021.1

**IPTC Core schema 1.3**

```
Native                   | XMP-analog
==================================================
Copyright Notice         | dc:rights
Creator                  | dc:creator
Credit Line              | photoshop:Credit
Description              | dc:description
Keywords                 | dc:subject
Rights Usage Terms       | xmpRights:UsageTerms
Title                    | dc:title
```

**IPTC Extension schema 1.6**

```
Native                 | XMP-analog
==================================================
Copyright Owner        | plus:CopyrightOwner
  Copyright Owner Name |   plus:CopyrightOwnerName
Digital Image GUID     | Iptc4xmpExt:DigImageGUID
Image Creator          | plus:ImageCreator
  Image Creator Name   |   plus:ImageCreatorName
Licensor               | plus:Licensor
  Licensor Name        |   plus:LicensorName
```

### PLUS Version 1.2.3

```
Native                 | XMP-analog                | Notes
===========================================================================================================
Licensor               | plus:Licensor             |
  Licensor Name        |   plus:LicensorName       |
  Licensor Email       |   plus:LicensorEmail      |
  Licensor URL         |   plus:LicensorURL        |
Licensor Notes         | plus:LicensorNotes        |
Copyright Status       | plus:CopyrightStatus      | http://ns.useplus.org/ldf/vocab/CS-PRO (Protected)
                                                   | http://ns.useplus.org/ldf/vocab/CS-PUB (Public Domain)
                                                   | http://ns.useplus.org/ldf/vocab/CS-UNK (Unknown)
Creation Date          | photoshop:DateCreated     | Subset of ISO 8601 (For example: YYYY-MM-DD). https://www.w3.org/TR/NOTE-datetime
Copyright Owner        | plus:CopyrightOwner       |
  Copyright Owner Name |   plus:CopyrightOwnerName |
Image Creator          | plus:ImageCreator         |
  Image Creator Name   |   plus:ImageCreatorName   |
Other Image Info       | plus:OtherImageInfo       |
Other License Info     | plus:OtherLicenseInfo     |
```

### XMP

**XMP SPECIFICATION PART 1 (DATA MODEL, SERIALIZATION, AND CORE PROPERTIES. April 2012)**

```
Native                   | Notes
=================================
dc:creator               |
dc:description           |
dc:identifier            |
dc:rights                |
dc:subject               |
dc:title                 |
xmp:CreateDate           |
xmp:CreatorTool          |
xmp:Label                |
xmpRights:Marked         |
xmpRights:Owner          |
xmpRights:UsageTerms     |
xmpMM:DocumentID         |
xmpMM:OriginalDocumentID |
xmpMM:RenditionParams    |
```

**XMP SPECIFICATION PART 2 (ADDITIONAL PROPERTIES. August 2016)**

```
Native          | Notes
==================================================================
xmp:Nickname    |
xmpMM:VersionID | usually simply by incrementing integers 1, 2, 3…
crs:RawFileName |
```

## UNITED TAGS

It is enough to use child fields of metadata structures, *ExifTool* adds parent fields automatically.

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

pif (CAMERASERIALNUMBER) | EXIF     | bodyserialnumber         -->| exif:serialnumber
pif (CAMERASERIALNUMBER) | XMP      | exifex:bodyserialnumber  -->| xmp-exifex:serialnumber

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
authorship               | XMP      | Iptc4xmpCore:CiAdrCity   -->| xmp-iptccore:CreatorCity
authorship               | XMP      | Iptc4xmpCore:CiAdrCtry   -->| xmp-iptccore:CreatorCountry
authorship               | XMP      | Iptc4xmpCore:CiEmailWork -->| xmp-iptccore:CreatorWorkEmail
authorship               | XMP      | Iptc4xmpCore:CiTelWork   -->| xmp-iptccore:CreatorWorkTelephone
authorship               | XMP      | Iptc4xmpCore:CiAdrPcode  -->| xmp-iptccore:CreatorPostalCode
authorship               | XMP      | Iptc4xmpCore:CiAdrRegion -->| xmp-iptccore:CreatorRegion
authorship               | XMP      | Iptc4xmpCore:CiUrlWork   -->| xmp-iptccore:CreatorWorkUrl
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
device owner             | EXIF     | cameraownername          -->| exif:ownername
device owner             | XMP      | exifex:cameraownername   -->| xmp-exifex:ownername
-----------------------------------------------------------------------------------------------------
description              | XMP      | dc:description              | xmp-dc:description
description              | XMP      | dc:subject                  | xmp-dc:subject
description              | XMP      | dc:title                    | xmp-dc:title
-----------------------------------------------------------------------------------------------------
```
