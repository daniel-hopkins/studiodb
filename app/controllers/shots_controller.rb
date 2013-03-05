class ShotsController < ApplicationController
  # GET /shots
  # GET /shots.json

  before_filter :find_job


  def index
    @shots = Shot.order("shots.date DESC").where(:job_id => @job_id)

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shot }
    end
  end


  # GET /shots/1
  # GET /shots/1.json
  def show
    @shot = Shot.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @shot }
    end
  end

  # GET /shots/new
  # GET /shots/new.json
  def new
    @shot = Shot.new(:job_id => @job_id)

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @shot }
    end
  end

  # GET /shots/1/edit
  def edit
    @shot = Shot.find(params[:id])
  end

  # POST /shots
  # POST /shots.json
  def create
    @shot = Shot.create(params[:shot])

    # respond_to do |format|
    #   if @shot.save
    #     format.html { redirect_to @shot.job, action: 'list', :job_id => @shot.job_id, notice: 'Shot was successfully created.' }
    #     format.json { render json: @shot, status: :created, location: @shot }
    #     # redirect_to(:action => 'index', :job_id => @shot.job_id)
    #   else
    #     format.html { render action: "new" }
    #     format.json { render json: @shot.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PUT /shots/1
  # PUT /shots/1.json
  def update
    @shot = Shot.find(params[:id])

    respond_to do |format|
      if @shot.update_attributes(params[:shot])
        format.html { redirect_to @shot, notice: 'Shot was successfully updated.' }
        format.json { head :no_content }
        redirect_to(:action => 'index', :job_id => @shot.job_id)
      else
        format.html { render action: "edit" }
        format.json { render json: @shot.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shots/1
  # DELETE /shots/1.json
  def destroy
    @shot = Shot.find(params[:id])
    @shot.destroy
    redirect_to(:action => 'index', :job_id => @job.id)

    respond_to do |format|
      format.html { redirect_to shots_url }
      format.json { head :no_content }
    end
  end

  private
  def find_job
    if params[:job_id]
      @job = Job.find_by_id(params[:job_id])
    end
  end
end
