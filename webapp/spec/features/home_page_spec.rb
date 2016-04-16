require_relative '../spec_helper'

describe "Home page" do
  it "should welcome" do
    get '/'
    expect(last_response).to be_ok
    expect(last_response.body).to eq('Welcome to Simple App ;-)')
  end
end
