# テーブル設計

## usersテーブル
| Column                | Type    | Options     |
| --------------------- | ------- | ----------- |
| nickname              | string  | null: false |
| email                 | string  | null: false |
| password              | string  | null: false |
| password_Confirmation | string  | null: false |

### Association
- has_many :tweets
- has_many :comments


## tweetsテーブル
| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| item_img              | string     |                                |
| name                  | string     | null: false                    |
| introduction          | text       | null: false                    |
| prefecture            | integer    | null: false, foreign_key: true |
| rank                  | integer    | null: false, foreing_key: true |
| user_id               | integer    | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :comments

## commentsテーブル
| Column                | Type    | Options                        |
| --------------------- | ------- | ------------------------------ |
| text                  | string  | null: false                    |
| user_id               | integer | null: false, foreing_key: true |
| tweet_id              | integer | null: false, foreing_key: true |

### Association
- belongs_to :user
- belongs_to :tweet