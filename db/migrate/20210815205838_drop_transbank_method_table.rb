class DropTransbankMethodTable < ActiveRecord::Migration[5.2]
  def change
    drop_table :transbank_methods do |t|
      t.integer :name, null: false
      t.timestamps null: false
    end
  end
end
