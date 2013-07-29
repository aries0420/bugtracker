class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.string :title
      t.text :description
      t.string :priority
      t.string :status
      t.string :reporter
      t.references :product

      t.timestamps
    end
    add_index :bugs, :product_id
  end
end
