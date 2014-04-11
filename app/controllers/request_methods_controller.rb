class RequestMethodsController < ApplicationController
  add_breadcrumb "home", :root_path
  add_breadcrumb "リクエストメソッド", :request_methods_path

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
end
