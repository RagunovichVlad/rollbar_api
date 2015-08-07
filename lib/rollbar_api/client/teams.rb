module RollbarAPI
  class Client

    module Teams

      def all_teams
        self.class.get('/teams').parsed_response
      end

      def get_team(id)
        self.class.get("/teams/#{id}").parsed_response
      end

      def create_team(name, access_level = 'standard')
        self.class.post('/teams', body: {name: name, access_level: access_level}).parsed_response
      end

      def delete_team(id)
        self.class.delete("/team/#{id}").parsed_response
      end

      def check_project_in_team(team_id, project_id)
        self.class.get("/team/#{team_id}/project/#{project_id}").parsed_response
      end

      def add_project_to_team(team_id, project_id)
        self.class.put("/team/#{team_id}/project/#{project_id}").parsed_response
      end

      def remove_project_from_team(team_id, project_id)
        self.class.delete("/team/#{team_id}/project/#{project_id}").parsed_response
      end

      def check_team_membership(team_id, user_id)
        self.class.get("/team/#{team_id}/user/#{user_id}").parsed_response
      end

      def team_members(team_id)
        self.class.get("/team/#{team_id}/users").parsed_response
      end

      def remove_user_from_team
        self.class.delete("/team/#{team_id}/user/#{user_id}").parsed_response
      end
    end
  end
end
