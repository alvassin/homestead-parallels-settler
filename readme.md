# Laravel Parallels Desktop Settler

[Laravel Homestead](http://laravel.com/docs/5.1/homestead) does not have official support for [Parallels](https://www.parallels.com/products/desktop/) Vagrant provider, that is much faster then VirtualBox. You can build development environment for Parallels yourself using this repo.

## Pre-built boxes
You can find pre-built boxes at [Hashicorp website ](https://atlas.hashicorp.com/alvassin/boxes/homestead-parallels/versions/1.0.0). 

To use vagrant pre-built box, run: 
```sh
vagrant init alvassin/homestead-parallels; 
vagrant up --provider parallels
```

