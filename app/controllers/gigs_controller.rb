
























class GigsController < ApplicationController
  before_action :set_gig, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!

  def index
    @gigs = Gig.all
  end


  # def index
  #     if current_user
  #       @gigs = Gig.all_except(current_gig.id).search(params[:search])
  #     else
  #       @gigs = Gig.search(params[:search])
  #     end
  #   end




  def show
    @gig = Gig.find(params[:id])
  end

  def new
    @gig = Gig.new
  end

  def edit
    @gig = Gig.find(params[:id])
  end

  def create
    @gig = Gig.new(gig_params)

    respond_to do |format|
      if @gig.save
        format.html { redirect_to @gig, notice: 'Gig was successfully created.' }
        format.json { render :show, status: :created, location: @gig }
      else
        format.html { render :new }
        format.json { render json: @gig.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @gig.update(gig_params)
        format.html { redirect_to @gig, notice: 'Gig was successfully updated.' }
        format.json { render :show, status: :ok, location: @gig }
      else
        format.html { render :edit }
        format.json { render json: @gig.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @gig.destroy
    respond_to do |format|
      format.html { redirect_to gigs_url, notice: 'Gig was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_gig
      @gig = Gig.find(params[:id])
    end

    def gig_params
      params.require(:gig).permit(:name, :gig_id, :gig_image)
    end
end