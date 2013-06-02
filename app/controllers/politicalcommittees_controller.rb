class PoliticalcommitteesController < ApplicationController
  # GET /politicalcommittees
  # GET /politicalcommittees.json
  def index
    @politicalcommittees = Politicalcommittee.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @politicalcommittees }
    end
  end

  # GET /politicalcommittees/1
  # GET /politicalcommittees/1.json
  def show
    @politicalcommittee = Politicalcommittee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @politicalcommittee }
    end
  end

  # GET /politicalcommittees/new
  # GET /politicalcommittees/new.json
  def new
    @politicalcommittee = Politicalcommittee.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @politicalcommittee }
    end
  end

  # GET /politicalcommittees/1/edit
  def edit
    @politicalcommittee = Politicalcommittee.find(params[:id])
  end

  # POST /politicalcommittees
  # POST /politicalcommittees.json
  def create
    @politicalcommittee = Politicalcommittee.new(params[:politicalcommittee])

    respond_to do |format|
      if @politicalcommittee.save
        format.html { redirect_to @politicalcommittee, notice: 'Politicalcommittee was successfully created.' }
        format.json { render json: @politicalcommittee, status: :created, location: @politicalcommittee }
      else
        format.html { render action: "new" }
        format.json { render json: @politicalcommittee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /politicalcommittees/1
  # PUT /politicalcommittees/1.json
  def update
    @politicalcommittee = Politicalcommittee.find(params[:id])

    respond_to do |format|
      if @politicalcommittee.update_attributes(params[:politicalcommittee])
        format.html { redirect_to @politicalcommittee, notice: 'Politicalcommittee was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @politicalcommittee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /politicalcommittees/1
  # DELETE /politicalcommittees/1.json
  def destroy
    @politicalcommittee = Politicalcommittee.find(params[:id])
    @politicalcommittee.destroy

    respond_to do |format|
      format.html { redirect_to politicalcommittees_url }
      format.json { head :no_content }
    end
  end
end
