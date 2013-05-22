require 'spec_helper'

describe Program do
  it { should have_many(:consultants).through(:consultants_programs) }
end
