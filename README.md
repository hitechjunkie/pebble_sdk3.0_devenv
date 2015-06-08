# pebble sdk 3.0 dev environment

Prereqs:  

[Virtualbox](https://www.virtualbox.org/wiki/Downloads)  
[Vagrant](https://www.vagrantup.com/downloads.html)  
[PebbleSDK3.0](http://developer.getpebble.com/sdk/download/)  
[Pebble ARM toolchain](http://developer.getpebble.com/sdk/install/linux/)  

Provision or resume the vm:  
copy the pebble sdk and arm toolchain tarballs into the same directory as Vagrantfile  
edit bootstrap.sh if any version/filenames changed  
```
vagrant up
```

Work in the environment:  
the ~/projects directory in the vm is sync'ed to the host, can be edited with editor in the host  
```
vagrant ssh
```  

Turn the vm off temporarily:  
```
vagrant suspend
```

Completely remove the vm:  
```
vagrant destroy
```
