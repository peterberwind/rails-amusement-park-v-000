class User < ActiveRecord::Base
  # write associations here
  has_many :rides
  has_many :attractions, through: :rides

  has_secure_password

  def mood
    binding.pry
    if self.nausea >= self.happiness
      return 'sad'
    else
      return 'happy'
    end
  end

end
