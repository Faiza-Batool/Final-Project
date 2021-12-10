class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.float :amount
      t.string :status
      t.text :security_key
      
      t.timestamps
    end
  end
end
