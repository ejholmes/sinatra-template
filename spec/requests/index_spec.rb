require 'spec_helper'

describe "Index", :type => :request do
  before do
    visit '/'
  end

  context "the HTTP status code" do
    subject { page.status_code }

    it { should be(200) }
  end
end
