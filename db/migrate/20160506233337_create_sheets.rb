class CreateSheets < ActiveRecord::Migration
  def change
    create_table :sheets do |t|
      t.integer :user_id
      t.datetime :date
      t.timestamps null: false
    end
  end
end
