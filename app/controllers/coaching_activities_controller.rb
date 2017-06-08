class CoachingActivitiesController < ApplicationController
  before_action :set_coaching_activity, only: [:show, :edit, :update, :destroy]

  # GET /coaching_activities
  # GET /coaching_activities.json
  def index
    @coaching_activities = CoachingActivity.all
  end

  # GET /coaching_activities/1
  # GET /coaching_activities/1.json
  def show
  end

  # GET /coaching_activities/new
  def new
    @coaching_activity = CoachingActivity.new
  end

  # GET /coaching_activities/1/edit
  def edit
  end

  # POST /coaching_activities
  # POST /coaching_activities.json
  def create
    @coaching_activity = CoachingActivity.new(coaching_activity_params)

    respond_to do |format|
      if @coaching_activity.save
        format.html { redirect_to @coaching_activity, notice: 'Coaching activity was successfully created.' }
        format.json { render :show, status: :created, location: @coaching_activity }
      else
        format.html { render :new }
        format.json { render json: @coaching_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coaching_activities/1
  # PATCH/PUT /coaching_activities/1.json
  def update
    respond_to do |format|
      if @coaching_activity.update(coaching_activity_params)
        format.html { redirect_to @coaching_activity, notice: 'Coaching activity was successfully updated.' }
        format.json { render :show, status: :ok, location: @coaching_activity }
      else
        format.html { render :edit }
        format.json { render json: @coaching_activity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coaching_activities/1
  # DELETE /coaching_activities/1.json
  def destroy
    @coaching_activity.destroy
    respond_to do |format|
      format.html { redirect_to coaching_activities_url, notice: 'Coaching activity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coaching_activity
      @coaching_activity = CoachingActivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coaching_activity_params
      params.require(:coaching_activity).permit(:date_start, :date_finish, :institution_id)
    end
end