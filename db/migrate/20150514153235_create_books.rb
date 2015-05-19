class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
    	t.string :name
    	t.float :price
    	t.text :description
    	t.float :rating, default: 0
    	t.integer :n_votes, default: 0 
      t.timestamps null: false
    end
  end
end
