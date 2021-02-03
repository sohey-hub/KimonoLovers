# アプリ名
KimonoLovers

# 概要
全国の着物好きな方々が、自分の持っている着物をアピールできるサービスです。また、地方ごとに様々な技術を使った着物がたくさん存在しているため、そういった地方ごとの特色を楽しめるように、地方ごとに着物を割り振れるようにして、まだまだ知られていない着物の素晴らしさを発信できるようにしました。

# 制作背景（意図）
日本人なら誰もが知っている民族衣装である着物。しかし、その着物は今現在、着る人も作る人も年々減少しております。そんな時代に、職人さんに言われた、「"後継者"とは、作り手だけではなく、使い手もまた"後継者"なのだ」、という言葉に強く感銘を受けた私が、着物をお持ちの方がもっと自分のお着物をアピールする場所を提供できないか、という理念から作ったのが、今回のアプリです。

# DEMO
トップページ
![トップページ(unnamed.jpg)

# テーブル設計

## users テーブル

| Column                     | Type     | Options                   |
| -------------------------- | -------- | ------------------------- |
| nickname                   | string   | null: false               |
| email                      | string   | null: false, unique: true |
| encrypted_password         | string   | null: false               |
| birth_date                 | date     | null: false               |

### Association

- has_many :items

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