set BUILD_FOLDER=%cd%

REM Disable the warning for detached head
git config --global advice.detachedHead false

REM zlib
git clone --depth 1 --single-branch --branch v1.2.13 https://github.com/madler/zlib.git c:/3rdparty/zlib

REM libpng
git clone --depth 1 --single-branch --branch v1.6.39 https://github.com/glennrp/libpng.git c:/3rdparty/libpng

REM libjpeg
curl -O http://www.ijg.org/files/jpegsr9e.zip
%~dp0\..\7z\7z x jpegsr9e.zip -oc:\3rdparty\
move c:\3rdparty\jpeg-9e c:\3rdparty\libjpeg

REM libtiff
git clone --depth 1 --single-branch --branch v4.5.0 https://gitlab.com/libtiff/libtiff.git c:/3rdparty/tiff
move c:\3rdparty\tiff c:\3rdparty\libtiff

REM freetype
git clone --depth 1 --single-branch --branch VER-2-10-4 https://github.com/freetype/freetype.git c:/3rdparty/freetype

REM glut
git clone https://github.com/markkilgard/glut.git c:/3rdparty/glut
cd c:\3rdparty\glut
git reset --hard 8cd96cb440f1f2fac3a154227937be39d06efa53
cd %BUILD_FOLDER%

REM giflib
git clone --depth 1 --single-branch --branch 5.2.1 https://git.code.sf.net/p/giflib/code.git c:/3rdparty/giflib

REM curl
curl -O https://curl.se/download/curl-7.76.1.zip
%~dp0\..\7z\7z x curl-7.76.1.zip -oc:\3rdparty\
move c:\3rdparty\curl-7.76.1 c:\3rdparty\curl
