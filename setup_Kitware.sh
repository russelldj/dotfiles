cd ..

# Setup TeleSculptor
[ ! -d "./TeleSculptor" ] && mkdir TeleSculptor/build -p && cd TeleSculptor && git clone git@github.com:Kitware/TeleSculptor.git src && cd ..

# Setup KWIVER
[ ! -d "./KWIVER" ] && mkdir KWIVER/build -p && cd KWIVER && git clone git@github.com:Kitware/kwiver.git src && cd ..

# Setup Fletch
sudo apt-get install build-essential libgl1-mesa-dev -y
sudo apt-get install libexpat1-dev -y
sudo apt-get install libgtk2.0-dev -y
sudo apt-get install liblapack-dev -y
sudo apt-get install python2.7-dev -y

sudo apt install libreadline-dev -y
[ ! -d "./Fletch" ] && mkdir Fletch/build -p && cd Fletch && git clone git@github.com:Kitware/fletch.git src && cd ..

# Setup VIAME
[ ! -d "./VIAME" ] && mkdir VIAME/build -p && cd VIAME && git clone git@github.com:VIAME/VIAME.git src  --recurse-submodules && cd ..


