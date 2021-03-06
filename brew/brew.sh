#!/usr/bin/env bash

# Install or update brew
cd ~
which -s brew
if [[ $? != 0 ]] ; then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
    echo "Installing Brew"
else
    echo "Updating Brew"
fi


brew tap caskroom/cask

# Install dependencies
brew install awscli
brew install bash-completion
brew install cloudfoundry/tap/cf-cli
brew install cloudfoundry/tap/cf7-cli
brew install corkscrew
brew install exa
brew install git
brew install git-crypt
brew install git-extras
brew install git-secrets
brew install gnu-getopt
brew install gnu-sed
brew install gnupg
brew install gradle
brew install grip
brew install groovy
brew install helm
brew install hstr
brew install jenv
brew install jmeter
brew install jq
brew install kotlin
brew install kubectl
brew install maven
brew install minikube
brew install nano
brew install newman
brew install node@12
brew install pinentry-mac
brew install pkg-config
brew install postgresql
brew install python3
brew install ruby
brew install unrar
brew install watch
brew install wget
brew install zplug
brew install zsh
brew install zsh-completions
brew install zsh-syntax-highlighting

brew tap pivotal/tap
brew install springboot
spring install org.springframework.cloud:spring-cloud-cli:2.2.1.RELEASE

brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk11

brew tap heroku/brew 
brew install heroku

brew cask install docker

# Install GUI apps
brew cask install iterm2
brew cask install postman
#brew cask install intellij-idea
brew cask install firefox
brew cask install visual-studio-code
brew cask install spotify
brew cask install macpass
brew cask install clipy
brew cask install slack
brew cask install spectacle
 

# Print the installed packages and their dependencies
brew leaves | xargs brew deps --installed --for-each | sed "s/^.*:/$(tput setaf 4)&$(tput sgr0)/"


# Remove outdated versions from the cellar.
brew cleanup