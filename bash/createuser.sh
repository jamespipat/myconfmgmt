#!/bin/bash

pass="P@ssw0rd"
insteam=("edmacc" "d2550_01" "emerid")
Infrateam=("infacc01" "infacc02" "ssmon" "satlusr")
appsupteam=("apsacc01" "apsacc02")
acforchgteam=("chgacc01" "chgacc02")
acforappteam=appusr
acforhardteam=TSCMUsr
acforpatchteam=pa_user
itiateam=usermgmt

# createuser() {
#     for user in ${1[*]} ;do
#         useradd -c $2 $user &>/dev/null
#     done
# }


# createuser '$insteam' "Account for EDMZ System (INS Team)"
# createuser '$Infrateam' "Account for EDMZ System (Infra Team)"
# createuser '$appsupteam' "Account for EDMZ System (Application Support Team)"
# createuser $acforchgteam
# createuser $acforappteam
# createuser $acforhardteam
# createuser $acforpatchteam
# createuser $itiateam

# create user
# for user in ${insteam[*]} ;do
#     useradd -c "Account for EDMZ System (INS Team)" $user &>/dev/null
# done

# for user in ${Infrateam[*]} ;do
#     useradd -c "Account for EDMZ System (Infra Team)" $user &>/dev/null
# done

# for user in ${appsupteam[*]} ;do
#     useradd -c "Account for EDMZ System  (Application Support Team)" $user &>/dev/null
# done

# for user in ${acchgteam[*]} ;do
#     useradd -c "Account for Change team" $user &>/dev/null
# done

# for user in ${acforappteam[*]} ;do
#     useradd -c "Account for Application" appusr &>/dev/null
# done

# for user in ${acforhardteam[*]} ;do
#     useradd -c "Account for Hardening and VA scan System (INS Team)" TSCMUsr &>/dev/null
# done

# for user in ${acforpatchteam[*]} ;do
#     useradd -c "Account for Patch Automation" pa_user &>/dev/null
# done

# for user in ${itiateam[*]} ;do
#     useradd -c "Account for ITIA team" usermgmt &>/dev/null
# done

# change password and pwd expiration
# for user in appusr infacc01 infacc02 d2550_01 emerid apsacc01 apsacc02 satlusr chgacc01 chgacc02 usermgmt ;do
#     echo "$pass" | passwd --stdin $user &>/dev/null
#     chage -E $(date --date='45days' +%Y-%m-%d) $user &>/dev/null
# done

# echo "edmacc123" | passwd --stdin edmacc &>/dev/null
# echo "ssmon@690" | passwd --stdin ssmon &>/dev/null

# # sudo permission

for user in ${insteam[@]} ${Infrateam[@]} ${appsupteam[@]} ${acchgteam[@]} ${acforappteam[@]} ${acforhardteam[@]} ${acforpatchteam[@]} ${itiateam[@]};do
    echo "$user ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
done
