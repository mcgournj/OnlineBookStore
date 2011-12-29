class CreateCustomers < ActiveRecord::Migration
  def self.up
    create_table :customers do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :phone
      t.string :password
      t.integer :address_id

      t.timestamps
    end
  end

  def self.down
    drop_table :customers
  end
end
