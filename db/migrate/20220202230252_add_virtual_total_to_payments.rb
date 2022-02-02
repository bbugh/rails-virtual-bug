class AddVirtualTotalToPayments < ActiveRecord::Migration[7.1]
  def change
    add_column :payments, :total, :integer, as: 'amount + fee + tax', stored: true
    add_column :payments, :total2, :virtual, type: :integer, as: 'amount + fee + tax', stored: true
  end
end
