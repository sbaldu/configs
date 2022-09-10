
cp .zshrc ~
cp .vimrc ~
cp alacritty.yml ~/.config/alacritty/
cp myTheme.zsh-theme ~/.oh-my-zsh/themes
cp rc.lua ~/.config/awesome/
cp -r .vim ~/

cp powerarrow_dark_theme.lua ~/.config/awesome/themes/powerarrow-dark/
rm ~/.confing/awesome/themse/powerarrow-dark/theme.lua
mv ~/.config/awesome/themes/powerarrow-dark/powerarrow_dark_theme.lua ~/.config/awesome/themes/powerarrow-dark/theme.lua
