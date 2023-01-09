sudo cp -r ./musicBox /usr/local/bin/musicBox

cat <<EOF > /etc/systemd/system/musicBox.service
[Unit]
Description=MusicBox Service

[Service]
ExecStart=/bin/bash /usr/local/bin/musicBox/start.sh

[Install]
WantedBy=multi-user.target
EOF

sudo systemctl enable musicBox.service
sudo systemctl start musicBox.server