#

if [ -z "$1" ]; then
	echo "Usage: $0 <user_name> [install_path]"
	exit 1
fi

user_name="${1:-user}"
install_path="${2:-$HOME}"

## save configs in .config folder
mkdir -p ~/.config/nvim && cp -r nvim ~/.config
mv ~/.config/nvim/lua/sbaldu ~/.config/nvim/lua/$user_name
echo "require('${user_name}')" > ~/.config/nvim/init.lua
find ~/.config/nvim/lua/$user_name -type f -name "*.lua" -exec sed -i "s/"sbaldu"/${user_name}/g" {} +


## install neovim
cd ~ ;
git clone https://github.com/neovim/neovim && cd neovim && make -j 16 CMAKE_INSTALL_PREFIX=${install_path} && make install
cd ~  && echo "export PATH=$PATH:~/neovim/build/bin/nvim" >> ~/.bashrc && source ~/.bashrc

## install packer
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

## install neovim packages
mv ~/.config/nvim/after ~/.config
cd ~/.config/nvim/lua/${user_name} && nvim --headless -c 'autocmd User PackerComplete quitall' -c 'PackerInstall'
mv ~/.config/after ~/.config/nvim/
