#
apt update -y
apt install -y libx11-dev libxft-dev libxext-dev libxinerama-dev  zip git gcc make 
git clone --depth=1 https://github.com/instantOS/instantMENU
cd instantMENU
make
make DESTDIR="./dmpkg" install
zip -r dmpkg.zip dmpkg
