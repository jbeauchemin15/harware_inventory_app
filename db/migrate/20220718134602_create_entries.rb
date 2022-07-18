class CreateEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :entries do |t|
      t.integer :number_of_items
      t.integer :po_number
      t.string :item
      t.date :po_date
      t.date :invoice_date
      t.integer :serial_number
      t.integer :cost
      t.string :client_acronym
      t.date :install_date
      t.string :notes

      t.timestamps
    end
  end
end
