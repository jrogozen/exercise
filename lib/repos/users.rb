module Exercise
  module Repo
    class Users < Repo

      # def build_entity(hash)
      #   Exercise::User.new(
      #     {
      #       :name => hash[:name],
      #       :id => hash["_id"]
      #     }
      #   )
      # end

      def save_user(user)

        result = @users.find({"_id" => user.id}).to_a

        if result.empty?
          id = @users.insert( 
            { :name => user.name}
          )
          user.id = id
        else
          @users.update(
            { "_id" => user.id },
            { $set => {:name => user.name} }
          )
        end
        
      end

    end
  end
end