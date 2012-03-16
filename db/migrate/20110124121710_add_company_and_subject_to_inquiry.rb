class AddCompanyAndSubjectToInquiry < ActiveRecord::Migration
  def self.up
    add_column :inquiries, :company, :string
    add_column :inquiries, :subject, :string
  end

  def self.down
    remove_column :inquiries, :subject
    remove_column :inquiries, :company
  end
end
