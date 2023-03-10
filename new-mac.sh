#install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";
#this will be the one liner command you will every need to update all the follows applications in the future
brew update; brew upgrade;

#install mongodb
#mongodb-community@6.0 for local db setup
brew tap mongodb/brew;brew update;brew install mongodb-community@6.0;

#install mac applications
#barrier for sharing #mouse & #keyboard across different #computers on different OS
#numi for quick and easy calculation, currency conversion and etc
#rectangle a handy window manager
#openvpn-connect for remote work #wfh
#cloudflare-warp for better and safer DNS
#macs-fan-control shows the fan speed
#satellite-eyes shows the map around your location in various styles
#brooklyn a stylish screen saver
#monitorcontrol if you are using monitor not supported for brightness control
#menuwhere access meun anywhere
#whalebird for #mastodon
#gimp for bitmap graphic manipulation
#inkscape for vector graphic manipulation
#handbrake for video compression
#vlc for viewing any video formats
#firefox & google-chrome for browser testing
#cyberduck for sFPT
#diffmerge to diff between files
#docker for easier deployment
#miniconda for python lib
#owasp-zap for web app scanner
#discord for all servers / communities you are in
#tableplus for access to mongodb in GUI
#mongodb-compass if you need gui to access mongodb
#cinebench & geekbench for #benchmark your new mac
#grandperspective to see what's chunking up your file system
#sloth shows all open files and sockets in use
#macfuse in case u need to mount volumes not supported by #macos
#xquartz if you need X11, e.g. #xeyes 👀
#itsycal shows tiny calendar at menu bar
#signal-messenger - secure messenger
#imageoptim - compress images

brew install --cask --no-quarantine barrier numi rectangle openvpn-connect macs-fan-control satellite-eyes brooklyn monitorcontrol menuwhere whalebird gimp inkscape handbrake vlc firefox google-chrome cyberduck diffmerge docker owasp-zap discord tableplus mongodb-compass cinebench geekbench grandperspective sloth itsycal signal-messenger imageoptim;

#install command line tools
#nvm for multiple node version for projects, also setup its path
#btop shows network, cpu usage and more except GPU I believe over Apple's Activity Monitor
#neofetch shows system information
#speedtest-cli - command line to speedtest.net

brew install nvm btop neofetch speedtest-cli cmake protobuf rust python@3.10 wget ffmpeg influxdb;

#optional oh-my-zsh and p10k
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc

#configure nvm path
mkdir ~/.nvm;
echo "export NVM_DIR="$HOME/.nvm" \ 
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm \
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion" >> ~/.zshrc

#start mongdb as service
brew services start mongodb/brew/mongodb-community
