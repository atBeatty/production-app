class CreateProductions < ActiveRecord::Migration[6.0]
  def change
    create_table :productions do |t|
      t.belongs_to :producer, null: false, foreign_key: true
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :client, null: false, foreign_key: true
      t.string :title
      t.string :contract

      t.timestamps
    end
  end
end
