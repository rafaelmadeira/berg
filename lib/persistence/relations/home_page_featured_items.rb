module Persistence
  module Relations
    class HomePageFeaturedItems < ROM::Relation[:sql]
      schema(:home_page_featured_items) do
        attribute :id, Types::Serial
        attribute :position, Types::Strict::Int
        attribute :title, Types::Strict::String
        attribute :description, Types::Strict::String
        attribute :url, Types::Strict::String
        attribute :cover_image, Types::Strict::Hash
      end
    end
  end
end