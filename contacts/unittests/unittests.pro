TEMPLATE = app

QT += network
CONFIG += qtestlib mobility debug link_pkgconfig console
MOBILITY += contacts

PKGCONFIG += buteosyncfw

INCLUDEPATH += ../src

LIBS += -L../src \
        -lgooglecontacts-client

SOURCES +=  \
    main.cpp \
    GAtomTest.cpp \
    GParseStreamTest.cpp \
    GTransportTest.cpp \
    GContactClientTest.cpp \
    GContactsBackendTest.cpp \
    GWriteStreamTest.cpp

HEADERS += \
    GAtomTest.h \
    GParseStreamTest.h \
    GTransportTest.h \
    GContactClientTest.h \
    GContactsBackendTest.h \
    GWriteStreamTest.h

QMAKE_CXXFLAGS = -Wall \
    -Wno-cast-align \
    -O0 -finline-functions
