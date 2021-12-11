# ffmpeg

## Commands

- if you run that command (for %i in…) in a batch file you need to double the % signs.

### Video to images

???

### .mp4 (1280×720, 30, 422, 220)

``
for %i in (*.mp4) do ffmpeg -i "%i" -c:v dnxhd -vf "scale=1280:720,fps=30000/1001,format=yuv422p" -b:v 220M -c:a pcm_s16le "%i.mov"
``

### HUAWEI G610-U20

```
for %i in (*.3gp) do ffmpeg -i "%i" -c:v dnxhd -vf "scale=1280:720,fps=30000/1001,format=yuv422p" -b:v 220M -c:a pcm_s16le "%i.mov"
for %i in (*.3gp) do ffmpeg -i "%i" -c:v dnxhd -vf "transpose=2,transpose=2,scale=1280:720,fps=30000/1001,format=yuv422p" -b:v 220M -c:a pcm_s16le "%i.mov"
```

### Canon EOS 600D

```
for %i in (*.mov) do ffmpeg -i "%i" -c:v dnxhd -vf "scale=1920:1080,fps=30000/1001,format=yuv422p" -b:v 440M -c:a pcm_s16le "%i.mov"
for %i in (*.mov) do ffmpeg -i "%i" -c:v dnxhd -vf "transpose=2,transpose=2,scale=1920:1080,fps=30000/1001,format=yuv422p" -b:v 440M -c:a pcm_s16le "%i.mov"
```
```
for %i in (*.mov) do ffmpeg -i "%i" -c:v dnxhd -vf "scale=1280:720,fps=60000/1001,format=yuv422p" -b:v 220M -c:a pcm_s16le "%i.mov"
for %i in (*.mov) do ffmpeg -i "%i" -c:v dnxhd -vf "transpose=2,transpose=2,scale=1280:720,fps=60000/1001,format=yuv422p" -b:v 220M -c:a pcm_s16le "%i.mov"
```

## Valid DNxHD profiles

### 1920x1080

```
1920x1080p; 880Mbps; yuv444p10, gbrp10
1920x1080p; 730Mbps; yuv444p10, gbrp10
1920x1080p; 440Mbps; yuv444p10, gbrp10
1920x1080p; 390Mbps; yuv444p10, gbrp10
1920x1080p; 350Mbps; yuv444p10, gbrp10
```
```
1920x1080p; 440Mbps; yuv422p10
1920x1080p; 365Mbps; yuv422p10
1920x1080p; 185Mbps; yuv422p10
1920x1080p; 175Mbps; yuv422p10
```
```
1920x1080p; 440Mbps; yuv422p <-- Canon EOS 600D
1920x1080p; 365Mbps; yuv422p
1920x1080p; 290Mbps; yuv422p
1920x1080p; 240Mbps; yuv422p
1920x1080p; 220Mbps; yuv422p
1920x1080p; 185Mbps; yuv422p
1920x1080p; 175Mbps; yuv422p
1920x1080p; 145Mbps; yuv422p
1920x1080p; 120Mbps; yuv422p
1920x1080p; 115Mbps; yuv422p
1920x1080p;  90Mbps; yuv422p
1920x1080p;  75Mbps; yuv422p
1920x1080p;  45Mbps; yuv422p
1920x1080p;  36Mbps; yuv422p
```
```
1920x1080i; 220Mbps; yuv422p10
1920x1080i; 185Mbps; yuv422p10
```
```
1920x1080i; 220Mbps; yuv422p
1920x1080i; 185Mbps; yuv422p
1920x1080i; 145Mbps; yuv422p
1920x1080i; 120Mbps; yuv422p
```

### 1280x720

```
1280x720p; 220Mbps; yuv422p10
1280x720p; 180Mbps; yuv422p10
1280x720p;  90Mbps; yuv422p10
```
```
1280x720p; 220Mbps; yuv422p <-- Canon EOS 600D | HUAWEI G610-U20
1280x720p; 180Mbps; yuv422p
1280x720p; 145Mbps; yuv422p
1280x720p; 120Mbps; yuv422p
1280x720p; 110Mbps; yuv422p
1280x720p;  90Mbps; yuv422p
1280x720p;  75Mbps; yuv422p
1280x720p;  60Mbps; yuv422p
```

### 1440x1080

```
1440x1080p; 110Mbps; yuv422p
1440x1080p; 100Mbps; yuv422p
1440x1080p;  84Mbps; yuv422p
1440x1080p;  63Mbps; yuv422p
```
```
1440x1080i; 145Mbps; yuv422p
1440x1080i; 120Mbps; yuv422p
1440x1080i; 110Mbps; yuv422p
1440x1080i; 100Mbps; yuv422p
1440x1080i;  90Mbps; yuv422p
1440x1080i;  80Mbps; yuv422p
```

### 960x720

```
960x720p; 115Mbps; yuv422p
960x720p;  75Mbps; yuv422p
960x720p;  60Mbps; yuv422p
960x720p;  42Mbps; yuv422p
```

## Files concatenation

```
ffmpeg -i "concat:VTS_01_1.VOB|VTS_01_2.VOB|VTS_01_3.VOB|VTS_01_4.VOB" -codec copy output.VOB
```
