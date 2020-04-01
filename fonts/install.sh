#!/bin/sh

set -x

install() {
	if [ "$(uname -s)" = "Darwin" ] && command -v antibody >/dev/null 2>&1; then
		echo -e "fpath+=( /Users/woodrow/Library/Caches/antibody/https-COLON--SLASH--SLASH-github.com-SLASH-romkatv-SLASH-powerlevel10k )\n$(~/.zshrc)" > ~/.zshrc
		echo -e "source /Users/woodrow/Library/Caches/antibody/https-COLON--SLASH--SLASH-github.com-SLASH-romkatv-SLASH-powerlevel10k/powerlevel10k.zsh-theme\n$(~/.zshrc)" > ~/.zshrc
		echo -e "source /Users/woodrow/Library/Caches/antibody/https-COLON--SLASH--SLASH-github.com-SLASH-romkatv-SLASH-powerlevel10k/powerlevel9k.zsh-theme\n$(~/.zshrc)" > ~/.zshrc
	fi
}


install_2() {
	echo "$1"
	curl -L -s -o "$1/SourceCodePro-Light.ttf" \
		https://github.com/adobe-fonts/source-code-pro/raw/release/TTF/SourceCodePro-Light.ttf

if [ "$(uname -s)" = "Darwin" ]; then
	if command -v brew >/dev/null 2>&1; then
		brew tap homebrew/cask-fonts
		brew cask install font-source-code-pro
	else
		install_2 ~/Library/Fonts
	fi
else
	mkdir -p ~/.fonts
	install_2 ~/.fonts
fi
}

install
RESULT=$?
if [ $RESULT -ne 0 ]; then
	install_2
fi
