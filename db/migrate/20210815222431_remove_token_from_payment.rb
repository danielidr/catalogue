class RemoveTokenFromPayment < ActiveRecord::Migration[5.2]
  def change
    remove_column(:payments, :token, :string)
  end
end
