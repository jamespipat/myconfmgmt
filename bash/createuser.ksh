#!/bin/ksh

pass="P@ssw0rd"
insteam=("edmacc" "d2550_01" "emerid")
infrateam=("infacc01" "infacc02" "ssmon" "satlusr")
appsupteam=("apsacc01" "apsacc02")
acforchgteam=("chgacc01" "chgacc02")
acforappteam="appusr"
acforhardteam="TSCMUsr"
acforpatchteam="pa_user"
itiateam="usermgmt"


# create user

for user in ${insteam[@]} ;do
    mkuser gecos="Account for EDMZ System (INS Team)" $user &>/dev/null
done

for user in ${infrateam[@]} ;do
    mkuser gecos="Account for EDMZ System (Infra Team)" $user &>/dev/null
done

for user in ${appsupteam[@]} ;do
    mkuser gecos="Account for EDMZ System  (Application Support Team)" $user &>/dev/null
done

for user in ${acchgteam[@]} ;do
    mkuser gecos="Account for Change team" $user &>/dev/null
done

for user in ${acforappteam[@]} ;do
    mkuser gecos="Account for Application" $user &>/dev/null
done

for user in ${acforhardteam[@]} ;do
    mkuser gecos="Account for Hardening and VA scan System (INS Team)" $user &>/dev/null
done

for user in ${acforpatchteam[@]} ;do
    mkuser gecos="Account for Patch Automation" $user &>/dev/null
done

for user in ${itiateam[@]} ;do
    mkuser gecos="Account for ITIA team" $user &>/dev/null
done
 

# Reset password

for user in ${insteam[@]} ${infrateam[@]} ${appsupteam[@]} ${acchgteam[@]} ${acforappteam[@]} ${acforhardteam[@]} ${acforpatchteam[@]} ${itiateam[@]};do
    echo "$user:$pass" | chpasswd -c &>/dev/null
    chuser maxage=6 $user &>/dev/null
done

for user in TSCMUsr edmacc ssmon pa_user; do
    chuser maxage=0 $user &>/dev/null
done

echo "edmacc:edmacc123" | chpasswd -c &>/dev/null
echo "ssmon:ssmon@690" | chpasswd -c &>/dev/null

# Add permission sudo

for user in ${insteam[@]} ${infrateam[@]} ${appsupteam[@]} ${acchgteam[@]} ${acforappteam[@]} ${acforhardteam[@]} ${acforpatchteam[@]} ${itiateam[@]};do
    echo "$user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
    echo "Defaults:$user !requiretty" >> /etc/sudoers
done