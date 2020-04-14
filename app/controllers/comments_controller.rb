class CommentsController < ApplicationController
    before_action :set_article
    def create
        # @article = Article.find(params[:article_id])
        @comment = @article.comments.create(comment_params)
        redirect_to article_path(@article)
      end

      def destroy
        # @article = Article.find(params[:article_id])
        @comment = @article.comments.find(params[:id])
        @comment.destroy
        redirect_to article_path(@article)
      end
     def edit
        @comment=Comment.find(id=params[:id])
        # render  plain: @comment.commenter
     end
     def update
        x=Comment.find(id=params[:id])
        x.body=params[:comment][:body]
        x.commenter=params[:comment][:commenter]
        x.save
        @comment=Comment.find(id=params[:id])
        redirect_to article_path(@article)

        #   render  plain:  
          
     end
        private
        def comment_params
          params.require(:comment).permit(:commenter, :body)
        end
        def set_article
            @article = Article.find(params[:article_id])    
        end
end
