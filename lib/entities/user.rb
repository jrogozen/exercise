module Exercise
  class User
    attr_accessor :name
    def initialize(params)
      @name = params.fetch(:name)
    end
  end
end