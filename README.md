# Установка окружения Vim на другой машине

Для установки окружения на другой машине нужно выполнить следующие шаги:
```
cd ~
git clone https://github.com/Voland666/vim-for-python.git ~/.vim
ln -s ~/.vim/vimrc ~/.vimrc
ln -s ~/.vim/.ctags ~/.ctags
cd ~/.vim
git submodule init
git submodule update
```

Для установки шрифтов статус-строки необходимо:
```
mkdir ~/.fonts
cp ~/.vim/fonts/PowerlineSymbols.otf ~/.fonts/
su -
cp ~/.vim/fonts/10-powerline-symbols.conf /etc/fonts/conf.d/
fc-cache -vf /home/user/.fonts/
exit
~/.vim/fonts/fonts-master/install.sh
```
