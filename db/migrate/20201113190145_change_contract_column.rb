class ChangeContractColumn < ActiveRecord::Migration[6.0]
  def change
    change_column :productions, :contract, :integer
  end
end
