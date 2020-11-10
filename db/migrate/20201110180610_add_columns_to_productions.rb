class AddColumnsToProductions < ActiveRecord::Migration[6.0]
  def change
    add_column :productions, :start_date, :datetime
    add_column :productions, :end_date, :datetime
  end
end
