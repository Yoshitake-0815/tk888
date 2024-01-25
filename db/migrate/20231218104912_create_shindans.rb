class CreateShindans < ActiveRecord::Migration[6.1]
  def change
    create_table :shindans do |t|
     
     
      t.timestamps
    end
  end
end
