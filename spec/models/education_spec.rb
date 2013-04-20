require 'spec_helper'

describe Education do
  context 'when name is longer than 140 characters' do
    it 'should be invalid' do
      education = Education.create(name: 'a'*141 )
      education.should_not be_valid
    end
  end
end
