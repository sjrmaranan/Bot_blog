class BubotBlogsController < ApplicationController
  before_action :set_bubot_blog, only: [:show, :edit, :update, :destroy]

  # GET /bubot_blogs
  # GET /bubot_blogs.json
  def index
    @bubot_blogs = BubotBlog.all
  end

  # GET /bubot_blogs/1
  # GET /bubot_blogs/1.json
  def show
  end

  # GET /bubot_blogs/new
  def new
    @bubot_blog = BubotBlog.new
  end

  # GET /bubot_blogs/1/edit
  def edit
  end

  # POST /bubot_blogs
  # POST /bubot_blogs.json
  def create
    @bubot_blog = BubotBlog.new(bubot_blog_params)

    respond_to do |format|
      if @bubot_blog.save
        format.html { redirect_to @bubot_blog, notice: 'Bubot blog was successfully created.' }
        format.json { render :show, status: :created, location: @bubot_blog }
      else
        format.html { render :new }
        format.json { render json: @bubot_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bubot_blogs/1
  # PATCH/PUT /bubot_blogs/1.json
  def update
    respond_to do |format|
      if @bubot_blog.update(bubot_blog_params)
        format.html { redirect_to @bubot_blog, notice: 'Bubot blog was successfully updated.' }
        format.json { render :show, status: :ok, location: @bubot_blog }
      else
        format.html { render :edit }
        format.json { render json: @bubot_blog.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bubot_blogs/1
  # DELETE /bubot_blogs/1.json
  def destroy
    @bubot_blog.destroy
    respond_to do |format|
      format.html { redirect_to bubot_blogs_url, notice: 'Bubot blog was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bubot_blog
      @bubot_blog = BubotBlog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def bubot_blog_params
      params.require(:bubot_blog).permit(:title, :content)
    end
end
