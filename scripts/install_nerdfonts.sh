#

cd ~ ; mkdir -p Packages
cd Packages
git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git
cd nerd-fonts
./install.sh

# Clean up
rm -rf ~/Packages/nerd-fonts
[ "$(ls -A ~/Packages)" ] || rm -r Packages
