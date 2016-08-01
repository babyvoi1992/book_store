class User < ApplicationRecord
  before_save :set_default

  private
  def set_default
    self.admin = false
  end
end
