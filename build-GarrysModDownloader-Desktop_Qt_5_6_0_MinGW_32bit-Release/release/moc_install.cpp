/****************************************************************************
** Meta object code from reading C++ file 'install.h'
**
** Created by: The Qt Meta Object Compiler version 67 (Qt 5.6.0)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../GarrysModDownloader/class/install.h"
#include <QtCore/qbytearray.h>
#include <QtCore/qmetatype.h>
#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'install.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 67
#error "This file was generated using the moc from 5.6.0. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

QT_BEGIN_MOC_NAMESPACE
struct qt_meta_stringdata_Install_t {
    QByteArrayData data[8];
    char stringdata0[71];
};
#define QT_MOC_LITERAL(idx, ofs, len) \
    Q_STATIC_BYTE_ARRAY_DATA_HEADER_INITIALIZER_WITH_OFFSET(len, \
    qptrdiff(offsetof(qt_meta_stringdata_Install_t, stringdata0) + ofs \
        - idx * sizeof(QByteArrayData)) \
    )
static const qt_meta_stringdata_Install_t qt_meta_stringdata_Install = {
    {
QT_MOC_LITERAL(0, 0, 7), // "Install"
QT_MOC_LITERAL(1, 8, 14), // "installContent"
QT_MOC_LITERAL(2, 23, 0), // ""
QT_MOC_LITERAL(3, 24, 3), // "typ"
QT_MOC_LITERAL(4, 28, 4), // "name"
QT_MOC_LITERAL(5, 33, 8), // "getState"
QT_MOC_LITERAL(6, 42, 16), // "checkIfInstalled"
QT_MOC_LITERAL(7, 59, 11) // "installMaps"

    },
    "Install\0installContent\0\0typ\0name\0"
    "getState\0checkIfInstalled\0installMaps"
};
#undef QT_MOC_LITERAL

static const uint qt_meta_data_Install[] = {

 // content:
       7,       // revision
       0,       // classname
       0,    0, // classinfo
       4,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // methods: name, argc, parameters, tag, flags
       1,    2,   34,    2, 0x02 /* Public */,
       5,    0,   39,    2, 0x02 /* Public */,
       6,    2,   40,    2, 0x02 /* Public */,
       7,    0,   45,    2, 0x02 /* Public */,

 // methods: parameters
    QMetaType::Bool, QMetaType::QString, QMetaType::QString,    3,    4,
    QMetaType::Bool,
    QMetaType::Bool, QMetaType::QString, QMetaType::QString,    3,    4,
    QMetaType::Bool,

       0        // eod
};

void Install::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        Install *_t = static_cast<Install *>(_o);
        Q_UNUSED(_t)
        switch (_id) {
        case 0: { bool _r = _t->installContent((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        case 1: { bool _r = _t->getState();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        case 2: { bool _r = _t->checkIfInstalled((*reinterpret_cast< QString(*)>(_a[1])),(*reinterpret_cast< QString(*)>(_a[2])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        case 3: { bool _r = _t->installMaps();
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = _r; }  break;
        default: ;
        }
    }
}

const QMetaObject Install::staticMetaObject = {
    { &QObject::staticMetaObject, qt_meta_stringdata_Install.data,
      qt_meta_data_Install,  qt_static_metacall, Q_NULLPTR, Q_NULLPTR}
};


const QMetaObject *Install::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *Install::qt_metacast(const char *_clname)
{
    if (!_clname) return Q_NULLPTR;
    if (!strcmp(_clname, qt_meta_stringdata_Install.stringdata0))
        return static_cast<void*>(const_cast< Install*>(this));
    return QObject::qt_metacast(_clname);
}

int Install::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 4)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 4;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 4)
            *reinterpret_cast<int*>(_a[0]) = -1;
        _id -= 4;
    }
    return _id;
}
QT_END_MOC_NAMESPACE
