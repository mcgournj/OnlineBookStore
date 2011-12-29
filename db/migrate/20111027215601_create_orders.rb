class CreateOrders < ActiveRecord::Migration
  def self.up
    create_table :orders do |t|
      t.integer :customer_id
      t.decimal :salesTax
      t.decimal :shippingFee
      t.decimal :total
      t.string :methodOfPayment

      t.timestamps
    end
  end

  def self.down
    drop_table :orders
  end
end
