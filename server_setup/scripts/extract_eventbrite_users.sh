#!/bin/bash

# Transform an eventbrite export into a simpler users file to be used as input to create users
# cgates
# 2/16/2022

set -eu

PASSWD_FILE=$1 #single column of generated passwds with header line. Lines must be >= participants
PARTICIPANTS_FILE=$2 #participants/eventbrite-registrants.20210419.txt 

EMAIL_FIELD_INDEX=5

echo -e "#username\tpasswd\temail\tfirst_name\tlast_name\torder_num\torder_date"
#awk -F '\t' 'BEGIN {OFS="\t"} 
#FNR==NR { passwd[FNR]=$1 ; next } 
#FNR==1 {next} /^#/ {next} 
#NF>=1 {user=tolower(gensub(/@.*/, "","g", $5)); print user, passwd[FNR], $5, $3, $4, $1, $2}' $PASSWD_FILE participants/20220228/report-2022-02-15T1547.tsv 

awk -F '\t' -v email_field_index=$EMAIL_FIELD_INDEX \
	'BEGIN {OFS="\t"}
        FNR==NR { passwd[FNR]=$1 ; next }
        FNR==1 {next}
        /^#/ {next}
	NF>=1 {
		user=tolower(gensub(/@.*/, "","g", $email_field_index)); 
		print user, passwd[FNR], $email_field_index, $3, $4, $1, $2}' $PASSWD_FILE $PARTICIPANTS_FILE
