PM_HOME=/home/lyh/proj/vr180/patch-match-stereo
PINHOLE_DATA=/LOFTNAS/lyh/proj/201901-vr180/data/pinhole_90

${PM_HOME}/build/pm \
    ${PINHOLE_DATA}/L_small.png \
    ${PINHOLE_DATA}/R_small.png \
    ${PINHOLE_DATA}/rst_pm/disp.png
