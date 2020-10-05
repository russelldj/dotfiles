cd
mkdir install
cd install

# Setup CMake
sudo apt install -y libssl-dev
[ ! -d "./CMake" ] && \
	mkdir CMake/build -p && cd CMake && \
	wget https://github.com/Kitware/CMake/releases/download/v3.18.3/cmake-3.18.3.tar.gz && \
	tar -xf cmake-3.18.3.tar.gz && \
        cd cmake-3.18.3 && \
	./bootstrap --qt-gui && \
	make

# install Uncrustify (code beautifier)
[ ! -d "./uncrustify" ] && \
	git clone git@github.com:uncrustify/uncrustify.git && \
	cd uncrustify && mkdir build && cd build && \
	cmake .. && cmake --build .
	#wget https://github.com/Kitware/CMake/releases/download/v3.18.3/cmake-3.18.3.tar.gz && \
	#tar -xf cmake-3.18.3.tar.gz && \
        #cd cmake-3.18.3 && \
	#./bootstrap --qt-gui && \
	#make
