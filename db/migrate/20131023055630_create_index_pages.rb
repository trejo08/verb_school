class CreateIndexPages < ActiveRecord::Migration
  def change
    create_table :index_pages do |t|
      t.string :title, default: "", null: false
      t.references :admin_user
      t.text :description1
      t.text :description2
      t.text :description3

      t.timestamps
    end
  end
end
