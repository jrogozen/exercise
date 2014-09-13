module Exercise
  class User
    attr_accessor :id
    attr_reader :name, :bench_press, :squat, :deadlift

    def initialize(params)
      @name = params.fetch(:name)
      @id = params[:id]
      
      @bench_press = params[:bench_press]
      @deadlift = params[:deadlift]
      @squat = params[:squat]
    end

    def update_weights(params)
      @bench_press = params[:bench_press]
      @deadlift = params[:deadlift]
      @squat = params[:squat]

      # update values 
      # use repo to save to database
    end

  end
end