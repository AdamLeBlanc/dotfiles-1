NVM_DIR="$HOME/.nvm"
if test ! $(which spoof)
then
  sudo npm install spoof -g
fi

if test ! $(which nvm)
then
  curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash
fi
source $NVM_DIR/nvm.sh
nvm install lts/*
nvm install node
nvm alias default node
yarn global add http-server create-react-app @angular/cli  yo
