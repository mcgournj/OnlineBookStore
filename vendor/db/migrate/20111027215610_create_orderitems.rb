class CreateOrderitems < ActiveRecord::Migration
  def self.up
    create_table :orderitems do |t|
      t.integer :order_id
      t.integer :book_id
      t.integer :quantity

      t.timestamps
    end
  end

  def self.down
    drop_table :orderitems
  end
end
