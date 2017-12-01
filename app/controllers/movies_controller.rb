class MoviesController < OpenReadController
  before_action :set_movie, only: %i[show update destroy]

  # GET /movies
  def index
    @movies = Movie.all

    render json: @movies
  end

  # GET /movies/1
  def show
    render json: @movie
  end

  # POST /movies
  def create
    @movie = current_user.movies.build(movie_params)

    if @movie.save
      render json: @movie, status: :created
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /movies/1
  def update
    @movie = current_user.movies.build(params[:id])

    if @movie.update(movie_params)
      head :no_content
    else
      render json: @movie.errors, status: :unprocessable_entity
    end
  end

  # DELETE /movies/1
  def destroy
    @movie.destroy
    head :no_content
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_movie
    @movie = current_user.movies.find(params[:id])
  end

    # Only allow a trusted parameter "white list" through.
    def movie_params
      params.require(:movie).permit(:title, :description, :length, :rating)
    end
end
