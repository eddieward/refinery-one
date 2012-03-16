class AddCompleteToQuotes < ActiveRecord::Migration
  def self.up

    change_table :quotes do |t|
      t.boolean :complete
    end
  end

  def self.down
    remove_column :quotes, :complete
  end
end
