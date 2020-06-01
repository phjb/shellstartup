# echo 'update system'
sudo apt-get update
clear

# echo 'Installing Snap'
sudo apt install snapd -y

# echo 'installing curl'
sudo apt install curl -y
clear

 echo 'installing fix-broken'
 sudo apt --fix-broken install -y


# echo 'installing vscode'
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt-get install apt-transport-https -y
sudo apt-get update
sudo apt-get install code -y
clear


# echo 'installing git'
sudo apt-get install git -y

# echo 'config git'
echo 'whats your user.name'
read git_user_name
git config --global user.name "Paulo Barbosa"
echo 'whats your user.email'
read git_user_email
git config --global user.email "paulohjbarbosa@gmail.com"
git config --global core.editor "code --wait"
clear

# echo 'installing chrome'
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo rm -r google-chrome-stable_current_amd64.deb
clear

# echo 'installing hyper'
wget -O hyper.deb https://releases.hyper.is/download/deb
sudo dpkg -i hyper.deb
sudo rm -r hyper.deb
clear


echo 'installing nvm'
sh -c "$(curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.34.0/install.sh | bash)"

export NVM_DIR="$HOME/.nvm" && (
git clone https://github.com/creationix/nvm.git "$NVM_DIR"
cd "$NVM_DIR"
git checkout `git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1)`
) && \. "$NVM_DIR/nvm.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

source ~/.zshrc
nvm --version
nvm install 12
nvm alias default 12
node --version
npm --version

# echo 'installing fira code'
sudo apt install fonts-firacode -y
clear

# echo 'installing spotify'
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install spotify-client
clear

# echo 'installing extensions vscode'
code --install-extension aaron-bond.better-comments
code --install-extension abusaidm.html-snippets
code --install-extension adrianwilczynski.add-reference
code --install-extension adrianwilczynski.asp-net-core-snippet-pack
code --install-extension adrianwilczynski.asp-net-core-switcher
code --install-extension alexcvzz.vscode-sqlite
code --install-extension alexiv.vscode-angular2-files
code --install-extension Angular.ng-template
code --install-extension bierner.markdown-preview-github-styles
code --install-extension christian-kohler.path-intellisense
code --install-extension codezombiech.gitignore
code --install-extension CoenraadS.bracket-pair-colorizer
code --install-extension craigthomas.supersharp
code --install-extension dbaeumer.vscode-eslint
code --install-extension doggy8088.netcore-extension-pack
code --install-extension doggy8088.netcore-snippets
code --install-extension dracula-theme.theme-dracula
code --install-extension eamodio.gitlens
code --install-extension EditorConfig.EditorConfig
code --install-extension eg2.vscode-npm-script
code --install-extension esbenp.prettier-vscode
code --install-extension formulahendry.auto-close-tag
code --install-extension formulahendry.dotnet
code --install-extension formulahendry.dotnet-test-explorer
code --install-extension foxundermoon.shell-format
code --install-extension Fudge.auto-using
code --install-extension ionutvmi.path-autocomplete
code --install-extension jchannon.csharpextensions
code --install-extension jeff-hykin.better-shellscript-syntax
code --install-extension jmrog.vscode-nuget-package-manager
code --install-extension johnpapa.angular-essentials
code --install-extension johnpapa.Angular2
code --install-extension jorgeserrano.vscode-csharp-snippets
code --install-extension k--kato.docomment
code --install-extension Leopotam.csharpfixformat
code --install-extension lkytal.pomodoro
code --install-extension maurobussini.vscode-dotnet-essentials
code --install-extension mhutchie.git-graph
code --install-extension ms-dotnettools.csharp
code --install-extension msjsdiag.debugger-for-chrome
code --install-extension msjsdiag.debugger-for-edge
code --install-extension patcx.vscode-nuget-gallery
code --install-extension pflannery.vscode-versionlens
code --install-extension PKief.material-icon-theme
code --install-extension quicktype.quicktype
code --install-extension rocketseat.theme-omni
code --install-extension schneiderpat.aspnet-helper
code --install-extension shyykoserhiy.git-autoconfig
code --install-extension sidneys1.gitconfig
code --install-extension tintoy.msbuild-project-tools
code --install-extension vscode-icons-team.vscode-icons
code --install-extension wayou.vscode-todo-highlight
clear

# echo 'installing zsh'
sudo apt-get install zsh -y
clear

#echo 'installing dbaever'
sudo snap install dbeaver-ce
clear

# echo 'installing Sqlite Browser'
sudo add-apt-repository -y ppa:linuxgndu/sqlitebrowser
sudo apt-get update
sudo apt-get install sqlitebrowser -y
clear

# echo 'installing WPS'
install wps-office-all-lang-no-internet
clear

# echo 'installing Obs Studio'
sudo apt install ffmpeg -y
sudo add-apt-repository ppa:obsproject/obs-studio
sudo apt update
sudo apt install obs-studio -y

