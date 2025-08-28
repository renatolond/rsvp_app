class AddFieldsToUser < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :attending, :string
  end
end
