#!/bin/bash

##### (Cosmetic) Colour output
red=$(tput setaf 1)      # Issues/Errors
green=$(tput setaf 2)    # Success
yellow=$(tput setaf 3)   # Warnings/Information
blue=$(tput setaf 4)     # Heading
bold=$(tput bold  setaf 7)     # Highlight
reset=$(tput setaf 7)       # Norma

# Quick Linux Local Enumeration Script 
# v1.0

cat << "EOF"
                       .
                        `:.
                          `:.
                  .:'     ,::
                 .:'      ;:'
                 ::      ;:'
                  :    .:'
                   `.  :.
          _________________________
         :                         :
     ,---:      HighOn.Coffee      :
    : ,'"`:                       :'
    `.`.  `:                     :'
      `.`-._:                   :
        `-.__`.               ,' 
    ,--------`"`-------------'--------.
     `"--.__                   __.--"'
            `""-------------""'

EOF

printf "URL: $green http://highon.coffee $reset \n"

printf "Version: $yellow 1.0 $reset \n"

printf "Twitter: $blue @HighOn_Coffee $reset \n"
printf "Author: $blue @Arr0way $reset \n"

printf "Disclaimer: \n"
printf "\n"
printf "$red HighOn.Coffee is not responsible for misuse or for any damage that you may cause! \n
 You agree that you use this software at your own risk. $reset  \n"

sleep 1.2

printf "\n"
printf "\n"

sleep 0.2

# Logs output to enum.log
(

printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#' 
printf "##\n"
printf "$red"
printf "$blue## $red Linux Version\n" 
printf "$blue"
printf "##\n" 
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n$reset"

/bin/cat /etc/issue
printf "\n" 
/bin/cat /etc/*-release

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Kernel Info"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/bin/uname -ar

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Network Info"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"


/bin/cat /etc/sysconfig/network
printf "\n"
/bin/cat /etc/resolv.conf
printf "\n"
/bin/cat /etc/sysconfig/network-scripts/ifcfg-eth0
printf "\n"
/sbin/ip
printf "\n"
/sbin/ifconfig
printf "\n"

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red File System Info"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"
/bin/df -h

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Mounted File Systems with Pretty Output"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"
/bin/df -h

mount | column -t

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red /etc/fstab File Contents"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"
/bin/cat /etc/fstab


printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red /etc/passwd File Contents"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/bin/cat /etc/passwd

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red /etc/passwd File Contents"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/bin/cat /etc/shadow

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red /etc/group File Contents"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/bin/cat /etc/group


printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red /etc/sudoers File Contents"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"
/bin/cat /etc/sudoers


printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red root owned SUID Files"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/find / -user root -perm -4000 -print 2>/dev/null

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red root owned GUID Files"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/find / -group root -perm -2000 -print  2>/dev/null

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red World Writable Directories"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"
/usr/bin/find / -perm -222 -type d 2>/dev/null  


printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#' 
printf "##\n"
printf "$red"
printf "$blue## $red SUID Owned by any user\n" 
printf "$blue"
printf "##\n" 
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n$reset"

/usr/bin/find / -perm -4000 -o -perm -2000 -print 2>/dev/null

printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#' 
printf "##\n"
printf "$red"
printf "$blue## $red Files with no owner\n" 
printf "$blue"
printf "##\n" 
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n$reset"

/usr/bin/find / -nouser -print 2>/dev/null

printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#' 
printf "##\n"
printf "$red"
printf "$blue## $red Files with no group\n" 
printf "$blue"
printf "##\n" 
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n$reset"

/usr/bin/find / -nogroup -print 2>/dev/null


printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red World Writable FIles"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/find / -type f -perm 0777 2>/dev/null

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Files Owned by Current User"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/find / -user $(whoami) 2>/dev/null


printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red /home and /root Permissions"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"
/bin/ls -ahlR /home/
/bin/ls -ahlR /root/ 


printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Logged on Users"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/w


printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Last Logged on Users"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

/usr/bin/last

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Processes Running as root"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"
/bin/ps -ef | /bin/grep root


printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red Installed Packages for RHEL / Debian Based Systems"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

# Enumarate CentOS / Ubuntu Boxes 
# This is not a great way of ID'ing a box, but I'm being lazy


printf "\n"
/usr/bin/dpkg -l

printf "\n"
/usr/bin/rpm -qa

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red CentOS / RHEL Services that start at Boot"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"

chkconfig --list | grep $(runlevel | awk '{ print $2}'):on

printf "\n"
printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "##"
printf "\n"
printf "$red"
printf "$blue## $red List of init Scripts aka System Services"
printf "\n"
printf "$blue"
printf "##"
printf "\n"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "\n"
printf "$reset"


ls /etc/init.d/

printf "$blue"
printf '%*s\n' "${COLUMNS:-$(tput cols)}" '' | tr ' ' '#'
printf "$reset"

printf "\n More Linux enumeration commands can be found at: $blue https://highon.coffee/docs/linux-commands  \n"

printf "\n $red So long, and thanks for all the fish... \n $reset"
printf "\n"
# outputs to enum.log in current dir
) 2>&1 | /usr/bin/tee enum.log
