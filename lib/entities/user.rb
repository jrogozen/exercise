module Exercise
  class User
    attr_accessor :id
    attr_reader :name
    def initialize(params)
      @name = params.fetch(:name)
      @id = params[:id]
    end
  end
end