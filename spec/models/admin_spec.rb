require 'rails_helper'

RSpec.describe Admin, type: :model do
  it "admin is valid" do
    admin = Admin.new(email: "admin@admin.com", password: "123456") 

    expect(admin.email).to eql "admin@admin.com"  
    expect(admin).to be_valid  #test if the admin is valid
  end
  it "admin is not valid" do
    admin = Admin.new(email: "admin@admin.com")

    expect(admin).to_not be_valid #test if the admin is not valid
  end  
end
