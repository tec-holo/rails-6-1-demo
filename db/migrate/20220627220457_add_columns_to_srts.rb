class AddColumnsToSrts < ActiveRecord::Migration[6.1]
  def change
    add_column :srts, :date, :string
    add_column :srts, :ops, :string
    add_column :srts, :browser_search, :string
    add_column :srts, :source, :text
    add_column :srts, :solution, :text
  end
end
