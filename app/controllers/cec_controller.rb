class CecController < ApplicationController
 before_filter :authenticate_user!, :except => [:home]
  def home
  end

  def new
    @user=User.new

  end

  def create
     @user=User.new(params[:todo])
     if @user.save
      flash[:notice] ="Saved"
      respond_to do |format|
        format.html{redirect_to "/cec/admin2"}
        format.js
      end
     else
      flash[:error]="Not Saved"
     end
  end

  def admin1
  end

  def admin2
  end

  def admin3
  end

  def staff
  end

  def student
  end
end
