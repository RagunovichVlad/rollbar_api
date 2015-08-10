module RollbarAPI
  class Client

    module Items

      def get_item(item_id)
        get("/item/#{id}")
      end

      def item_by_counter(counter)
        get("/item_by_counter/#{counter}")
      end

      def all_items
        get('/items/')
      end

      def update_item(item_id, options = {})
        patch("/item/#{item_id}", body: options)
      end
    end
  end
end
