module RollbarAPI
  class Client

    module Items

      def get_item(item_id)
        self.class.get("/item/#{id}").parsed_response
      end

      def item_by_counter(counter)
        self.class.get("/item_by_counter/#{counter}").parsed_response
      end

      def all_items
        self.class.get('/items/')
      end

      def update_item(item_id, status, resolved_in_version)
        self.class.patch("/item/#{item_id}", body: {status: status, resolved_in_version: resolved_in_version}).parsed_response
      end
    end
  end
end
