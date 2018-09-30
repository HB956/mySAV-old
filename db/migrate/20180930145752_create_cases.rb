class CreateCases < ActiveRecord::Migration[5.2]
  def change
    create_table :cases do |t|
      t.string :state
      t.string :order
      t.string :tracking
      t.string :client
      t.string :address
      t.string :category
      t.string :subject
      t.string :note
      t.string :action
      t.integer :ticket

      t.timestamps
    end
  end
end
