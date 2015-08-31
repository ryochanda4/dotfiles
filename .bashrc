#!/bin/sh

# User specific environment and startup programs
export PATH=$PATH:$HOME/bin

# ruby
# ----------------------------------------#  
# Requirement:
#  1. install rbenv , ruby-build
#    $ brew install readline ruby-build rbenv
#  2. export .rbenv path to .bashrc
#    $ export PATH=$HOME/.rbenv/bin:$PATH
#    $ export PATH=$HOME/.rbenv/shims:$PATH
#    $ eval "$(rbenv init -)"
#  3. install ruby you need 
#    $ rbenv install 1.9.3-p448
#    $ rbenv install 2.0.0-p247
#  4. see ruby versions you installed
#    $ rbenv versions
#  5. see ruby version which is used in this Mac
#    $ rbenv global
#  6. change ruby version
#    $ rbenv global 1.9.3-p448 
#    $ ruby -v
#
# Reference URL
# http://qiita.com/checkpoint/items/f8e65380d9cb0182218d

#export PATH=$HOME/.rbenv/bin:$PATH
#export PATH=$HOME/.rbenv/shims:$PATH
#eval "$(rbenv init -)"

case "${OSTYPE}" in

	### for mac ###
	darwin*)
		# android sdk
#		export PATH=$HOME/_adt/adt-bundle-mac-x86_64/sdk/tools:$PATH
#		export PATH=$HOME/_adt/adt-bundle-mac-x86_64/sdk/platform-tools:$PATH
		
		# dircolors
		# --------------------------------------- #
		# Requirement:
		# $ brew install coreutils
		# $ eval $(gdircolors path/to/.dir_colors)
		# 
		# Reference URL
		# http://qiita.com/yuyuchu3333/items/84fa4e051c3325098be3
		
		eval $(gdircolors $HOME/.dir_colors)
		alias ls="gls --color=auto"
		alias ll="gls -laG --color=auto"

	;;
	### for linux ###
	linux*)
		alias rm='rm -i'
		alias cp='cp -i'
		alias mv='mv -i'
	  	alias la='ls -la'
		alias vi='vim'
		alias bower='bower --allow-root'

		# Source global definitions
		if [ -f /etc/bashrc ]; then
			. /etc/bashrc
		fi
  	;;
esac
