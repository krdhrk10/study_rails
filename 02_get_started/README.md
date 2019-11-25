# Ruby on Rails Tutorial

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
$ bundle install
$ bundle exec rails new . -B -d mysql --skip-turbolinks --skip-test
$ bundle exec rails webpacker:install
$ vi config/database.yml
# Edit db connection
```

## Note
- railsは内部的にwebpackを使用しており、nodejs、yarnに依存している
- bundle exec xxx でGemfileの依存を見ながらrailsコマンドを実行するのが吉
- bundle install --path vendor/bundle が主流っぽいが、今回はdockerコンテナ内でglobal汚染もあまり関係ないので気にしない
- nodejsとyarn入ってないと起動しないとかちょっと勘弁してほしい


## Tutorial
ひととおりここに書いてあることをやってみる。  

	https://railsguides.jp/getting_started.html  

## routes
- root "xxx#mmm" と記述することで、いわゆるアプリケーションのrootパス（/）に対するアクションを定義できる
- resources :articles と記述することで、標準的なRESTのエンドポイントが生成できる
  - GET    /articles(.:format)          articles#index
  - POST   /articles(.:format)          articles#create
  - GET    /articles/new(.:format)      articles#new
  - GET    /articles/:id/edit(.:format) articles#edit
  - GET    /articles/:id(.:format)      articles#show
  - PATCH  /articles/:id(.:format)      articles#update
  - PUT    /articles/:id(.:format)      articles#update
  - DELETE /articles/:id(.:format)      articles#destroy

## view
- form_with周りは色々と知っておく必要がありそう  
  （https://api.rubyonrails.org/classes/ActionView/Helpers/FormHelper.html#method-i-form_with）

