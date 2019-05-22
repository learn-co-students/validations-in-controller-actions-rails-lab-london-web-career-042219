class AuthorsController < ApplicationController
  def show
    @author = Author.find(params[:id])
  end

  def new
  end

  def create
    @author = Author.new(author_params)

    respond_to do |format|
      if @author.save
        format.html { redirect_to author_path(@author), notice: 'Author Successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  private

  def author_params
    params.permit(:email, :name)
  end
end
