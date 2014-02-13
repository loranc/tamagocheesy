class AddRatingToTamagotchis < ActiveRecord::Migration
  def change
    add_column :tamagotchis, :rating, :integer
  end
end
