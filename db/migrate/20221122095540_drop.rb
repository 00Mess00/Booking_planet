class Drop < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :email, :string
  end
end
