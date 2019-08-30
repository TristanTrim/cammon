# this one kept braking, trying a different one
#streamer -c /dev/video1 -f jpeg -o pics/kitchen-$(date -Isecond).jpeg
# bad..? #fswebcam -r 640x480 -d /dev/video1 --jpeg 85 pics/kitchen-$(date -Isecond).jpeg
fswebcam -q -D 1 -d /dev/video1 -r 640x480 --jpeg 85 --no-banner --no-shadow --no-title --no-subtitle --no-timestamp --no-info --no-underlay --no-overlay pics/kitchen-$(date -Isecond).jpeg
#fswebcam -q -D 1 -d /dev/video1 --jpeg 85 --no-banner --no-shadow --no-title --no-subtitle --no-timestamp --no-info --no-underlay --no-overlay pics/kitchen-$(date -Isecond).jpeg
#bad..?#fswebcam -r 384x288 -d /dev/video1 pics/kitchen-$(date -Isecond).jpeg

