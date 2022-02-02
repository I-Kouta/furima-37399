# テーブル設計

## users テーブル

| Column             | Type    | Options                   |
| ------------------ | ------- | ------------------------- |
| nickname           | string  | null: false               |
| email              | string  | null: false, unique: true |
| encrypted_password | string  | null: false               |
| last_name          | string  | null: false               |
| first_name         | string  | null: false               |
| barthday_year_id   | integer | null: false               |
| barthday_month_id  | integer | null: false               |
| barthday_date_id   | integer | null: false               |

### Association
- has_many :items
- has_many :records

## items テーブル

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| title         | string     | null: false                    |
| text          | text       | null: false                    |
| genre_id      | integer    | null: false                    |
| condition_id  | integer    | null: false                    |
| cost_id       | integer    | null: false                    |
| prefecture_id | integer    | null: false                    |
| price         | integer    | null: false                    |
| date_id       | integer    | null: false                    |

### Association
- belongs_to :user
- has_one    :record

## records テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |


### Association
- belongs_to :user
- belongs_to :item
- has_one    :address

## addresses テーブル

| Column        | Type    | Options                      |
| ------------- | ------- | ---------------------------- |
| post_code     | integer | null: false                  |
| prefecture_id | integer | null: false                  |
| city          | string  | null: false                  |
| city_number   | string  | null: false                  |
| building      | string  | null: false                  |
| phone_number  | integer | null: false                  |

### Association
- belongs_to :record