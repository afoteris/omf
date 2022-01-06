use strict;
use warnings;

my $title = "JPG distribution by folders";

system("chcp 65001");
system("echo $title");

system(qq(exiftool -progress: -progress -charset filename="" -d "%Y/%Y%m%d" "-FileName<\${exif:datetimeoriginal}/%f.%e" -ext jpg .));

system("pause");
