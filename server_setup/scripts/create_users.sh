#!/bin/bash

set -ue

date
export USER_PASSWD_FILE=$1 # first column must be email, second must be passwd
export USER_SETUP_SCRIPT=$2 #"/workshop/cf/workshop_setup/scripts/user_setup.sh /workshop/etc/Miniconda3-latest-Linux-x86_64.sh /workshop/etc/bash.rc/bashrc.postlude" 
export PRIMARY_GROUP='workshop-users'
export USER_HOME=/home/workshop/



users=()
existing_users=()
declare -A user_passwd
while IFS==$'\t' read -r -a line; do
    [[ "${line[0]}" =~ ^#.*$ ]] && continue
    user=${line[0]}

    if grep "^${user}:" /etc/passwd > /dev/null; then
        existing_users+=($user)
        continue 
    fi

    users+=($user)
    passwd=${line[1]}
    user_passwd[$user]=$passwd
done < "$USER_PASSWD_FILE"

if (( ${#existing_users[@]} )); then
    echo skipping existing users: ${existing_users[@]}
fi
echo ready to add ${#users[@]} users: ${users[@]}
read -p "Press any key to continue..."

added_users=()
for user in ${users[@]}; do
    echo ${user} : add user
    export user
    export pass=${user_passwd[$user]}
    export uhome=${USER_HOME}${user}
    sudo useradd \
	    -s /bin/bash \
	    -m -d ${uhome} \
	    -p "$(openssl passwd -1 $pass)" \
            -g ${PRIMARY_GROUP} \
	    $user
    sudo -H -u $user bash -c "bash $USER_SETUP_SCRIPT"
    added_users+=($user)
    echo added ${user}
done

echo added ${#added_users[@]} of ${#users[@]} users: ${added_users[@]}

if (( ${#existing_users[@]} )); then
    echo skipped existing users: ${existing_users[@]}
fi

date
echo done
