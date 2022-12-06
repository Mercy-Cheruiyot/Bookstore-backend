class AuthorsController < ApplicationController
    def index
        author=Author.all
        render json: author, status: :ok
    end
    def show
        author=find_author
        render json: author, status: :ok

    end
    def update 
        author=find_author
        author= Author.update(author_params)
          render json: author, status: :ok

    end
    def create
        author= Author.create!(author_params)
        render json: author, status: :created

    end
    def destroy
        author=find_author
        author.destroy
        head :no_content

    end
    private 
    def find_author
        Author.find_by(id: params[:id])
    end
    def author_params
        params.permit(:name, :genre, :image_url)
    end


end
