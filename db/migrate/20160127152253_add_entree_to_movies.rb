class AddEntreeToMovies < ActiveRecord::Migration
  def change
    add_column :movies, :entree, :string
  end
end
