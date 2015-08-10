require 'vcr'

describe 'Projects API', vcr: true do

  let(:client) { RollbarAPI::Client.new(ENV['ACCESS_TOKEN']) }

  it "list projects" do
    VCR.use_cassette('projects/all_projects') do
      expect(client.all_projects['err']).to eql(0)
    end
  end

  it "get a project" do
    VCR.use_cassette('projects/get_project') do
      expect(client.get_project(32329)['err']).to eql(0)
    end
  end

  it "create a project" do
    VCR.use_cassette('projects/create_project') do
      expect(client.create_project(name: 'test')['err']).to eql(0)
    end
  end

  it "delete a project" do
    VCR.use_cassette('projects/delete_project') do
      expect(client.delete_project(32329)['err']).to eql(0)
    end
  end

  it "list project access tokens" do
    VCR.use_cassette('projects/project_access_tokens') do
      expect(client.project_access_tokens(32329)['err']).to eql(0)
    end
  end

  it "update rate limits for a project access token" do
    VCR.use_cassette('projects/update_project_access_tokens') do
      expect(client.update_project_access_tokens(32382, ENV['PROJECT_ACCESS_TOKEN'], {rate_limit_window_count: 0, rate_limit_window_size: 0})['err']).to eql(0)
    end
  end
end
