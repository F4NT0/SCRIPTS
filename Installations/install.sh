    #!/bin/bash

# ----------------------------------------------------
# ARQUIVO DE CONFIGURAÇÃO DE PROGRAMAS DO UBUNTU 18.04
# ----------------------------------------------------

#-----------------------------------------------------
# RODAR ESSE SCRIPT NO MODO ADMINISTRADOR (SUDO SU)
#-----------------------------------------------------


# Comando de Instalação Java:

(echo '107Poli@ges' ; echo 'y') | sudo -S apt-get install default-jre
echo 'y'| sudo -S apt-get install default-jdk
echo ""
echo 'JAVA INSTALADO COM SUCESSO'
echo ""

# Instalando VIM
echo 'y' | sudo apt install vim

# Instalando TMUX
echo 'y' | sudo apt install tmux

# Instalando curl

echo 'y'| sudo -S apt install curl
echo ""
echo 'CURL INSTALADO COM SUCESSO'
echo ""

# Instalando Jabba

curl -sL https://github.com/shyiko/jabba/raw/master/install.sh | bash && . ~/.jabba/jabba.sh
echo ""
echo 'JABBA INSTALADO COM SUCESSO'
echo ""

# Instalando NVM

#curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.2/install.sh | bash
#echo ""
#echo 'NVM INSTALADO COM SUCESSO'
#echo ""

# Instalando python3

echo 'y' | sudo -S apt-get install python3
echo ""
echo 'PYTHON 3 INSTALADO COM SUCESSO'
echo ""

# Instalando vscode

echo 'y' | sudo -S apt install software-properties-common ca-certificates apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
echo 'y' | sudo -S apt install code
echo ""
echo 'VSCODE INSTALADO COM SUCESSO'
echo ""

# Instalando Docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
apt-cache policy docker-ce
echo 'y' | sudo -S apt install docker-ce

echo ''
echo "DOCKER INSTALADO COM SUCESSO"
echo ''

# Instalando Docker-Compose

sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
echo ""
echo 'DOCKER-COMPOSE INSTALADO COM SUCESSO'
echo ""

# Instalando Node
echo 'y' | sudo -S apt install nodejs
echo ""
echo 'NODEJS INSTALADO COM SUCESSO'
echo ""

# Instalando NPM
echo 'y' | sudo -S apt install npm
echo ''
echo 'NPM INSTALADO COM SUCESSO'
echo ""

# Instalando o N (version manager do Node)
npm install -g n

# Atualizando Tudo
sudo apt update

# Baixando o Toolbox
# firefox https://www.jetbrains.com/toolbox-app/download/download-thanks.html
# Só clique para salvar

# Verificações

echo 'VERIFICANDO INSTALAÇÕES'
echo ''
echo 'JAVA'
java --version
echo 'JAVAC'
javac --version
echo 'CURL'
curl --version
echo 'PYTHON 3'
python3 --version
echo 'PYTHON PIP 3'
pip3 --version
echo 'VSCODE'
code --version
echo 'DOCKER-COMPOSE'
docker-compose -v
echo 'NODE'
node -v
npm -v
n --version
echo 'DOCKER'
sudo systemctl status docker
echo ''
echo ''
echo 'SISTEMA PRONTO PARA UTILIZAR'

