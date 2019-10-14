class AddStatusToNews < ActiveRecord::Migration[6.0]
  def change
    add_column :news, :status, :integer
  end
end
