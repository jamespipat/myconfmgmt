#!/bin/bash

pass="P@ssw0rd"
insteam=("edmacc" "d2550_01" "emerid")
infrateam=("infacc01" "infacc02" "ssmon" "satlusr")
appsupteam=("apsacc01" "apsacc02")
acforchgteam=("chgacc01" "chgacc02")
acforappteam=appusr
acforhardteam=TSCMUsr
acforpatchteam=pa_user
itiateam=usermgmt 
alluser=("${insteam[@]}" "${infrateam[@]}" "${appsupteam[@]}" "${acforchgteam[@]}" "${acforappteam[@]}" "${acforhardteam[@]}" "${acforpatchteam[@]}" "${itiateam[@]}")

createuser() {
    for user in $1 ;do
        useradd -c "$2" $user &>/dev/null
    done
}

# create user
createuser ${insteam[@]} "Account for EDMZ System (INS Team)"
createuser ${infrateam[@]} "Account for EDMZ System (Infra Team)"
createuser ${appsupteam[@]} "Account for EDMZ System (Application Support Team)"
createuser ${acforchgteam[@]} "Account for Change team"
createuser $acforappteam "Account for Application"
createuser $acforhardteam "Account for Hardening and VA scan System (INS Team)"
createuser $acforpatchteam "Account for Patch Automation"
createuser $itiateam "Account for ITIA team"

# change password and pwd expiration
for user in ${alluser[@]} ;do
    echo "$user" 
    echo "$pass" | passwd --stdin $user &>/dev/null
    chage -E $(date --date='45days' +%Y-%m-%d) $user &>/dev/null
done

chage -E -1 $acforhardteam &>/dev/null
chage -E -1 ${insteam[0]} &>/dev/null
chage -E -1 ${infrateam[2]} &>/dev/null
chage -E -1 $acforpatchteam &>/dev/null

echo "edmacc123" | passwd --stdin ${insteam[0]} &>/dev/null
echo "ssmon@690" | passwd --stdin ${infrateam[2]} &>/dev/null

# # sudo permission

# for user in ${insteam[@]} ${infrateam[@]} ${appsupteam[@]} ${acchgteam[@]} ${acforappteam[@]} ${acforhardteam[@]} ${acforpatchteam[@]} ${itiateam[@]};do
#     echo "$user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
# done


## how to use getopts ??