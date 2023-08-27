sudo pacman -S sdcv

dict_dir=$STARDICT_DATA_DIR/dic
牛津英汉双解美化版=https://web.archive.org/web/20200630200057/http://download.huzheng.org/zh_CN/stardict-oxford-gb-formated-2.4.2.tar.bz2
朗道英汉字典=https://web.archive.org/web/20200630200057/http://download.huzheng.org/zh_CN/stardict-langdao-ec-gb-2.4.2.tar.bz2


if [ ! -d $dict_dir ]; then 
  mkdir -p $dict_dir
  # axel 
fi
