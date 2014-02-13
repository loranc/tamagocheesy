class Tamagotchi < ActiveRecord::Base
  belongs_to :user

  RATING_MAX = 10

end
