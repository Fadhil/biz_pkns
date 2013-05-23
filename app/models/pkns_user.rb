class PknsUser < User
  after_create :add_pkns_role

  def add_pkns_role
    self.role = Role.find_by_name('pkns')
    self.save
  end 
end
