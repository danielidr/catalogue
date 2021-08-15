class RemoveTransbankMethodReferencesToMethod < ActiveRecord::Migration[5.2]
  def change
    remove_reference(:transbanks, :transbank_method, foreign_key: true)
  end
end
