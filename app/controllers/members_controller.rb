class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  def add_to_competition
    logger.debug "************"
    logger.debug "Selected members: #{params[:member_ids].count}"
    logger.debug "Selected member IDs: #{params[:member_ids]}"
    logger.debug "competition_id: #{params[:competition_id]}"
    logger.debug "************"
    ActiveRecord::Base.transaction do
      assigned_members = Member.where( team_id: current_user.team_id)
      # lets delete old assignments of members to particular competition
      assigned_members.each do |f|
        begin
          assigned_competition = f.competitions.find(params[:competition_id])
          f.competitions.delete(assigned_competition)
        rescue ActiveRecord::RecordNotFound
          logger.debug "Nothing to delete"
        end
      end
      # and add selected ones only
      selected_competition = Competition.find( params[:competition_id] )
      params[:member_ids].each do |f|
        selected_member = Member.find(f)
        selected_member.competitions << selected_competition
      end
    end
    #redirect to form setting member competition levels
  end

  # GET /members
  # GET /members.json
  def index
    if current_user.admin
      @members = Member.all
    else
      @members = Member.all.where( team_id: @current_user.team_id )
    end
    if params[:competition_id]
      @competition_id = params[:competition_id]
    end
  end

  # GET /members/1
  # GET /members/1.json
  def show
  end

  # GET /members/new
  def new
    @member = Member.new
  end

  # GET /members/1/edit
  def edit
  end

  # POST /members
  # POST /members.json
  def create
    @member = Member.new(member_params)
    @member.team_id = 1

    respond_to do |format|
      if @member.save
        format.html { redirect_to @member, success: 'Member was successfully created.' }
        format.json { render :show, status: :created, location: @member }
      else
        format.html { render :new }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /members/1
  # PATCH/PUT /members/1.json
  def update
    respond_to do |format|
      if @member.update(member_params)
        format.html { redirect_to @member, success: 'Member was successfully updated.' }
        format.json { render :show, status: :ok, location: @member }
      else
        format.html { render :edit }
        format.json { render json: @member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /members/1
  # DELETE /members/1.json
  def destroy
    @member.destroy
    respond_to do |format|
      format.html { redirect_to members_url, success: 'Member was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member
      @member = Member.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_params
      params.require(:member).permit(:itf_id, :first_name, :last_name, :birthdate)
    end

end
