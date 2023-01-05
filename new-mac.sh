/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";
brew update; brew upgrade;
brew tap mongodb/brew;brew update;brew install mongodb-community@6.0;
brew install --cask --no-quarantine barrier discord handbrake openvpn-connect whalebird brooklyn firefox inkscape owasp-zap xquartz cinebench geekbench macfuse rectangle cloudflare-warp gimp macs-fan-control sloth cyberduck google-chrome monitorcontrol tableplus diffmerge grandperspective numi vlc;


brew install nvm btop;

mkdir ~/.nvm; 
##echo "export NVM_DIR=~/.nvm\nsource \$(brew --prefix nvm)/nvm.sh" >> .zshrc;source ~/.zshrc;

echo "export NVM_DIR="$HOME/.nvm" \ [ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm \[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion" >> ~/.zshrc

brew services start mongodb/brew/mongodb-community
