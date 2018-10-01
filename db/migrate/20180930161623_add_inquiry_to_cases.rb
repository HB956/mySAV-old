class AddInquiryToCases < ActiveRecord::Migration[5.2]
  def change
    add_column :cases, :inquiry, :string
  end
end
