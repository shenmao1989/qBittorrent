RC_FILE = qbittorrent.rc

# Enable Wide characters
DEFINES += TORRENT_USE_WPATH

#Adapt the lib names/versions accordingly
CONFIG(debug, debug|release) {
  LIBS += libtorrent-debug.lib \
          libboost_system-vc100-mt-gd.lib \
          libboost_filesystem-vc100-mt-gd.lib \
          libboost_thread-vc100-mt-gd.lib
} else {
  LIBS += libtorrent-release.lib \
          libboost_system-vc100-mt.lib \
          libboost_filesystem-vc100-mt.lib \
          libboost_thread-vc100-mt.lib
}

LIBS += advapi32.lib shell32.lib
LIBS += libeay32MD.lib ssleay32MD.lib
LIBS += PowrProf.lib
