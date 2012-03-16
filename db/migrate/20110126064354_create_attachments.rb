class CreateAttachments < ActiveRecord::Migration

  def self.up
    create_table :attachments do |t|
      t.string :title
      t.integer :download_id
      t.integer :position

      t.timestamps
    end

    add_index :attachments, :id

    load(Rails.root.join('db', 'seeds', 'attachments.rb'))
  end

  def self.down
    UserPlugin.destroy_all({:name => "Attachments"})

    Page.delete_all({:link_url => "/attachments"})

    drop_table :attachments
  end

end
