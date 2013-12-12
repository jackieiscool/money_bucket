class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :bucket_id
      t.integer :user_id
      t.text :reason
      t.integer :amount
      t.string :currency
      t.string :transaction_type
      t.timestamps
    end
  end
end
