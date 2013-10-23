class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :title, default: "", null: false
      t.boolean :aproved, default: false, null: false

      t.timestamps
    end
  end
end
