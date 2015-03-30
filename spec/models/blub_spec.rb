require 'rails_helper'

describe Blub do
  it { should validate_presence_of :content }
  it { should belong_to :user}

end
