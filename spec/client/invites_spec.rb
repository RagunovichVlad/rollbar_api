require 'vcr'

describe 'Invites API', vcr: true do

  let(:client) { RollbarAPI::Client.new(ENV['ACCESS_TOKEN']) }

  it "get an invite" do
    VCR.use_cassette('invites/get_invite') do
      expect(client.get_invite(17942)['err']).to eql(0)
    end
  end

  it "list invites for a team" do
    VCR.use_cassette('invites/invites_for_team') do
      expect(client.invites_for_team(26694)['err']).to eql(0)
    end
  end

  it "invite a user to a team" do
    VCR.use_cassette('invites/invite_user_to_team') do
      expect(client.invite_user_to_team(26694, email: 'vlad.ragunovich@gmail.com')['err']).to eql(0)
    end
  end

  it "cancel an invite" do
    VCR.use_cassette('invites/cancel_invite') do
      expect(client.cancel_invite(17942)['err']).to eql(0)
    end
  end

  it "cancel accepted invite" do
    VCR.use_cassette('invites/cancel_accepted_invite') do
      expect(client.cancel_accepted_invite(26694,26622)['err']).to eql(0)
    end
  end
end
