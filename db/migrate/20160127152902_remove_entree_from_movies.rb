class RemoveEntreeFromMovies < ActiveRecord::Migration
  def change
    remove_column :movies, :entree, :string
  end
end
