class CreateBuckets < ActiveRecord::Migration
  def change
    create_table :buckets do |t|
      t.integer :total
      t.string :currency
      t.timestamps
    end
  end
end
