#!/bin/bash
curl https://rclone.org/install.sh | bash
printf "q\n" | rclone config
wget -O /root/.config/rclone/rclone.conf "https://raw.githubusercontent.com/wonderfulgo/kampret/main/rclone.conf"
git clone  https://github.com/magnific0/wondershaper.git
cd wondershaper
make install
cd
rm -rf wondershaper
echo > /home/limit
apt install msmtp-mta ca-certificates bsd-mailx -y
cat > /etc/msmtprc  << END
# SMTP Configuration By SweetieSSH
defaults
port 587
tls on
tls_trust_file /etc/ssl/certs/ca-certificates.crt
auth on
logfile        ~/.msmtp.log

# SMTP Account Configuration
account        SweetieSSH
port           587
host           smtp.gmail.com
from           Successfull Backup VPS
user           kudasapi57@gmail.com 
password       mmgrwcbjbrcgaxct
account default : SweetieSSH
END
chown -R www-data:www-data /etc/msmtprc
cd /usr/bin
wget -O autobackup "https://raw.githubusercontent.com/wonderfulgo/kampret/main/autobackup.sh"
wget -O backup "https://raw.githubusercontent.com/wonderfulgo/kampret/main/backup.sh"
wget -O bckp "https://raw.githubusercontent.com/wonderfulgo/kampret/main/bckp.sh"
wget -O restore "https://raw.githubusercontent.com/wonderfulgo/kampret/main/restore.sh"
wget -O strt "https://raw.githubusercontent.com/wonderfulgo/kampret/main/strt.sh"
wget -O limit-speed "https://raw.githubusercontent.com/wonderfulgo/kampret/main/limit-speed.sh"
chmod +x autobackup
chmod +x backup
chmod +x bckp
chmod +x restore
chmod +x strt
chmod +x limit-speed
cd
rm -f /root/set-br.sh

