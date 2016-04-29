#include "install.h"

Install::Install(QObject *parent) : QObject(parent){

}

bool Install::installContent(QString typ, QString name){
    isUnziping = true;
    QString extDir;
    QString sourceDir = "Packages/";
    sourceDir += name;
    sourceDir += ".zip";
    if(typ == "addons"){
        extDir = "C:/Program Files (x86)/Steam/steamapps/common/GarrysMod/garrysmod/addons";
    }
    JlCompress::extractDir(sourceDir, extDir);
    if(name == "fearless_content"){
        installMaps();
    }
    isUnziping = false;
    return true;
}

bool Install::getState(){
    return isUnziping;
}
bool Install::checkIfInstalled(QString typ, QString name){
    QString path = "C:/Program Files (x86)/Steam/steamapps/common/GarrysMod/garrysmod/";
    path += typ; path += "/";
    path += name;
    path += "/addon.txt";
    QFileInfo checkFile(path);
    if (checkFile.exists() && checkFile.isFile()) {
        return true;
    } else {
        return false;
    }
}

bool Install::installMaps(){
    isUnziping = true;
    QString extDir;
    extDir = "C:/Program Files (x86)/Steam/steamapps/common/GarrysMod/garrysmod/maps";
    JlCompress::extractDir("Packages/v2d.zip", extDir);
    JlCompress::extractDir("Packages/v33x.zip", extDir);
    isUnziping = false;
    return true;
}
