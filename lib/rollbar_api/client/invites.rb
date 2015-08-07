module RollbarAPI
  class Client

    module Invites

      def get_invite(invite_id)
        self.class.get("/invite/#{invite_id}").parsed_response
      end

      def invites_for_team(team_id)
        self.class.get("/team/#{team_id}/invites").parsed_response
      end

      def invite_user_to_team(name,email)
        self.class.post("/team/#{team_id}/invites").parsed_response
      end

      def cancel_invite(invite_id)
        self.class.delete("/invite/#{invite_id}").parsed_response
      end

      def cancel_accepted_invite(team_id, user_id)
        self.class.delete("/team/#{team_id}/user/#{user_id}").parsed_response
      end
    end
  end
end
