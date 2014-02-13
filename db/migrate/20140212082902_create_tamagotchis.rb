class CreateTamagotchis < ActiveRecord::Migration
  def change
    create_table :tamagotchis do |t|
      t.string :user_id
      t.string :name

      t.timestamps
    end
  end
end
