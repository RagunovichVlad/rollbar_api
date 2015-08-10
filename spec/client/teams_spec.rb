require 'vcr'

describe 'Teams API', vcr: true do

  let(:client) { RollbarAPI::Client.new(ENV['ACCESS_TOKEN']) }

  it "return teams list" do
    VCR.use_cassette('teams/all_teams') do
      expect(client.all_teams['err']).to eql(0)
    end
  end

  it "return team" do
    VCR.use_cassette('teams/get_team') do
      expect(client.get_team(26589)['err']).to eql(0)
    end
  end

  it "create a team" do
    VCR.use_cassette('teams/create_team') do
      expect(client.create_team(name: 'test')['err']).to eql(0)
    end
  end

  it "delete a team" do
    VCR.use_cassette('teams/delete_team') do
      expect(client.delete_team(26691)['err']).to eql(0)
    end
  end

  it "check if a project is in a team" do
    VCR.use_cassette('teams/check_project_in_team') do
      expect(client.check_project_in_team(26589, 32194)['err']).to eql(0)
    end
  end

  it "add a project to a team" do
    VCR.use_cassette('teams/add_project_to_team') do
      expect(client.add_project_to_team(26694, 32332)['err']).to eql(0)
    end
  end

  it "remove a project from a team" do
    VCR.use_cassette('teams/remove_project_from_team') do
      expect(client.remove_project_from_team(26694, 32332)['err']).to eql(0)
    end
  end

  it "check team membership" do
    VCR.use_cassette('teams/check_team_membership') do
      expect(client.check_team_membership(26589,26622)['err']).to eql(0)
    end
  end

  it "list team members" do
    VCR.use_cassette('teams/team_members') do
      expect(client.team_members(26589)['err']).to eql(0)
    end
  end

  it "remove a user from a team" do
    VCR.use_cassette('teams/remove_user_from_team') do
      expect(client.remove_user_from_team(26694,26622)['err']).to eql(0)
    end
  end
end
