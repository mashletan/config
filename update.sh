RULE_HANDLE0=$(nft --echo --handle insert rule ip filter output tcp dport 11371 log prefix \"ACCEPT OUT HKP\" accept | awk '/handle/ {print $NF}')
RULE_HANDLE1=$(nft --echo --handle insert rule ip filter output tcp dport 873 log prefix \"ACCEPT OUT RSYNC\" accept | awk '/handle/ {print $NF}')

eix-sync

nft delete rule ip filter output handle $RULE_HANDLE0
nft delete rule ip filter output handle $RULE_HANDLE1

FILE="$(ls /var/db/repos/another-brave-overlay/www-client/brave-browser/brave-browser*)"
perl -0777 -i -pe 's/\t\|\| \(\n\t\tx11-libs\/gtk\+:3\[X\]\n\t\tgui-libs\/gtk:4\[X\]\n\t\)//g' "$FILE"

emerge -uUDN @world --keep-going

chmod 4755 /opt/brave.com/brave/chrome-sandbox
