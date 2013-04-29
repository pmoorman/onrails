class QurriculumsController < ApplicationController
  # GET /qurriculums
  # GET /qurriculums.json
  def index
    @qurriculums = Qurriculum.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @qurriculums }
    end
  end

  # GET /qurriculums/1
  # GET /qurriculums/1.json
  def show
    @qurriculum = Qurriculum.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @qurriculum }
    end
  end

  # GET /qurriculums/new
  # GET /qurriculums/new.json
  def new
    @qurriculum = Qurriculum.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @qurriculum }
    end
  end

  # GET /qurriculums/1/edit
  def edit
    @qurriculum = Qurriculum.find(params[:id])
  end

  # POST /qurriculums
  # POST /qurriculums.json
  def create
    @qurriculum = Qurriculum.new(params[:qurriculum])

    respond_to do |format|
      if @qurriculum.save
        format.html { redirect_to @qurriculum, notice: 'Qurriculum was successfully created.' }
        format.json { render json: @qurriculum, status: :created, location: @qurriculum }
      else
        format.html { render action: "new" }
        format.json { render json: @qurriculum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /qurriculums/1
  # PUT /qurriculums/1.json
  def update
    @qurriculum = Qurriculum.find(params[:id])

    respond_to do |format|
      if @qurriculum.update_attributes(params[:qurriculum])
        format.html { redirect_to @qurriculum, notice: 'Qurriculum was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @qurriculum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /qurriculums/1
  # DELETE /qurriculums/1.json
  def destroy
    @qurriculum = Qurriculum.find(params[:id])
    @qurriculum.destroy

    respond_to do |format|
      format.html { redirect_to qurriculums_url }
      format.json { head :no_content }
    end
  end
end
