class CreateInstructions < ActiveRecord::Migration

  def self.up
    create_table :instructions do |t|
      t.string :title
      t.text :description
      t.integer :position

      t.timestamps
    end

    add_index :instructions, :id

    load(Rails.root.join('db', 'seeds', 'instructions.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Instructions"})

    Page.delete_all({:link_url => "/instructions"})

    drop_table :instructions
  end

end
