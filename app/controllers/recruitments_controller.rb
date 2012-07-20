class RecruitmentsController < ApplicationController
  # GET /recruitments
  # GET /recruitments.json
  def index
    @recruitments = Recruitment.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @recruitments }
    end
  end

  # GET /recruitments/1
  # GET /recruitments/1.json
  def show
    @recruitment = Recruitment.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @recruitment }
    end
  end

  # GET /recruitments/new
  # GET /recruitments/new.json
  def new
    @recruitment = Recruitment.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @recruitment }
    end
  end

  # GET /recruitments/1/edit
  def edit
    @recruitment = Recruitment.find(params[:id])
  end

  # POST /recruitments
  # POST /recruitments.json
  def create
    @recruitment = Recruitment.new(params[:recruitment])

    respond_to do |format|
      if @recruitment.save
        format.html { redirect_to @recruitment, notice: 'Recruitment was successfully created.' }
        format.json { render json: @recruitment, status: :created, location: @recruitment }
      else
        format.html { render action: "new" }
        format.json { render json: @recruitment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /recruitments/1
  # PUT /recruitments/1.json
  def update
    @recruitment = Recruitment.find(params[:id])

    respond_to do |format|
      if @recruitment.update_attributes(params[:recruitment])
        format.html { redirect_to @recruitment, notice: 'Recruitment was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @recruitment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recruitments/1
  # DELETE /recruitments/1.json
  def destroy
    @recruitment = Recruitment.find(params[:id])
    @recruitment.destroy

    respond_to do |format|
      format.html { redirect_to recruitments_url }
      format.json { head :no_content }
    end
  end
end
