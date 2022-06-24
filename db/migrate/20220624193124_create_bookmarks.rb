class CreateBookmarks < ActiveRecord::Migration[6.1]
  def change
    create_table :bookmarks do |t|
      t.string :link_name
      t.text :paste_url

      t.timestamps
    end
  end
end
