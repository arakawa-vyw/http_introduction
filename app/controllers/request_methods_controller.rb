class RequestMethodsController < ApplicationController
  def index
  end

  def get
    render action: :index
  end

  def post
    render action: :index
  end

  def put
    render action: :index
  end

  def delete
    render action: :index
  end

  private
  def set_breadcrumb
    add_breadcrumb "Home", :root_path
    add_breadcrumb I18n.t("request_methods"), :request_methods_path
  end
end
