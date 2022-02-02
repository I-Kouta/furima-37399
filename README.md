# テーブル設計

## users テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| email              | string     | null: false |
| encrypted_password | string     | null: false |
| name               | string     | null: false |

### Association
- has_one  :address
- has_many :records
- has_many :items

## items テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| category  | string     | null: false                    |
| price     | integer    | null: false                    |
| user_id   | references | null: false, foreign_key: true |
| record_id | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_one    :record

## records テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| user_id    | references | null: false, foreign_key: true |
| address_id | references | null: false, foreign_key: true |
| item_id    | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :item
- belongs_to :address

## addresses テーブル

| Column     | Type       | Options                      |
| ---------- | ---------- | ---------------------------- |
| prefecture | string     | null: false                  |
| city       | string     | null: false                  |
| user_id    | references |null: false, foreign_key: true|

### Association
- belongs_one :user
- has_many    :records