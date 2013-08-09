class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email
      t.string :role
      t.string :learn
      t.string :zipcode

      t.timestamps
    end
  end
end
