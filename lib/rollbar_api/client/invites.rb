module RollbarAPI
  class Client

    module Invites

      def get_invite(invite_id)
        get("/invite/#{invite_id}")
      end

      def invites_for_team(team_id)
        get("/team/#{team_id}/invites")
      end

      def invite_user_to_team(team_id, options = {})
        post("/team/#{team_id}/invites", body: options)
      end

      def cancel_invite(invite_id)
        delete("/invite/#{invite_id}")
      end

      def cancel_accepted_invite(team_id, user_id)
        delete("/team/#{team_id}/user/#{user_id}")
      end
      
    end

  end
end
