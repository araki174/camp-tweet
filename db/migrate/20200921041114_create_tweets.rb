class CreateTweets < ActiveRecord::Migration[6.0]
  def change
    create_table :tweets do |t|
      t.string :name
      t.string :text
      t.text :image
      t.integer :prefecture_id
      t.integer :rank_id
      t.timestamps
    end
  end
end
