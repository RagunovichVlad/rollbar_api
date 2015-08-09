require 'vcr'

describe 'Projects API', vcr: true do

  let(:client) { RollbarAPI::Client.new(ENV['ACCESS_TOKEN']) }

  it "must return projects json" do
    VCR.use_cassette('projects/all_projects') do
      expect(client.all_projects['err']).to eql(0)
    end
  end

  it "must return project" do
    VCR.use_cassette('projects/get_project') do
      expect(client.get_project(32329)['err']).to eql(0)
    end
  end

  it "must create new project" do
    VCR.use_cassette('projects/create_project') do
      expect(client.create_project('test')['err']).to eql(0)
    end
  end

  it "must delete project" do
    VCR.use_cassette('projects/delete_project') do
      expect(client.delete_project(32329)['err']).to eql(0)
    end
  end
end
