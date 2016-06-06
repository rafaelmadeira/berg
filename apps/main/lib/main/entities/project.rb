require "types"

module Main
  module Entities
    class Project < Dry::Types::Value
      attribute :id, Types::Strict::Int
      attribute :title, Types::Strict::String
      attribute :client, Types::Strict::String
      attribute :url, Types::Strict::String
      attribute :intro, Types::Strict::String
      attribute :body, Types::Strict::String
      attribute :tags, Types::Strict::String
      attribute :slug, Types::Strict::String
      attribute :status, Types::ProjectStatus
      attribute :published_at, Types::Time
    end
  end
end