require 'spec_helper'

describe Consultant do
  it { should have_many(:programs).through(:consultants_programs) }
end
