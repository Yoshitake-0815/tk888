class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.string :name
      t.text :about
      t.string :image
      t.timestamps
    end
  end
end
