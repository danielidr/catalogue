class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :number
      t.float :total
      t.string :state

      t.timestamps
    end
  end
end
