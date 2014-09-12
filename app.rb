require_relative 'lib/exercise.rb'


## set up repos
Exercise.users_repo = Exercise::Repo::Users.new
$jon = Exercise::User.new({:name => "BLAHBJSBLSB", :id => BSON::ObjectId("541376e5e20b477800000001")})