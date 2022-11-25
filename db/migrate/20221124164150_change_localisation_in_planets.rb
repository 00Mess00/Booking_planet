class ChangeLocalisationInPlanets < ActiveRecord::Migration[7.0]
  def change
    rename_column :planets, :localisation, :address
  end
end
