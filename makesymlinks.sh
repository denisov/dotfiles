#!/bin/bash
#
# Скрпит заменяет файлы конфигов на симлинки на файлы в dotfiles
# Применяется для настройки новой системы на сохранённые конфиги
#
# Добавить файл в dotfiles
#    cp tc2/2.cfg --parents dotfiles/
#    добавить в files

dir=~/dotfiles
olddir=~/dotfiles_old
files=".zshrc .config/terminator/config .gitconfig"


# create dotfiles_old in homedir
echo -n "Creating $olddir for backup of any existing dotfiles in ~ ..."
mkdir -p $olddir
echo "done"

# change to the dotfiles directory
echo -n "Changing to the $dir directory ..."
cd $dir
echo "done"

cd ~
# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks from the homedir to any files in the ~/dotfiles directory specified in $files
for file in $files; do
    echo "Moving existing $file from ~ to $olddir"
    cp $file --parents $olddir
    unlink $file
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/$file
done