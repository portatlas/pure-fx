class CreateCurrencies < ActiveRecord::Migration
  def change
    create_table :currencies do |t|
    	t.string :curr_code, :null => false
    	t.string :curr_name, :null => false

      t.timestamps null: false
    end
  end
end
