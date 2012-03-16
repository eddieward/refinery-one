class CreateQuotes < ActiveRecord::Migration
  def self.up
    create_table :quotes do |t|
      t.string :name
      t.string :email
      t.string :company
      t.string :phone
      t.string :numb_of_w2_forms
      t.string :appx_tot_income
      t.string :numb_of_stock_trans
      t.string :numb_of_states_lived_in
      t.string :referred_by_name
      t.boolean :visa_holder
      t.boolean :home_owner
      t.string :filing_status_id
      t.text :spcl_tax_considerations

      t.timestamps
    end
  end

  def self.down
    drop_table :quotes
  end
end
