class CreateFxtrans < ActiveRecord::Migration
  def change
    create_table :fxtrans do |t|
    	t.integer :status_id, :null => false
      t.integer :requestor_id, :null => false
      t.integer :acceptor_id
      t.decimal :base_amount, precision: 8, scale: 2
      t.decimal :base_curr_id, :null => false
      t.integer :quote_curr_id, :null => false
      t.decimal :fxrate, precision: 10, scale: 7 
      t.decimal :exp_amount, precision: 8, scale: 2
      t.string :place
      t.string :city
      t.decimal :lat, precision: 10, scale: 6
      t.decimal :lng, precision: 10, scale: 6
      t.integer :accry

      t.timestamps null: false
    end
  end
end
