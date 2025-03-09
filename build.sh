##
apt update -y
apt install -y libx11-dev libxft-dev  zip git gcc make ca-certificates --no-install-recommends
git clone --depth=1  https://git.suckless.org/tabbed
cd tabbed
make
make DESTDIR="./tabpkg" install
zip -r tabpkg.zip tabpkg
