# テーブル設計

## usersテーブル
| Culumn            | Type    | Options                   |
| ----------------- | ------- | ------------------------- |
| email             | String  | null: false, unique: true |
| encrypted_password| String  | null: false               |
| name              | String  | null: false               |
| profile           | text    | null: false               |
| occupation        | text    | null: false               |
| position          | text    | null: false               |

### Association
- has_many :prototypes
- has_many :comments


## prototypesテーブル
| Culumn            | Type    | Options                   |
| ----------------- | ------- | ------------------------- |
| title             | String  | null: false               |
| catch_copy        | text    | null: false               |
| concept           | text    | null: false               |
| user              | references | null: false, foreign_key: true|

### Association
- belong_to :users
- has_many :comments

## comments
| Culumn            | Type    | Options                   |
| ----------------- | ------- | ------------------------- |
| content           | text    | null: false,              |
| prototype         |references| null: false, foreign_key: true|
| user              |references| null: false, foreign_key: true|

### Association
- belong_to :users, prototypes