#To set it for your computer architecture change "armhf" to your architecture:
# - on nano use Ctrl-\ to replace word armhf with your architecture
#Do not remove "all" or the setup will break
echo "#####minetest-server setup########"
echo "#	github.com/FlameFireling/mtss/ #"
echo "##################################"
echo "to exit press Ctrl-C"
echo "Downloading and installing minetest-(data/server) packages..."
wget http://ftp.pl.debian.org/debian/pool/main/m/minetest/minetest-data_0.4.16+repack-4_all.deb && http://ftp.pl.debian.org/debian/pool/main/m/minetest/minetest-server_0.4.16+repack-4_armhf.deb
sudo dpkg -i minetest-data_0.4.16+repack-4_all.deb minetest-server_0.4.16+repack-4_armhf.deb
sudo apt-get -f install
echo "Configuring minetest..."
cat "max_block_send_distance = 6" >> /etc/minetest/minetest.conf
cat "max_simultaneous_block_sends_per_client = 1" >> /etc/minetest/minetest.conf
cat "max_simultaneous_block_sends_server_total = 20" >> /etc/minetest/minetest.conf
cat "active_block_range = 1" >> /etc/minetest/minetest.conf
cat "server_map_save_interval = 15.3" >> /etc/minetest/minetest.conf
chmod -R a+w /var/log/minetest/minetest.log
echo "Configure your server..."
sudo nano /etc/minetest/minetest.conf
echo "use command minetest-server to start your server!"

