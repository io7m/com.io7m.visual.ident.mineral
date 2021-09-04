#!/bin/sh -ex

exec gst-launch-1.0 \
multifilesrc location="%04d.png" index=0 caps="image/png,framerate=\(fraction\)60/1" \
! pngdec \
! videoconvert \
! videorate \
! theoraenc \
! matroskamux \
! filesink location="output.mkv"
