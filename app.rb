require_relative 'lib/exercise.rb'


## set up repos
Exercise.users_repo = Exercise::Repo::Users.new
$jon = Exercise::User.new({:name => "Jon"})