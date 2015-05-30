# Vagrant_LASP_server
Vagrantfile, shell provisioner, Apache conf file, and directory structure for a basic LASP (Linux, Apache, SQLite, PHP) server.

## System Requirements
To use this Vagrantfile you will need a basic Vagrant setup.  This includes [Vagrant](https://www.vagrantup.com/) and a VM provider, such as Oracle's [VirtualBox](https://www.virtualbox.org).  For more information on how to use Vagrant, see the Vagrant *[Getting Started](https://docs.vagrantup.com/v2/getting-started/index.html)* page.  You will also need root user (sudo) permissions to launch the VM, as we are assigning a custom hostname.

## Configuration
### Directory Structure:
```
Root Folder (This is the main folder for the project and can be of any name that you choose.)
|
- /public_html (This folder contains all the files for your site.)
|
- /conf (This folder contains the Apache .conf file for site configuration.)
|
- /vagrant (This folder contains the Vagrantfile and lasp.sh provisioner file.)
```

### Project Name:
By default the site will be named lasp.dev.  If you wish to change this to a different name (e.g. my-site.dev) you must change every reference to lasp.dev in the following files to the custom name:
- /conf/lasp.dev.conf *Filename must be changed to the new name (e.g. lasp.dev.conf becomes my-site.dev.conf)*
- /vagrant/Vagrantfile
- /vagrant/lasp.sh *We recommend that you change this filename as well.*
The easiest way to accomplish this task is to do a search and replace through the above files for 'lasp'.  This will only work **if** you change the filename of lasp.sh to the new name.

## Setup
1. Clone or download the ZIP archive of this Git repository to your project folder.

2. Open your console go to the vagrant directory of the project.  Type `$ vagrant up`.  This will load the Vagrant VM with a 64-bit Linux Ubuntu machine.  The console will ask for your sudo password to set the custom hostname.

3. Once the VM has finished loading open your web browser and navigate to 'http://lasp.dev'.  You should see a basic webpage that says 'Welcome to Vagrant!' and the current time in GMT.  To stop the server enter `$ vagrant halt` into your console while in the /vagrant directory.  You can also enter `$ vagrant destroy` to completely remove the VM from your system.