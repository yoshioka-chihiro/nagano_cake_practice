class RemoveCustomersStatusFromCustomers < ActiveRecord::Migration[6.1]
  def change
    remove_column :customers, :customers_status, :boolean
  end
end
