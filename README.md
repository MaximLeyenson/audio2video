# audio2video.sh

Create an MP4 video file out of a video file and an image

**Synopsis**

I often had to convert audio files to video in order to upload some audio recordings to youtube.

This simple script takes an audio recording (say, a lecture), an image (say, a photograph of the lecturer),
and writes an MP4 video output one could upload to YouTube.

**Synonims**

audio2video.sh, create-slideshow, audio2youtube

**Usage**

```bash
     $ create-slideshow  <image> <audio-file>  
```

For example, 

```bash
     $ create-slideshow  <image.jpg> <audio.mp3>   
     $ create-slideshow  <image.jpg> <audio.ogg>      
```

**Requirements**

   * ffmpeg

**Installation for one user**
```bash
   $ mkdir -pv ~/bin
   $ cd ~/bin/
   $ git clone https://gitlab.com/maxim.leyenson/audio2video
```

and then add the lines

   ```bash
   PATH=$PATH:$HOME/bin/audio2video
   export PATH
   ```
to your .bashrc file.


**System-wide installation**

```bash
   $ sudo mkdir -pv /opt/audio2video
   $ cd /opt/audio2video
   $ sudo git clone https://gitlab.com/maxim.leyenson/audio2video
```

and then add the lines

   ```bash
        PATH=$PATH:/opt/audio2video
        export PATH
   ```
to your .bashrc file.


