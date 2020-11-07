class ChangeColumnNull < ActiveRecord::Migration[6.0]
  def change
    change_column_null :productions, :client_id, :true 
  end
end
