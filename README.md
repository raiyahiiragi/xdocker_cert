# xdocker_cert

## これは?

Docker で Let's encrypt を利用するための certbot を運用しようというもの
個人用で作ったものだけども、何か使えるならどうぞ

## 導入

### portainer.io を使う

1. Images で Dockerfile を投入
2. Stacks で 当リポジトリのURL を指定

### サーバーコマンドを結構使う

個人的に portainer.io を活用しているので、こちらの手順は参考まで

1. Docker サーバー に Dockerfile をアップするか vi かなんかで貼り付け
2. docker build . -t xdocker_cert:latest --no-cache
3. Docker-compose.yml に書いてある内容で Docker-compose 実行

## 使い方

インタラクティブで待機する形でコンテナが起動します
コンソールで入って、あとはいつもの certbot で

また、ローカル認証局を立てるための /usr/local/etc/ca にvolumes を切ってあります
不要な場合は Dockerfile から削除してください

## 注意点

もちろんポートをつなげる必要があります
適当に 7080/tcp を振ってますが、競合する場合は変更してください

## 他仕様

base image : Almalinux
