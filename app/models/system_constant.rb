class SystemConstant < ActiveRecord::Base
  def self.small_page_size
    6
  end

  def self.page_size
    10
  end
end