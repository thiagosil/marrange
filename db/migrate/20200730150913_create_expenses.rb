class CreateExpenses < ActiveRecord::Migration[6.0]
  def change
    create_table :expenses do |t|
      t.string :name
      t.integer :estimated, default: 0
      t.integer :spent, default: 0
      t.integer :paid, default: 0
      t.belongs_to :category

      t.timestamps
    end
  end
end
