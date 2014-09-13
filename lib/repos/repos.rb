require_relative '../exercise.rb'

module Exercise
  module Repo
    class Repo
      def initialize
        db = Mongo::MongoClient.new["exercisedb"]
        
        @users = db.collection("users")
        @users.create_index("name")
      end
    end
  end
end


module Exercise
  def self.users_repo=(x)
    @@users_repo = x
  end

  def self.users_repo
    @@users_repo
  end
end