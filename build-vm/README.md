This document specifies the instructions for creating an Ubuntu 14.04 LTS Virtual Machine with Oracle Java 7 and Eclipse Mars installed by running Vagrant scripts.<br/>

<b>Steps:</b>

* Download & Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads).<br/>
* Download & Install [Vagrant](https://www.vagrantup.com/downloads.html).<br/>
* Create a new directory and place this [VagrantFile]() in it.<br/>
* Navigate to this directory from command prompt/terminal.<br/>
* Run the command "vagrant up" on the command prompt/terminal.<br/>
  * This will create a new Ubuntu 14.04 LTS Virtual Machine with Desktop and install Oracle Java 7 and Eclipse Mars in it. Installing Eclipse might especially take some time.<br/>
* The Virtual Machine won't require you to login. But in case it goes to sleep, enter "vagrant" as the username as well as password.<br/>

<b>References:</b>

* https://docs.vagrantup.com/v2/getting-started/index.html
* http://thediscoblog.com/blog/2013/11/18/provisioning-ubuntu-with-java-in-3-steps/
* https://github.com/abstools/abstools/blob/master/Vagrantfile
