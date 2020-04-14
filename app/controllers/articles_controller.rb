class ArticlesController < ApplicationController
    def new
@name="hazem"

    end
    # 
    def create
        @user = Article.create(params.require(:article).permit(:title, :text ))
#   if @user.save
#          @my_title=@user.id
#          redirect_to "/article/get/#{@my_title}"
#   else
#     redirect_to "/article/new"
#   end
        @user.save
        render 'new'

    end
    # 
    def index
        @data=Article.all
    end
    # 
    def show
               
        @article=Article.find(id=params[:id])
        @nnn=@article.title
        
        if @article
        else
            render plain:'err no data'
        end
    end
    # 
    def edit
        @article = Article.find(params[:id])

    end
    # 
    def destroy
        a=Article.find(id=params[:id])
        a.destroy
        redirect_to  articles_path
    end
    def update

        # render plain: @my_title
@x=Article.find(id=params[:id])
@x.text=params[:article][:text]
@x.title=params[:article][:title]
@x=@x.save
redirect_to  articles_path
        # render  plain: params[:article][:title]
        end
    # 
end
