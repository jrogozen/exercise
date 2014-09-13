module Exercise
  module Repo
    class Users < Repo

      def build_entity(hash)
        Exercise::User.new(
          {
            :name => hash[:name],
            :id => hash["_id"],
            :bench_press => hash[:bench_press],
            :squat => hash[:squat],
            :deadlift => hash[:deadlift]
          }
        )
      end

      def save_user(user)
        result = @users.find({"i" => user.id}).to_a

        if result.empty?
          id = @users.insert( 
            { :name => user.name,
              :bench_press => user.bench_press,
              :squat => user.squat,
              :deadlift => user.deadlift
            }
          )
        else
          id = @users.update(
            { "i" => user.id },
            { $set => {
                :name => user.name,
                :bench_press => user.bench_press,
                :squat => user.squat,
                :deadlift => user.deadlift
              } 
            }
          )
        end
      end

      def view_user(user_id)
      end

      def view_weights(user_id)
      end



    end
  end
end