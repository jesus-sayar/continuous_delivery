require_relative '../spec_helper'

describe "Hello page" do
  it "should say hi" do
  	username = 'foobar'
    get "/hi/#{username}"
    expect(last_response).to be_ok
    expect(last_response.body).to eq("Hello #{username}!")
  end
end