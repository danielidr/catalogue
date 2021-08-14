class CreateTransbanks < ActiveRecord::Migration[5.2]
  def change
    create_table :transbanks do |t|
      t.belongs_to :transbank_method, foreign_key: true

      t.timestamps
    end
  end
end
