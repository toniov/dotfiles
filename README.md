# dotfiles

For personal use.

```sh
# Install xcode command line tools (including git)
sudo softwareupdate -i -a
xcode-select --install

# Clone this repo
mkdir ~/Repos
git clone https://github.com/toniov/dotfiles ~/Repos/dotfiles
cd ~/Repos/dotfiles
# Execute script
. install.sh
# Set Zsh as default shell
chsh -s /bin/zsh
```
