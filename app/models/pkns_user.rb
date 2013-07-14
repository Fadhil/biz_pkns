class PknsUser < User
  after_create :add_pkns_role, :activate

  def add_pkns_role
    self.add_role('admin')
  end 

  def activate
    self.is_active = true
    self.save
  end
end
