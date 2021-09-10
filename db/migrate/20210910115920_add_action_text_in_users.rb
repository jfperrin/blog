class AddActionTextInUsers < ActiveRecord::Migration[6.1]
  def change

    add_column :users, :description, :rich_text

  end
end
