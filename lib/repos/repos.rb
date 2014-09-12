require_relative '../exercise.rb'

module Exercise
  module Repo
    class Repo
      def initialize
        mongo = Mongo::MongoClient.new
        @db = mongo['exercisedb']
        @users = @db['users']
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