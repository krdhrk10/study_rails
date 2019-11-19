# Ruby on Rails Tutorail

## Environment
- ruby : 2.6.5
- rails : 6.0.1

## How to run
```
$ docker-compose up -d

... wait until all container ready

-> access http://localhost:8000 by browser
```

## 

## The way to prepare this project
```
$ cd /srv/blog
$ bundle init
$ bundle install --path vendor/bundle
$ bundle exec rails new . -B -d mysql --skip-turbolinks --skip-test
$ bundle exec rails webpacker:install
$ vi config/database.yml
# Edit db connection
```

## Note
- railsは内部的にwebpackを使用しており、nodejs、yarnに依存している
- bundle exec xxx でGemfileの依存を見ながらrailsコマンドを実行するのが吉

