PROJECT_NAME = qbittorrent(sikemi)
PROJECT_VERSION = 1.5.0

os2 {
    DEFINES += VERSION=\'\"v$${PROJECT_VERSION}\"\'
    DEFINES += PROJECT_NAME=\'\"$${PROJECT_NAME}\"\'
} else {
    DEFINES += VERSION=\\\"v$${PROJECT_VERSION}\\\"
    DEFINES += PROJECT_NAME=\\\"$${PROJECT_NAME}\\\"
}

DEFINES += VERSION_MAJOR=1
DEFINES += VERSION_MINOR=5
DEFINES += VERSION_BUGFIX=0
