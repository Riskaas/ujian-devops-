# ujian-devops-
Cara memasang web dari repo https://github.com/BlankOn/blankon-linux-static-web di server.

*Buat repo baru di akun github (ujian-devops-)

*Clone repo di alamat yang tadi dengan cara >>git clone git@github.com:BlankOn/blankon-linux-static-web.git

*Buat folder vagrantujian dan ketik >>vagrant init debian/jessie64

*Pindahkan hasil clone di ujian-devops- ke dalam folder vagrantujian

*Buka vagrantfile dan lakukan konfigurasi

*Buat file bash script.sh di dalam folder vagrantujian, disini kita akan mengisi script.sh dengan pengaturan 
>>sudo apt install -y nginx curl vim' (instal nginx)
>>sudo rm -rf /var/www/index.nginx-debian.html' (hapus file html di var/www/html)
>>sudo cp -r /vagrant/blankon-linux-static-web/index.html /var/www/html' (copy file html di var/www/html)
>>sudo service nginx restart (restart nginx)

* >>vagrant up (menjalankan vagrant)
>>vagrant provision (menjalankan provision)

*Buka browser dengan alamat 192.168.2.10 (alamat yang di set di vagrant)
