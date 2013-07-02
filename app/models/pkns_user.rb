class PknsUser < User
  after_create :add_pkns_role

  def add_pkns_role
    self.add_role('pkns')
  end 
end
