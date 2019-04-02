class AddBestMonthToHike < ActiveRecord::Migration[5.2]
  def change
    add_column :hikes, :best_month, :string
  end
end
