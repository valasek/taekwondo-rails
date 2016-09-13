class StaticPagesController < ApplicationController
  def home
      if logged_in?
        redirect_to members_path
      else
        @teams = Team.all
        @members = Member.group(:team_id).count(:team_id)
        @users = User.all.count
      end
  end

  def help
  end
  
  def about
  end

  def contact
  end
end
