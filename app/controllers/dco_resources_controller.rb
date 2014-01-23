class DcoResourcesController < ApplicationController
  before_action :set_dco_resource, only: [:show, :edit, :update, :destroy]

  # GET /dco_resources
  # GET /dco_resources.json
  def index
    @dco_resources = DcoResource.all
  end

  # GET /dco_resources/1
  # GET /dco_resources/1.json
  def show
  end

  # GET /dco_resources/new
  def new
    @dco_resource = DcoResource.new
  end

  # GET /dco_resources/1/edit
  def edit
  end

  # POST /dco_resources
  # POST /dco_resources.json
  def create
    @dco_resource = DcoResource.new(dco_resource_params)

    respond_to do |format|
      if @dco_resource.save
        format.html { redirect_to @dco_resource, notice: 'Dco resource was successfully created.' }
        format.json { render action: 'show', status: :created, location: @dco_resource }
      else
        format.html { render action: 'new' }
        format.json { render json: @dco_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dco_resources/1
  # PATCH/PUT /dco_resources/1.json
  def update
    respond_to do |format|
      if @dco_resource.update(dco_resource_params)
        format.html { redirect_to @dco_resource, notice: 'Dco resource was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @dco_resource.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dco_resources/1
  # DELETE /dco_resources/1.json
  def destroy
    @dco_resource.destroy
    respond_to do |format|
      format.html { redirect_to dco_resources_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dco_resource
      @dco_resource = DcoResource.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dco_resource_params
      params.require(:dco_resource).permit(:title, :title_link, :owned_by, :purpose, :added_by, :added_on, :outdated)
    end
end
