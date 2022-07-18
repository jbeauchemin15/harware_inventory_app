json.extract! entry, :id, :number_of_items, :po_number, :item, :po_date, :invoice_date, :serial_number, :cost, :client_acronym, :install_date, :notes, :created_at, :updated_at
json.url entry_url(entry, format: :json)
