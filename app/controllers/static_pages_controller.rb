class StaticPagesController < ApplicationController
  def home
    redirect_to projects_path if current_user
  end

  def become_a_partner
  end

  def about
  end

  def contact
  end

  def terms
  end

  def base_template
  end

  def confirm_code
  end
end
