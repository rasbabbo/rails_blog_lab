class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
    	t.references :post
    	t.references :tag

      t.timestamps
    end
  end
end
