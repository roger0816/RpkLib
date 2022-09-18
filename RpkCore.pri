QT+= network sql
INCLUDEPATH+=$$PWD \
             $$PWD/include \
             $$PWD/include/core \
             $$PWD/include/core/abstract

HEADERS += \
    $$PWD/include/core/CData.h \
    $$PWD/include/core/abstract/CAction.h \
    $$PWD/include/RpkCore.h \
    $$PWD/include/core/DataBase.h \
    $$PWD/include/core/Network.h \
    $$PWD/include/core/abstract/CGlobal.h



MOC_DIR =$$PWD/obj
OBJECTS_DIR =$$PWD/obj
UI_DIR =$$PWD/obj
#DESTDIR =$$PWD/../../bin/




contains(DEFINES,BUILD_PRK){
    message("Build RPKLib")
}
else{
     message("Use RPKLib")
unix|win32: LIBS += -L$$PWD/ -lRpkCore

INCLUDEPATH += $$PWD/include
DEPENDPATH += $$PWD/include

win32:!win32-g++: PRE_TARGETDEPS += $$PWD/RpkCore.lib
else:unix|win32-g++: PRE_TARGETDEPS += $$PWD/libRpkCore.a

}

