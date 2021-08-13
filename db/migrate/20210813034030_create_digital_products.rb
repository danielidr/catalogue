class CreateDigitalProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :digital_products do |t|
      t.belongs_to :product, foreign_key: true

      t.timestamps
    end
  end
end
