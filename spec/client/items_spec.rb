require 'vcr'

describe 'Items API', vcr: true do

  let(:client) { RollbarAPI::Client.new(ENV['PROJECT_ACCESS_TOKEN']) }

  it "get an item by ID" do
    VCR.use_cassette('items/get_item') do
      expect(client.get_item(344193591)['err']).to eql(0)
    end
  end

  it "get an item by counter" do
    VCR.use_cassette('items/item_by_counter') do
      expect(client.item_by_counter(1)['err']).to eql(0)
    end
  end

  it "list all items" do
    VCR.use_cassette('items/all_items') do
      expect(client.all_items['err']).to eql(0)
    end
  end

  it "modify an item" do
    VCR.use_cassette('items/update_item') do
      expect(client.update_item(344193591, status: 'resolved')['err']).to eql(0)
    end
  end
end
