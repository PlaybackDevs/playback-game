# record gource with ffmpeg (ass slow, unless you have a baller cpu and gpu)

gource --user-image-dir ./devs_images/ -1280x720 -key -o - | ffmpeg -y -r 60 -f image2pipe -vcodec ppm -i - -vcodec libx264 -preset ultrafast -pix_fmt yuv420p -crf 1 -threads 0 -bf 0 gource.mp4