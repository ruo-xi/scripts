tar xvf Downloads/oreo_spark_violet_cursors.tar.gz -C ~/.local/share/icons
mkdir -p ~/.icons/default
echo '[icon theme]
Inherits=oreo_spark_violet_cursors' | tee -a ~/.icons/default/index.theme
