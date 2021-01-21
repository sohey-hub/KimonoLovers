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
| prefecture_id    | integer    |                                 |
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