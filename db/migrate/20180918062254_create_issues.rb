class CreateIssues < ActiveRecord::Migration[5.2]
  def change
    create_table :issues do |t|
      t.string :state
      t.string :order
      t.string :tracking
      t.string :client
      t.string :category
      t.string :subject
      t.string :note
      t.string :action
      t.string :ticket

      t.timestamps
    end
  end
end
