mkdir tweak;cd tweak
sudo apt-get download unity-webapps-service
ar xvf *
tar xvf data*
sudo mv usr/share/glib-2.0/schemas/com.canonical.unity.webapps.gschema.xml /usr/share/glib-2.0/schemas/
sudo glib-compile-schemas /usr/share/glib-2.0/schemas/
cd ..; sudo rm -Rf tweak
