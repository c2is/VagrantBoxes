## Your custom LAMP server

* Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* Install [Vagrant](http://downloads.vagrantup.com/)
* Create and customize your project's [Vangrantfile](https://github.com/c2is/VagrantBoxes/blob/master/your-lamp-server/Vagrantfile)
* Launch vagrant in your project root directory : `vagrant up`

On Ubuntu, use latest versions, not the preinstalled packages.  
And you need to install `nfs-kernel-server` :
```shell
$ sudo apt-get install nfs-kernel-server
```

### Usage

##### Local

* HTTP access to virtual LAMP server : `localhost:8888` (ie: in your browser),
* SSH access to virtual LAMP server: `vagrant ssh` in your project root directory.

##### Virtual LAMP server

* Source code is available in : `/vagrant` (use SSH access)