class RoadDefectsController < ApplicationController
  
  before_filter :authenticate_user!
  
  # GET /road_defects
  # GET /road_defects.json
  def index
    @road_defects = current_user.road_defects

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @road_defects }
    end
  end

  # GET /road_defects/1
  # GET /road_defects/1.json
  def show
    @road_defect = RoadDefect.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @road_defect }
    end
  end

  # GET /road_defects/new
  # GET /road_defects/new.json
  def new
    @road_defect = RoadDefect.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @road_defect }
    end
  end

  # GET /road_defects/1/edit
  def edit
    @road_defect = RoadDefect.find(params[:id])
  end

  # POST /road_defects
  # POST /road_defects.json
  def create
    @road_defect = RoadDefect.new(params[:road_defect])

    respond_to do |format|
      if @road_defect.save
        format.html { redirect_to @road_defect, notice: 'Road defect was successfully created.' }
        format.json { render json: @road_defect, status: :created, location: @road_defect }
      else
        format.html { render action: "new" }
        format.json { render json: @road_defect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /road_defects/1
  # PUT /road_defects/1.json
  def update
    @road_defect = RoadDefect.find(params[:id])

    respond_to do |format|
      if @road_defect.update_attributes(params[:road_defect])
        format.html { redirect_to @road_defect, notice: 'Road defect was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @road_defect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /road_defects/1
  # DELETE /road_defects/1.json
  def destroy
    @road_defect = RoadDefect.find(params[:id])
    @road_defect.destroy

    respond_to do |format|
      format.html { redirect_to road_defects_url }
      format.json { head :no_content }
    end
  end
end
