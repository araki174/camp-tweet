# アプリケーション名
camp tweet

# アプリケーション概要
キャンプに関わる情報の交換が可能です。

# 接続先URL
URL:

# テスト用アカウント
## asic認証
id : admin  
password : 2222
## 投稿者
id : test@gmail.com  
password : inu100

# 利用方法
・自分が訪れたキャンプ場での写真に簡単な情報をもたせて投稿できます。  
・投稿写真を見て気になる事があればコメント機能を使い質問ができます。  
・写真に都道府県情報を持たせているため地域の把握ができます。

# 目指した課題解決
・キャンプ場を探している人が自宅から近い キャンプ場を簡単に探せる事を目的に作成しました。  
・キャンプ場の施設情報などの細かな情報をコメントで確認できる事を目的に作成しました。

# 洗い出した要件
・アクティブストレージにより画像投稿が容易になります。  
・投稿画像に撮影場所の情報を持たせることで地域の把握が可能です。  
・詳細情報を追加することで画像だけではわからない事までわかります。  
・Google Mapと連携することで撮影場の把握が容易になリます。

# 実装した機能についてのGIFと説明

# 実装予定の機能
Google Mapとの連携機能の実装

# ローカルでの動作方法
・WebブラウザGoogle Chromeの最新版を利用してアクセスしてください。  
・接続先およびログイン情報については、上記の通りです。  
・同時に複数の方がログインしている場合に、ログインできない可能性があります。  
・投稿方法  
○投稿者アカウントでログイン→画面右上「投稿する」ボタン押下→投稿内容入力→投稿  
・確認後ログアウトをお願いします。

# テーブル設計
## ER図
Gayzo URL : https://gyazo.com/4687d952ea6fc6d52191191fff78f6ab
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
| tweet_img             | string     |                                |
| name                  | string     | null: false                    |
| introduction          | text       | null: false                    |
| prefecture            | integer    | null: false, foreign_key: true |
| rank                  | integer    | null: false, foreing_key: true |
| user_id               | integer    | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_many :comments
- has_one_attached :image


## commentsテーブル
| Column                | Type    | Options                        |
| --------------------- | ------- | ------------------------------ |
| text                  | string  | null: false                    |
| user_id               | integer | null: false, foreing_key: true |
| tweet_id              | integer | null: false, foreing_key: true |

### Association
- belongs_to :user
- belongs_to :tweet