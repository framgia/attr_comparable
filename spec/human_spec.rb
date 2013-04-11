require File.expand_path(File.join('./', 'spec_helper.rb'), File.dirname(__FILE__))

describe Human do
  let(:human){Human.new(170, 70)}
  it %q{Human's instance has height? method} do
    human.respond_to?(:height?).should be_true
  end
  it %q{Human's instance does not have weight? method} do
    human.respond_to?(:weight?).should be_false
  end
  it %q{the question "is human's height 170?" is correct} do
    human.height?(170).should be_true
  end
  it %q{the question "is human's height 180?" is incorrect} do
    human.height?(180).should be_false
  end

end
