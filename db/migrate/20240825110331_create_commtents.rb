class CreateCommtents < ActiveRecord::Migration[7.0]
  def change
    create_table :commtents do |t|
      t.text       :content,                null: false
      t.references :prototype,            null: false, foreign_key: true
      t.references :user,                 null: false, foreign_key: true
      t.timestamps
    end
  end
end
