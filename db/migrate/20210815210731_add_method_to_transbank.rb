class AddMethodToTransbank < ActiveRecord::Migration[5.2]
  def change
    add_column :transbanks, :method, :integer, default: 0
  end
end
