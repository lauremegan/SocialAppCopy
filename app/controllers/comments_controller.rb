class CommentsController < ApplicationController
  # GET /comments
  # GET /comments.json
  def index
    @comments = Comment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @comments }
    end
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @comment = Comment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/new
  # GET /comments/new.json
  def new
    @comment = Comment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @comment }
    end
  end

  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])
  end

  # POST /comments
  # POST /comments.json
  def create
   # @comment = Comment.new(params[:comment])
    @article = Article.find(params[:article_id])
    
    respond_to do |format|
      if @comment.save
       # format.html { redirect_to @comment, notice: 'Comment was successfully created.' }
        #format.html { redirect_to(@article, :notice => 'Comment was successfully created.')
        format.html { redirect_to(@article, notice: 'Comment was successfully created.') }
   
 #format.json { render json: @comment, status: :created, location: @comment }
  format.xml  { render :xml => @article, :status => :created, :location => @article }     
 #format.xml  { render xml: @article, status: created: location: @article }

else
        #format.html { render action: "new" }
        #format.html { redirect_to(@article, :notice => 
       # 'Comment could not be saved. Please fill in all fields')}
        
        format.html { redirect_to(@article, notice: 
        'Comment could not be saved. Please fill in all fields')}
        
        #format.json { render json: @comment.errors, status: :unprocessable_entity }
        #format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
        format.xml  { render xml: @comment.errors, status: unprocessable_entity: }
      end
    end
  end

  # PUT /comments/1
  # PUT /comments/1.json
  def update
    @comment = Comment.find(params[:id])
    # modified
    @article = @comment.article
    
    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        
       # format.html { redirect_to(@article, :notice => 'Comment was successfully updated.') }      
        format.html { redirect_to @comment, notice: 'Comment was successfully updated.' }
        # format.json { head :no_content } modified it to:
        format.xml  { head :ok }
      else
      	#format.html { render :action => "edit" }
        format.html { render action: "edit" }
        #format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
        # modified it to:
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
  	  # no change needed
    @comment = Comment.find(params[:id])
     @article = Article.find(params[:article_id])
     # no change needed
     @comment.destroy
     #no change needed
    respond_to do |format|
   #format.html { redirect_to comments_url } (modified to:)
   #format.html { redirect_to(@article, :notice => 'Comment was successfully deleted.') }   
   format.html { redirect_to(@article, notice: 'Comment was successfully deleted.') }
   #format.json { head :no_content } (modified to:)
    format.xml  { head :ok }
    end
  end
end
