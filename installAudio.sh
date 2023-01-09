sudo apt-get install -y python3 python3-pip git

wget -q https://github.com/HendrikHeine/rpi-audio-receiver/archive/refs/heads/main.zip
unzip main.zip
rm main.zip

cd rpi-audio-receiver-main
sudo ./install.sh
