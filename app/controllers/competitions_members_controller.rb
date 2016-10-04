class CompetitionsMembersController < ApplicationController
  before_action :set_competitions_member, only: [:show, :edit, :update, :destroy]

  def update_competition_categories

  end

  # GET /competitions_members
  # GET /competitions_members.json
  def index
    if current_user.admin
      @members = CompetitionsMember.all
    else
      # @competitions_members = CompetitionsMember.all.where( Member.team_id: @current_user.team_id )
      @members = CompetitionsMember.joins(:members).where( team_id: @current_user.team_id )
    end
    #@tull = Tull.all
    #@tull_team = TullTeam.all
    #@wirok = Wirok.all
    #@tki = Tki.all
    #@mobum_matsogi = MobumMatsogi.all
  end

  # GET /competitions_members/1
  # GET /competitions_members/1.json
  def show
  end

  # GET /competitions_members/new
  def new
    @competitions_member = CompetitionsMember.new
  end

  # GET /competitions_members/1/edit
  def edit
  end

  # POST /competitions_members
  # POST /competitions_members.json
  def create
    @competitions_member = CompetitionsMember.new(competitions_member_params)

    respond_to do |format|
      if @competitions_member.save
        format.html { redirect_to @competitions_member, notice: 'Competitions member was successfully created.' }
        format.json { render :show, status: :created, location: @competitions_member }
      else
        format.html { render :new }
        format.json { render json: @competitions_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /competitions_members/1
  # PATCH/PUT /competitions_members/1.json
  def update
    respond_to do |format|
      if @competitions_member.update(competitions_member_params)
        format.html { redirect_to @competitions_member, notice: 'Competitions member was successfully updated.' }
        format.json { render :show, status: :ok, location: @competitions_member }
      else
        format.html { render :edit }
        format.json { render json: @competitions_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /competitions_members/1
  # DELETE /competitions_members/1.json
  def destroy
    @competitions_member.destroy
    respond_to do |format|
      format.html { redirect_to competitions_members_url, notice: 'Competitions member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_competitions_member
      @competitions_member = CompetitionsMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def competitions_member_params
      params.fetch(:competitions_member, {})
    end
end
