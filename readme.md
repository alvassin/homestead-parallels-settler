Provides [Parallels Desktop](https://www.parallels.com/products/desktop/) support for [Laravel Homestead](http://laravel.com/docs/5.1/homestead) development environment.

## Install
The way i install Homestead on my mac (i consider you have [composer](https://getcomposer.org/) & php installed).

Install & init homestead:
```bash
# Install homestead globally
composer global require "laravel/homestead=~2.0"

# Init homestead (creates ~/.homestead folder) 
homestead init
```

Update following values in `~/.homestead/Homestead.yaml`:
```
box: alvassin/homestead-parallels
provider: parallels
```

Run homestead using `homestead up`. Enjoy.

## Pre-built boxes
You can find pre-built boxes at [Hashicorp website ](https://atlas.hashicorp.com/alvassin/boxes/homestead-parallels/versions/1.0.0). To use pre-built box, run: 
```bash
vagrant init alvassin/homestead-parallels; 
vagrant up --provider parallels
```

## Build from source
If you want to build Homestead Vagrant box yourself, perform following commands:
```bash
git clone git@github.com:alvassin/homestead-parallels-settler.git
cd homestead-parallels-settler
bash build.sh
```
