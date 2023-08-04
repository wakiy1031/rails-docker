# README

## 環境構築方法
dockerとdocker-composeをインストールされていない方は事前にインストールが必要となります。
### git-clone を行う

ディレクトリを作成し、当リポジトリを clone します。
今回で言うと rails-docker とディレクトリを作成して
`$ git clone https://github.com/wakiy1031/rails-docker.git`

### docker-compose build を行う

docker-compose を使っているので、`$docker-compose build`を行います。

### docker-compose up を行う

build が問題なく終了しましたら、`$docker-compose up`を行い、web と db コンテナの立ち上げをします。

### Rails データベースの作成

rails でデータベースを作成します。`$docker-compose run web rake db:create`で作成できます。

### migrate する

データベースを作成できたら migrate をします。
`$docker-compose exec web bash`でターミナルを起動し、
`$rails db:migrate`を行います。
以上で環境構築が完了です。