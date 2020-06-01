#!/bin/bash
file='/root/checkuser.txt'
myvar=$(cat /etc/passwd | cut -d":" -f 1)
myuser=($myvar)
comstatus=''
status=''
expire=''
expireval=''
sudoperm=''
nohuman=''
uidnum=''
uid=''

 

if [ -e $file ]; then
    rm -rf "$file"
fi

 

echo 'user  |  account status  |  expiration  |  Account type  | sudo permission  |  no human login' >> /root/checkuser.txt
for user in ${myuser[@]}; do
    #check account status
    comstatus=$(egrep "^$user.*\!\!|^$user.*\*" /etc/shadow)
    # awk "/$user/ && /\!\!/" /etc/shadow
    if [[ -n $comstatus ]]; then
        status='disable'
    else
        status='active'
    fi

 

    #check expiration
    expire=$(egrep "^$user" /etc/shadow | cut -d':' -f 5)
    if [[ $expire -eq 45 ]]; then
        expireval='45days'
    else
        expireval="$expire"
    fi

 

    #check uid
    uidnum=$(egrep "^$user" /etc/passwd | cut -d':' -f 3)
    if [[ $uidnum -gt 999 ]]; then
        uid='User'
    else
        uid='System'
    fi

 


    #check sudo permission
    comstatus=$(egrep "^$user.*ALL.*ALL" /etc/sudoers || egrep "wheel.*$user" /etc/group)
    if [[ -n $comstatus ]]; then
        sudoperm='powerful'
    else
        sudoperm='user'
    fi

 

    #check no human login
    comstatus=$(egrep "^$user" /etc/sudoers | egrep 'requiretty')
    if [[ -n $comstatus ]]; then
        nohuman='yes'
    else
        nohuman='no'
    fi
    echo "$user  |  $status  |  $expireval  |  $uid  |  $sudoperm  |  $nohuman" >> /root/checkuser.txt

 

done