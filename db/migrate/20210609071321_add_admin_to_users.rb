class AddAdminToUsers < ActiveRecord::Migration[6.0]
  def change
      add_column :users, :admin, :boolean, null: false, default: false
                  #table_name, :name_column, :datatype
  end
end
