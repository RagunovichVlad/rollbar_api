module RollbarAPI
  class Client

    module Projects

      def all_projects
        get('/projects')
      end

      def get_project(project_id)
        get("/project/#{project_id}")
      end

      def create_project(options = {})
        post('/projects', body: options)
      end

      def delete_project(project_id)
        delete("/project/#{project_id}")
      end

      def update_project_access_tokens(project_id, options = {})
        patch("/project/#{project_id}/access_tokens", body: options)
      end
    end
  end
end
