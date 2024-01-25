class AddQuestionesToShindans < ActiveRecord::Migration[6.1]
  def change
    add_column :shindans, :question1, :string
    add_column :shindans, :question2, :string
    add_column :shindans, :question3, :string
    add_column :shindans, :question4, :string
  end
end
