class CreateSrts < ActiveRecord::Migration[6.1]
  def change
    create_table :srts do |t|
      t.string :link_name
      t.text :paste_link

      t.timestamps
    end
  end
end
