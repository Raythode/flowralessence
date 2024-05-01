class AddPackageSizeToAddresses < ActiveRecord::Migration[7.1]
  def change
    add_column :addresses, :package_size, :string
  end
end
