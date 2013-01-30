class CreateUser < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :phone_no
      t.timestamps
    end
  end

  def down
  end
end
