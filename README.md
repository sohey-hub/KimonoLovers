# アプリ名
KimonoLovers

# 概要
全国の着物好きな方々が、自分の持っている着物をアピールできるサービスです。また、地方ごとに様々な技術を使った着物がたくさん存在しているため、そういった地方ごとの特色を楽しめるように、地方ごとに着物を割り振れるようにして、まだまだ知られていない着物の素晴らしさを発信できるようにしました。

# 制作背景（意図）
日本人なら誰もが知っている民族衣装である着物。しかし、その着物は今現在、着る人も作る人も年々減少しております。そんな時代に、職人さんに言われた、「"後継者"とは、作り手だけではなく、使い手もまた"後継者"なのだ」、という言葉に強く感銘を受けた私が、着物をお持ちの方がもっと自分のお着物をアピールする場所を提供できないか、という理念から作ったのが、今回のアプリです。

# DEMO
トップページ
![トップページ１](https://user-images.githubusercontent.com/75017019/106716773-2fc13d00-6642-11eb-8d57-2c548e128ff7.png)

![トップページ２](https://user-images.githubusercontent.com/75017019/106717404-07860e00-6643-11eb-931e-5a4896564283.png)
日本地図を描画して、ここから地方ごとにクリックすると、その地方に住まれている方が出品されたお着物の一覧が表示されます。

## 地方ごとのお着物一覧表示ページ（関東Ver.）
![画像](https://user-images.githubusercontent.com/75017019/106717808-8a0ecd80-6643-11eb-96c0-22e9c7cae9b7.png)
地方ごとのお着物が一覧表示されています。その上には、その地方ごとの伝統を紹介しています。

## お着物の詳細表示ページ
![画像](https://user-images.githubusercontent.com/75017019/106718222-191be580-6644-11eb-8404-8f00bec8857a.png)
画像と詳細情報が全て閲覧できます。また、コメント機能を付けて、アカウントを持っている人だけがコメントできるようにしました。

## お着物の出品ページ
![画像](https://user-images.githubusercontent.com/75017019/106718600-9b0c0e80-6644-11eb-81be-e1a01149444d.png)
出品ページでは、画像と名前と地方選択と種類選択、説明文を必須にして、色は何色と断定できるお着物は意外と多くないので、任意にしました。

## 新規登録とログイン画面のページ
![画像](https://user-images.githubusercontent.com/75017019/106718715-c2fb7200-6644-11eb-87cd-72b2de35770f.png)
![画像](https://user-images.githubusercontent.com/75017019/106718943-0d7cee80-6645-11eb-8c0a-f427876fe8e5.png)
新規登録画面では、個人情報をたくさん求めてしまうと、女性（特に高齢者の女性達）は警戒してアカウントを作ってくれない可能性があったので、最低限の情報だけにしました。

# 工夫したポイント
* 新規登録画面では、個人情報をたくさん求めてしまうと、女性（特に高齢者の女性達）は警戒してアカウントを作ってくれない可能性があったので、最低限の情報だけにしました。
* コメント欄で、その着物に対する感想を書いてもらい、自分の持っている着物に誇りを持ってもらうことで、ちょっと着てみようかな、と思ってもらえるきっかけになれば、と思い、コメント機能を実装しました。
* 日本地図から地方ごとの着物を一覧で表示することで、地方ごとの特色が出て、面白がってもらえるのではないか、と思い、日本地図を導入しました。

# 使用技術（開発環境）

## バックエンド
Ruby,Ruby on Rails

## フロントエンド
HTML CSS JavaScript JQuery booStrap

## データベース
MySQL

## ソース管理
Github, GithubDesctop

## エディタ
VSCode

# 課題や今後実装したい機能
使い手だけではなく、作り手である職人さん達や小売業者の方達が自分たちの作品を広められるように、職人さんや小売業者さん専用のページを作って、販売などもできるようにしたいです。
また、自分の持っている着物がどういったもので、どういう用途で使えるのかを知らない方もたくさんいらっしゃると思うので、そういった方にお着物を出品してもらって、コメントをもらえるページも作っていきたいです。

# DB設計

## users テーブル

| Column                     | Type     | Options                   |
| -------------------------- | -------- | ------------------------- |
| nickname                   | string   | null: false               |
| email                      | string   | null: false, unique: true |
| encrypted_password         | string   | null: false               |
| birth_date                 | date     | null: false               |

### Association

- has_many :items
- has_many :comments

## items テーブル

| Column           | Type       | Options                         |
| ---------------- | ---------- | ------------------------------- |
| title            | string     | null: false                     |
| explanation      | text       | null: false                     |
| color_id         | integer    |                                 |
| prefecture_id    | integer    | null: false                     |
| user             | references | null: false, foreign_key: true  |

### Association

- belongs_to :user
- has_one_attached :image
- has_many :comments
- belongs_to_active_hash :region
- belongs_to_active_hash :genre

## comment テーブル

| Column                     | Type     | Options                   |
| -------------------------- | -------- | ------------------------- |
| text                       | text     | null: false               |

## hokkaido テーブル

| Column           | Type       | Options                         |
| ---------------- | ---------- | ------------------------------- |
| title            | string     | null: false                     |
| explanation      | text       | null: false                     |
| color_id         | integer    |                                 |
| prefecture_id    | integer    |                                 |
| user             | references | null: false, foreign_key: true  |


### Association

belongs_to :user

## tohoku テーブル

| Column           | Type       | Options                         |
| ---------------- | ---------- | ------------------------------- |
| title            | string     | null: false                     |
| explanation      | text       | null: false                     |
| color_id         | integer    |                                 |
| prefecture_id    | integer    |                                 |
| user             | references | null: false, foreign_key: true  |


### Association

belongs_to :user

## kanto テーブル

| Column           | Type       | Options                         |
| ---------------- | ---------- | ------------------------------- |
| title            | string     | null: false                     |
| explanation      | text       | null: false                     |
| color_id         | integer    |                                 |
| prefecture_id    | integer    |                                 |
| user             | references | null: false, foreign_key: true  |


### Association

belongs_to :user

## tyubu テーブル

| Column           | Type       | Options                         |
| ---------------- | ---------- | ------------------------------- |
| title            | string     | null: false                     |
| explanation      | text       | null: false                     |
| color_id         | integer    |                                 |
| prefecture_id    | integer    |                                 |
| user             | references | null: false, foreign_key: true  |


### Association

belongs_to :user

## kinki テーブル

| Column           | Type       | Options                         |
| ---------------- | ---------- | ------------------------------- |
| title            | string     | null: false                     |
| explanation      | text       | null: false                     |
| color_id         | integer    |                                 |
| prefecture_id    | integer    |                                 |
| user             | references | null: false, foreign_key: true  |


### Association

belongs_to :user

## tyugoku テーブル

| Column           | Type       | Options                         |
| ---------------- | ---------- | ------------------------------- |
| title            | string     | null: false                     |
| explanation      | text       | null: false                     |
| color_id         | integer    |                                 |
| prefecture_id    | integer    |                                 |
| user             | references | null: false, foreign_key: true  |


### Association

belongs_to :user

## shikoku テーブル

| Column           | Type       | Options                         |
| ---------------- | ---------- | ------------------------------- |
| title            | string     | null: false                     |
| explanation      | text       | null: false                     |
| color_id         | integer    |                                 |
| prefecture_id    | integer    |                                 |
| user             | references | null: false, foreign_key: true  |


### Association

belongs_to :user

## kyushu_okinawa テーブル

| Column           | Type       | Options                         |
| ---------------- | ---------- | ------------------------------- |
| title            | string     | null: false                     |
| explanation      | text       | null: false                     |
| color_id         | integer    |                                 |
| prefecture_id    | integer    |                                 |
| user             | references | null: false, foreign_key: true  |


### Association

belongs_to :user