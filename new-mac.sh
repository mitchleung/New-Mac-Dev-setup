#install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";
#this will be the one liner command you will every need to update all the follows applications in the future
brew update; brew upgrade;

#install mongodb
#mongodb-community@6.0 for local db setup
brew tap mongodb/brew;brew update;brew install mongodb-community@6.0;

#install mac applications
# - **aerial** - macOS screensaver that can use videos of your own as well as community videos around the world.  
# - **aldente** - battery management tool that helps control charging limits to extend battery lifespan.  
# - **anytype** - privacy-focused, offline-first, all-in-one knowledge management and note-taking app.  
# - **appzapper** - utility that completely removes applications and their related files from macOS.  
# - **arc** - modern, privacy-focused web browser by The Browser Company.  
# - **audacity** - free, open-source audio editor and recorder.  
# - **calibre** - powerful eBook manager and converter.  
# - **cyberduck** - file transfer tool supporting FTP, SFTP, WebDAV, and cloud storage like AWS S3.  
# - **devtoys** - collection of developer tools, like JSON formatting, regex testing, and more.  
# - **diffmerge** - visual comparison and merging tool for files and folders.  
# - **discord** - communication platform for voice, video, and text, popular among gamers and communities.  
# - **docker** - platform for developing, shipping, and running containerized applications.  
# - **duet** – Turns an iPad into a secondary display for a Mac or PC.  
# - **firefox** - fast, privacy-focused web browser from Mozilla.  
# - **freetube** - privacy-focused YouTube client that allows ad-free and tracker-free viewing.  
# - **gimp** - free and open-source image editor, often considered an alternative to Photoshop.  
# - **google-chrome** – Google’s web browser.  
# - **grandperspective** - disk space visualization tool that helps identify large files and folders.  
# - **handbrake** - free video transcoder for converting media files into different formats.  
# - **imageoptim** - tool for optimizing and compressing images without losing quality.  
# - **inkscape** - free and open-source vector graphics editor, similar to Adobe Illustrator.  
# - **itsycal** - lightweight calendar app that integrates with the macOS menu bar.  
# - **jordanbaird-ice** - macOS menu bar utility that helps hide and organize excessive menu bar icons for a cleaner look.
# - **krita** - open-source digital painting and illustration tool.  
# - **macs-fan-control** - utility to monitor and manually adjust Mac’s fan speeds.  
# - **miniconda** - minimal installation of Conda for managing Python environments and packages.  
# - **mongodb-compass** - GUI tool for managing MongoDB databases.  
# - **monitorcontrol** - macOS utility to control external display brightness and volume using keyboard shortcuts.  
# - **mx-power-gadget** - monitoring tool that displays CPU power usage and temperature on Macs.  
# - **numi** - simple, handy calculator and converter for macOS from menu bar. 
# - **obs** – popular tool for screen recording and live streaming.  
# - **openemu** - multi-system video game emulator for macOS.  
# - **openvpn-connect** - VPN client for connecting to OpenVPN servers.  
# - **oracle-jdk** – Oracle’s Java Development Kit for developing Java applications.  
# - **pika** - color picker tool for macOS with accessibility features.  
# - **postman** – API development and testing tool for sending HTTP requests.  
# - **prepros** - preprocessor tool for compiling and optimizing web development assets like Sass and TypeScript.  
# - **rectangle** - macOS window management tool for snapping and organizing windows.  
# - **slack** - team collaboration and messaging app.  
# - **sloth** - macOS process viewer that helps visualize open files, sockets, and system resources.  
# - **upscayl** – AI-powered image upscaler for enhancing low-resolution images.  
# - **vlc** - versatile, open-source media player that supports almost all video and audio formats.  
# - **zed** - fast, collaborative code editor designed for performance.

brew install --cask --no-quarantine  aerial aldente anytype appzapper arc audacity calibre cyberduck devtoys diffmerge discord docker duet firefox freetube gimp google-chrome grandperspective handbrake imageoptim inkscape itsycal jordanbaird-ice krita macs-fan-control miniconda mongodb-compass monitorcontrol mx-power-gadget numi obs openemu openvpn-connect oracle-jdk pika postman prepros rectangle slack sloth upscayl vlc zed 

#install command line tools
#nvm for multiple node version for projects, also setup its path
#btop shows network, cpu usage
#htop shows network, cpu usage
#speedtest - command line to speedtest.net

brew install nvm btop htop speedtest cmake rust python@3.10 wget ffmpeg;

#optional oh-my-zsh and p10k
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# brew install romkatv/powerlevel10k/powerlevel10k
# echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc

#configure nvm path
mkdir ~/.nvm;
echo "export NVM_DIR="$HOME/.nvm" \ 
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh"  # This loads nvm \
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion" >> ~/.zshrc

#start mongdb as service
brew services start mongodb/brew/mongodb-community
