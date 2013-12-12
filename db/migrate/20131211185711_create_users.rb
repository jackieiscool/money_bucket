class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider
      t.string :uid
      t.string :username
      t.string :email
      t.string :phone
      t.string :first_name
      t.string :last_name
      t.string :image
      t.float :balance
      t.timestamps
    end
  end
end
