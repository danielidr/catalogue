class CreateTransbankMethods < ActiveRecord::Migration[5.2]
  def change
    create_table :transbank_methods do |t|
      t.integer :name, default: 0

      t.timestamps
    end
  end
end
