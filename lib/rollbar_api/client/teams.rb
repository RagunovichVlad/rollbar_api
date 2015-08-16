module RollbarAPI
  class Client

    module Teams

      def all_teams
        get('/teams')
      end

      def get_team(team_id)
        get("/team/#{team_id}")
      end

      def create_team(options = {})
        post('/teams', body: options)
      end

      def delete_team(team_id)
        delete("/team/#{team_id}")
      end

      def check_project_in_team(team_id, project_id)
        get("/team/#{team_id}/project/#{project_id}")
      end

      def add_project_to_team(team_id, project_id)
        put("/team/#{team_id}/project/#{project_id}")
      end

      def remove_project_from_team(team_id, project_id)
        delete("/team/#{team_id}/project/#{project_id}")
      end

      def check_team_membership(team_id, user_id)
        get("/team/#{team_id}/user/#{user_id}")
      end

      def team_members(team_id)
        get("/team/#{team_id}/users")
      end

      def remove_user_from_team(team_id, user_id)
        delete("/team/#{team_id}/user/#{user_id}")
      end
      
    end

  end
end
