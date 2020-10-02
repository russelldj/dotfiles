cd ..

# Setup TeleSculptor
[ ! -d "./TeleSculptor" ] && mkdir TeleSculptor/build -p && cd TeleSculptor && git clone git@github.com:Kitware/TeleSculptor.git src && cd ..

# Setup KWIVER
[ ! -d "./KWIVER" ] && mkdir KWIVER/build -p && cd KWIVER && git clone git@github.com:Kitware/kwiver.git src && cd ..

# Setup VIAME
[ ! -d "./VIAME" ] && mkdir VIAME/build -p && cd VIAME && git clone git@github.com:VIAME/VIAME.git src && cd ..
