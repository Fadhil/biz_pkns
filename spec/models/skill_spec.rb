require 'spec_helper'

describe Skill do
  context 'when name is longer than 140 characters' do
    it 'should be invalid' do
      skill = Skill.create(name: 'a'*141 )
      skill.should_not be_valid
    end
  end

end
