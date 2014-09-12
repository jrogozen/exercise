module Exercise
  module Repo
    class Users < Repo
      def save_user(user)
        @users.insert(
          {
            :name => user.name
          }
        )
      end
    end
  end
end