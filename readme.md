
create a <b>composer.json</b> in the directory you want to host the vagrant box:
```json
{
"repositories": [{
    "type": "vcs",
    "url": "http://github.com/niallbrown/homestead"
}],
"minimum-stability": "dev",
    "require": {
        "laravel/homestead": "dev-master"
    }
}
```

run composer update and then
```
./vendor/bin/homestead make
```
edit the Homestead.yaml file with the settings you need.

Based on the laravel homestead repo:
# Laravel Homestead

The official Laravel local development environment.

Official documentation [is located here](http://laravel.com/docs/homestead).
