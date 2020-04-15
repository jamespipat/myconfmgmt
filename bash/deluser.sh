#!/bin/bash

user=("appusr" "TSCMUsr" "edmacc" "infacc01" "infacc02" "d2550_01" "emerid" "ssmon" "apsacc01" "apsacc02" "satlusr" "pa_user" "chgacc01" "chgacc02" "usermgmt")

for user in ${user[*]}; do
    userdel -r $user
done