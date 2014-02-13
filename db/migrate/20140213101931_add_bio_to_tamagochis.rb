class AddBioToTamagochis < ActiveRecord::Migration
  def change
    add_column :tamagotchis, :bio, :text
  end
end
