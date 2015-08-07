module RollbarAPI
  class Client

    module Projects

      def all_projects
        self.class.get('/projects').parsed_response
      end

      def get_project(id)
        self.class.get("/project/#{id}").parsed_response
      end

      def create_project(name)
        self.class.post('/projects', body: {name: name}).parsed_response
      end

      def delete_project(id)
        self.class.delete("/project/#{id}").parsed_response
      end

      def update_project_access_tokens(id, window_count, window_size)
        self.class.patch("/project/#{id}/access_tokens", body: {rate_limit_window_count: window_count, rate_limit_window_size: window_size}).parsed_response
      end
    end
  end
end
