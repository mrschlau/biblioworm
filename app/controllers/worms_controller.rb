class WormsController < ApplicationController
  # GET /worms
  # GET /worms.xml
  def index
    @worms = Worm.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @worms }
    end
  end

  # GET /worms/1
  # GET /worms/1.xml
  def show
    @worm = Worm.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @worm }
    end
  end

  # GET /worms/new
  # GET /worms/new.xml
  def new
    @worm = Worm.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @worm }
    end
  end

  # GET /worms/1/edit
  def edit
    @worm = Worm.find(params[:id])
  end

  # POST /worms
  # POST /worms.xml
  def create
    @worm = Worm.new(params[:worm])

    respond_to do |format|
      if @worm.save
        format.html { redirect_to(@worm, :notice => 'Worm was successfully created.') }
        format.xml  { render :xml => @worm, :status => :created, :location => @worm }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @worm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /worms/1
  # PUT /worms/1.xml
  def update
    @worm = Worm.find(params[:id])

    respond_to do |format|
      if @worm.update_attributes(params[:worm])
        format.html { redirect_to(@worm, :notice => 'Worm was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @worm.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /worms/1
  # DELETE /worms/1.xml
  def destroy
    @worm = Worm.find(params[:id])
    @worm.destroy

    respond_to do |format|
      format.html { redirect_to(worms_url) }
      format.xml  { head :ok }
    end
  end
end
