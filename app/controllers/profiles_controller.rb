class ProfilesController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :validate_user, only: [:edit, :update]   #users cannot edit, update or destroy other's profiles
  before_action :validate_admin, only: [:destroy]   #Only admins can delete a profile

  # GET /profiles
  # GET /profiles.json
  def index
    @all_profiles = Profile.all

    @gay_males = Profile.where(sex: 'Male').where(orientation: 'Gay')
    @gay_females = Profile.where(sex: 'Female').where(orientation: 'Gay')

    @bi_males = Profile.where(sex: 'Male').where(orientation: 'Bisexual')
    @bi_females = Profile.where(sex: 'Female').where(orientation: 'Bisexual')

    @straight_males = Profile.where(sex: 'Male').where(orientation: 'Straight')
    @straight_females = Profile.where(sex: 'Female').where(orientation: 'Straight')
  end

  def 

  # GET /profiles/1
  # GET /profiles/1.json
  def show
    # @profile = Profile.find(params[:id])
  end

  # GET /profiles/new
  def new
    if current_user.profile == nil
      @profile = Profile.new
    else
      redirect_to profiles_path
    end
  end

  # GET /profiles/1/edit
  def edit
  end

  # POST /profiles
  # POST /profiles.json
  
  def create
    @profile = Profile.new(profile_params)
    @profile.picture.attach(params[:profile][:picture])
    @profile.user_id = current_user.id

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /profiles/1
  # PATCH/PUT /profiles/1.json
  def update
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /profiles/1
  # DELETE /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'You can\'t delete profiles' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    def validate_user
      if current_user.id.to_s != Profile.find(params[:id]).user_id.to_s
        flash[:alert] = "You are not authorized!"
        redirect_to profiles_path
      end
    end

    def validate_admin
      if !current_user.has_role?(:admin)
        flash[:alert] = "Only admins can delete profiles"
        redirect_to profiles_path
      end
    end
     
    # Only allow a list of trusted parameters through.
    def profile_params
      params.require(:profile).permit(:picture, :name, :sex, :age, :about_me, :work_education, :location, :height, :health, :vices, :pets, :children, :religion, :politics, :starsign, :looking_for, :orientation)
    end
end
