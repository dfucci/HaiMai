class HaimaisController < ApplicationController
  # GET /haimais
  # GET /haimais.xml
  def index
    @haimais = Haimai.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @haimais }
    end
  end

  # GET /haimais/1
  # GET /haimais/1.xml
  def show
    @haimai = Haimai.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @haimai }
    end
  end

  # GET /haimais/new
  # GET /haimais/new.xml
  def new
    @haimai = Haimai.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @haimai }
    end
  end

  # GET /haimais/1/edit
  def edit
    @haimai = Haimai.find(params[:id])
  end

  # POST /haimais
  # POST /haimais.xml
  def create
    @haimai = Haimai.new(params[:haimai])

    respond_to do |format|
      if @haimai.save
        format.html { redirect_to(@haimai, :notice => 'Haimai was successfully created.') }
        format.xml  { render :xml => @haimai, :status => :created, :location => @haimai }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @haimai.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /haimais/1
  # PUT /haimais/1.xml
  def update
    @haimai = Haimai.find(params[:id])

    respond_to do |format|
      if @haimai.update_attributes(params[:haimai])
        format.html { redirect_to(@haimai, :notice => 'Haimai was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @haimai.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /haimais/1
  # DELETE /haimais/1.xml
  def destroy
    @haimai = Haimai.find(params[:id])
    @haimai.destroy

    respond_to do |format|
      format.html { redirect_to(haimais_url) }
      format.xml  { head :ok }
    end
  end
end
