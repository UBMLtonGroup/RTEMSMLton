# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "trusty32"
  config.vm.box_url = "https://cloud-images.ubuntu.com/vagrant/trusty/current/trusty-server-cloudimg-i386-vagrant-disk1.box"

  config.vm.network :public_network

  config.vm.synced_folder ".", "/vagrant_data"

  config.vm.define "rtemsbox1" do |rtemsbox1|
    rtemsbox1.vm.hostname = "rtemsbox1"
    rtemsbox1.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "2048"]
      vb.customize ["modifyvm", :id, "--ioapic", "on"]
      vb.customize ["modifyvm", :id, "--cpus", "2"] 
    end
  end

  $rootscript = <<SCRIPT
  echo -e "net.ipv6.conf.all.disable_ipv6 = 1\nnet.ipv6.conf.default.disable_ipv6 = 1\nnet.ipv6.conf.lo.disable_ipv6 = 1\n" >> /etc/sysctl.conf
  sysctl -p
  apt-get update -y
  apt-get install -y python-pip build-essential python-dev libffi-dev git bison cvs g++ flex python-dev zlib1g-dev libncurses-dev  unzip automake autoconf qemu
  cd /tmp
  wget http://ftp.gnu.org/gnu/texinfo/texinfo-4.13.tar.gz
  gzip -dc < texinfo-4.13.tar.gz | tar -xf -
  cd texinfo-4.13
  ./configure --prefix=/usr/local
  make
  make install
  apt-get install -y mlton
  echo " " >> /etc/ssh/sshd_config
  echo X11UseLocalhost no >> /etc/ssh/sshd_config
  restart ssh
SCRIPT

  $nonrootscript = <<SCRIPT
  git clone https://github.com/jeffmurphy/rtems-source-builder.git
  mkdir -p ~/development/rtems/4.10
  cd rtems-source-builder/rtems
  ../source-builder/sb-set-builder --log=l-sparc.txt --prefix=$HOME/development/rtems/4.10 --with-rtems 4.10/rtems-sparc
  ../source-builder/sb-set-builder --log=l-i386.txt  --prefix=$HOME/development/rtems/4.10 --with-rtems 4.10/rtems-i386
  cd $HOME
  wget http://www.gaisler.com/anonftp/tsim/tsim-eval-2.0.36.tar.gz
  tar -zxf tsim-eval-2.0.36.tar.gz
  git clone https://github.com/RTEMS/examples-v2.git
  cd examples-v2
  git checkout examples-v2-4-10-branch
SCRIPT

  config.vm.provision "shell", inline: $rootscript
  config.vm.provision "shell", inline: $nonrootscript, privileged: false


end
