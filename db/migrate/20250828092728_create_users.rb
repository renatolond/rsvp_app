# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :code, null: false
      t.string :name, null: false

      t.timestamps
    end
    add_index :users, :code, unique: true
  end
end
