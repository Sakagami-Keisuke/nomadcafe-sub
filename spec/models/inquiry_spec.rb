require 'rails_helper'

RSpec.describe Inquiry,type: :model do

  # <空白>
  it "name,messageは存在 では保存" do
    inquiry = Inquiry.new( name: "カフェ〇〇店長▲▲", message: "●●について問合せします" )
    expect(inquiry).to be_valid
  end

  it "name は空白, messageは存在 では保存しない" do
    inquiry = Inquiry.new( name: "", message: "●●について問合せします" )
    expect(inquiry).to be_invalid
  end

  it "name は存在, messageは空白 では保存しない" do
    inquiry = Inquiry.new( name: "カフェ〇〇店長▲▲", message: "" )
    expect(inquiry).to be_invalid
  end

  it "name,messageは空白 では保存しない" do
    inquiry = Inquiry.new( name: "", message: "" )
    expect(inquiry).to be_invalid
  end

end