# ~/.bashrc: executed by bash(1) for non-login shells.
#see /usr/share/doc/bash/examples/startup-files for examples

# If running interactively, then:
GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"

# powerline setup 14/10/25
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1

#Enable Powerline bash prompt
if [ -f /home/vchc80/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh ]; then
   source /home/vchc80/.local/lib/python2.7/site-packages/powerline/bindings/bash/powerline.sh
fi

#Setting
source ~/.bash_profile

if [ "$PS1" ]; then

   # enable color support of ls and also add handy aliases
   eval `dircolors`
   alias ls='ls --color=auto '
   alias ll='ls -l'
   alias la='ls -A'
   alias l='ls -CF'
   alias dir='ls --color=auto --format=vertical'
   alias vdir='ls --color=auto --format=long'
   alias grep='grep --color=auto '
   # set a fancy prompt

   #PS1='\u@\h:\w\$ ' #default
fi
