# Установка окружения Vim на другой машине

Для установки окружения на другой машине нужно выполнить следующие шаги:
```
cd ~
git clone https://github.com/Voland666/vim-for-python.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
cd ~/.vim
git submodule init
git submodule update
```

Для ropevim нужно установить rope:
```
su -
pip install rope
cd ~/.vim/bundles/ropevim/
python setup.py install
```
