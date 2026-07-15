#install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)";
#this will be the one liner command you will every need to update all the follows applications in the future
brew update; brew upgrade;

#install mongodb
#mongodb-community@6.0 for local db setup
brew tap mongodb/brew;brew update;brew install mongodb-community@6.0;

#install mac applications
# - aerial - A beautiful screen saver that brings the stunning aerial cinematography from Apple TV to the Mac.
# - alDente - Battery charging limiter for Mac
# - anytype - Local-first, privacy-focused knowledge base and collaboration tool
# - appcleaner - Uninstaller that removes all associated files of an application
# - beekeeper-studio - Modern SQL client and database manager
# - betterdisplay - Advanced monitor and display management utility
# - calibre - E-book management and conversion software
# - claude - AI coding agent
# - cyberduck - FTP, SFTP, and cloud storage browser
# - devtoys - Swiss Army knife for developers with various formatters and converters
# - discord - Communication platform for communities and gamers
# - diskcatalogmaker - Hard drive cataloging tool for fast file searching

# - docker-desktop - GUI for managing Docker containers and images
# - duet - Tool to use an iPad as a second monitor for Mac
# - firefox - Privacy-focused open-source web browser
# - gcloud-cli - Command-line interface for Google Cloud Platform
# - ghostty - High-performance, GPU-accelerated terminal emulator
# - google-chrome - Fast and widely-used web browser by Google
# - google-cloud-sdk - Set of tools for managing Google Cloud resources
# - grandperspective - Visual disk space usage analyzer
# - handbrake - Open-source video transcoder
# - handbrake-app - Video transcoding application
# - helium-browser - Web browser with floating and transparent windows
# - imageoptim - Image optimization tool for reducing file size
# - itsycal - Tiny calendar and events menu bar application
# - jitsi-meet - Open-source video conferencing tool
# - localsend - Cross-platform open-source local file sharing
# - macs-fan-control - Manual control and monitoring for Mac fans
# - menuwhere - Tool to locate menu bar applications
# - mongodb-compass - GUI for MongoDB database management
# - monitorcontrol - Native-like brightness and volume control for external monitors
# - mx-power-gadget - Power management and monitoring for specific hardware
# - ngrok - Reverse proxy to expose local servers to the internet
# - numi - Interactive notebook for calculations and notes
# - obs - Software for video recording and live streaming
# - openemu - All-in-one retro game emulator
# - oracle-jdk - Java Development Kit by Oracle
# - pika - Simple screen-to-GIF recorder
# - portkiller - Utility to kill processes occupying specific network ports
# - postman - API platform for building and testing APIs
# - prepros - CSS preprocessor and build tool
# - pycharm - Professional Python integrated development environment
# - rectangle - Window management tool for tiling and snapping
# - redis - In-memory data structure store and database
# - sloth - Menu bar application for monitoring system load
# - sonic-pi - Code-based music creation and live coding tool
# - thaw - Application for specialized data or system tasks
# - ungoogled-chromium - Chromium browser without Google services
# - upscayl - AI-powered image upscaler
# - visualdiffer - Tool for visually comparing images or files
# - vlc - Versatile open-source media player
# - whatcable - Utility to identify various cables and connectors
# - zed - High-performance, collaborative code editor
# - zen - Privacy-focused modern web browser


brew install --cask aerial aldente anytype appcleaner beekeeper-studio betterdisplay calibre claude-code cyberduck devtoys discord diskcatalogmaker  docker-desktop duet firefox gcloud-cli ghostty google-chrome google-cloud-sdk grandperspective handbrake handbrake-app helium-browser imageoptim itsycal jitsi-meet localsend macs-fan-control menuwhere mongodb-compass monitorcontrol mx-power-gadget ngrok numi obs openemu oracle-jdk pika productdevbook/tap/portkiller postman prepros pycharm rectangle redis sloth sonic-pi thaw ungoogled-chromium upscayl visualdiffer vlc whatcable zed zen

#install command line tools

# - docker - Containerization platform engine
# - nvm - Node Version Manager for managing multiple Node.js versions
# - btop - Resource monitor with a visual interface
# - htop - Interactive process viewer and system monitor
# - speedtest - Internet connection speed testing tool
# - cmake - Cross-platform build system generator
# - rust - Systems programming language and toolchain
# - python@3.10 - Python 3.10 programming language
# - wget - Command-line network downloader
# - ffmpeg - Multimedia framework for recording and converting audio/video
# - opencode - Collaborative coding environment (from anomalyco/tap)


brew install docker nvm btop htop speedtest cmake rust python@3.10 wget ffmpeg anomalyco/tap/opencode;


#optional oh-my-zsh and p10k
# sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# brew install romkatv/powerlevel10k/powerlevel10k
# echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc

#configure nvm path
mkdir ~/.nvm;
echo "export NVM_DIR="$HOME/.nvm" \
[ -s "/usr/local/opt/nvm/nvm.sh" ] && \. "/usr/local/opt/nvm/nvm.sh" # This loads nvm \
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/usr/local/opt/nvm/etc/bash_completion.d/nvm" # This loads nvm bash_completion" >> ~/.zshrc

# latest mongodb community server [https://www.mongodb.com/try/download/community-kubernetes-operator]
brew install mongodb-atlas
atlas setup

# Google antigravity [https://antigravity.google/download]
curl -fsSL https://antigravity.google/cli/install.sh | bash
