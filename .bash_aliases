
#####################################

# My aliases

#Syncing to HDD
alias syncall='rsync -avh /mnt/Gray\ Terminal/PY\ ProgPrac/ /media/raghu/Re/PY\ ProgPrac/ ;\
rsync -avh /mnt/Gray\ Terminal/LaTeXprac/ /media/raghu/Re/LaTeXprac/ ;\
rsync -avh /mnt/Gray\ Terminal/Novel/ /media/raghu/Re/Novel/ ;\
rsync -avh /mnt/Gray\ Terminal/Documents/ /media/raghu/Re/Documents/ ;\
rsync -avh /mnt/Gray\ Terminal/Research\ Work/ /media/raghu/Re/Research\ Work/ ;\
rsync -avh /mnt/Gray\ Terminal/KerasPrac /media/raghu/Re/ ;\
rsync -avh /mnt/Gray\ Terminal/Finance/ /media/raghu/Re/Finance/ ;\
rsync -avh /mnt/Gray\ Terminal/Lists/ /media/raghu/Re/Lists/ ;\
rsync -avh /mnt/Gray\ Terminal/Notes/ /media/raghu/Re/Notes/ ;\
rsync -avh /mnt/Gray\ Terminal/C\ ProgPrac /media/raghu/Re/C\ ProgPrac'

# Update and upgrade
alias upandup='sudo apt-get update && sudo apt-get upgrade; notify-send "Updates Done" "Your computer is supposed to be up to date!" -u normal -t 20000'

# I don't think I'll use this anymore the vim in the repo is good enough for me.
# Vim Flatpak
#alias fvim='flatpak run org.vim.Vim'

# Flashy clear. Clear followed by neofetch
alias clearflash='clear;neofetch'

#shortcuts for 13 configs. Seems like I'll be visiting them a lot for some time.
alias confi='vim /home/raghu/.config/i3/config'
alias confs='vim /home/raghu/.config/i3status/config'

# A little setup to keep a record of boot times.
alias speedofboot='echo $(date +%Y%m%d_)$(who -b | awk '"'"'{print $4}'"'"' ) " " $(systemd-analyze | grep =| cut -d'=' -f2) >>/home/raghu/Documents/Boot_Time.txt'

# An ls alias for 'ls -t', since, as of 16:23, 25/10/2020, I thought I use the option enough to warrant the creation of an alias
alias lt='ls -t'


# A simple implementation of Pomodoro Technique, I think.
alias pomo='sleep 25m; notify-send -u critical -t 30000 "Break time!""Take a walk, buddy.\n It is important.\n Or do 20 push-ups."'
#####################################
