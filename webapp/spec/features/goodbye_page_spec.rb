require_relative '../spec_helper'

describe "Goodbye page" do
  it "should say goodbye" do
  	username = 'foobar'
    get "/goodbye/#{username}"
    expect(last_response).to be_ok
    expect(last_response.body).to eq("Goodbye #{username}, I'll see you soon!")
  end
end