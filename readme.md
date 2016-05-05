Provides [Parallels Desktop](https://www.parallels.com/products/desktop/) support for [Laravel Homestead](http://laravel.com/docs/master/homestead) development environment.

I used official versions of Homestead for my boxes for convenience.

* [Installation](#installation)
  * [Install PHP](#install-php)
  * [Install composer](#install-composer)
  * [Homestead global command-line](#homestead-global-command-line)
  * [Homestead instance vm per project](#homestead-instance)
* [Pre-built boxes](#pre-built-boxes)
* [Build box from source](#build-box-from-source)

## Installation
This is the way i install Homestead on my mac:

#### Install PHP
I prefer to install php using Homebrew. Follow [instructions](http://brew.sh/)
to install brew and execute `brew install homebrew/php/php70`.

Also you may need to add php7 to executable path: add `export PATH=/usr/local/Cellar/php70/PHP-VERSION/bin:$PATH` to your `~/.bash_profile`).

After this step `php --version` should display that php 7.0 is installed.

#### Install composer
Follow [instructions](https://getcomposer.org/) to download composer.phar to
current directory and move it to appropriate folder:
`mv composer.phar /usr/local/bin/composer`.

After this step you should have `composer` command available.

#### Homestead global command-line
To create Homestead environment for your projects you will need command-line.
To install it execute `composer global require laravel/homestead`.

Also you may need to add `~/.composer/vendor/bin` to your `PATH`: `export PATH=~/.composer/vendor/bin:$PATH`

After this step you should have `homestead` command available.

#### Homestead instance
To use Homestead environment, you should make it. `cd` to your project directory
and execute `homestead make` (use `homestead help make` to list them).

Then you need to update following values in `Homestead.yaml`:
```
box: alvassin/homestead-parallels
provider: parallels
```

Finally, you are ready to use homestead.
Run VM using `vagrant up --provider parallels` from your application directory.
Enjoy.

## Pre-built boxes
You can find pre-built boxes at [Hashicorp website ](https://atlas.hashicorp.com/alvassin/boxes/homestead-parallels/versions/3.0.2). To use pre-built box, run:
```bash
vagrant init alvassin/homestead-parallels;

```

## Build box from source
If you want to build Homestead Vagrant box yourself, perform following commands:
```bash
git clone git@github.com:alvassin/homestead-parallels-settler.git
cd homestead-parallels-settler
bash build.sh
```
