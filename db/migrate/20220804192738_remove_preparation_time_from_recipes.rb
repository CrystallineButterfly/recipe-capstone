class RemovePreparationTimeFromRecipes < ActiveRecord::Migration[7.0]
  def change
    remove_column :recipes, :preparation_time, :integer
  end
end
