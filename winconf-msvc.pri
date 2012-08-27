RC_FILE = qbittorrent.rc

# Enable Wide characters
DEFINES += TORRENT_USE_WPATH

#Adapt the lib names/versions accordingly
CONFIG(debug, debug|release) {
  LIBS += libtorrent-debug.lib \
          libboost_system-vc100-mt-gd-1_51.lib \
          libboost_filesystem-vc100-mt-gd-1_51.lib \
          libboost_thread-vc100-mt-gd-1_51.lib
} else {
  LIBS += libtorrent-release.lib \
          libboost_system-vc100-mt-1_51.lib \
          libboost_filesystem-vc100-mt-1_51.lib \
          libboost_thread-vc100-mt-1_51.lib
}

LIBS += advapi32.lib shell32.lib
LIBS += libeay32MD.lib ssleay32MD.lib
LIBS += PowrProf.lib
