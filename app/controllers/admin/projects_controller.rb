require 'inch_ci/controller'

class Admin::ProjectsController < ApplicationController
  include InchCI::Controller

  layout 'admin'

  def create
    action = Action::Project::Create.new(params, :admin)
    if action.success?
      redirect_to project_url(action.project, :pending_build => action.build_id)
    else
      expose action
      flash[:error] = t("projects.create.url_not_found")
      render :template => "page/welcome"
    end
  end

  def index
    @projects = filter_collection(Project).order('created_at DESC').limit(50)
    @languages = %w(Elixir JavaScript Ruby)
  end

  private

  def filter_collection(arel)
    if params[:language]
      arel = arel.where('LOWER(language) = ?', params[:language].to_s.downcase)
    end
    if service = params[:service]
      like = "#{service}:"
      if user_name = params[:user]
        like << "#{user_name}/"
      end
      arel = arel.where('uid LIKE ?', like+'%')
    end
    arel
  end
end
