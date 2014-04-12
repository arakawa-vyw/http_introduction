class HttpStatusesController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "pass", only: [:client_error_401_unauthorized]

  add_breadcrumb "home", :root_path
  add_breadcrumb "HTTPステータス", :http_statuses_path

  def index
  end

  def success_200
    add_breadcrumb "200:OK"
    render action: :index
  end

  def redirection_301
    redirect_to action: index, status: :moved_permanently
  end

  def redirection_302
    redirect_to action: index
  end

  def redirection_304_etag
    add_breadcrumb "304:Not Modified"
    @non_request_info = true
    render action: :index
  end

  def redirection_304_last_modified
    add_breadcrumb "304:Not Modified"
    @non_request_info = true
    response.headers["Last-Modified"] = Date.today.beginning_of_year.httpdate
    render action: :index
  end

  def client_error_401_unauthorized
    add_breadcrumb "404:Unauthorized"
    render action: :index
  end

  def client_error_403_forbidden
    render status: :forbidden, text: "Forbidden"
  end

  def server_error_500_internal_server_error
    raise "raise error!"
  end

  def server_error_503_service_unavailable
    render status: :service_unavailable, text: "現在メンテナンス中です。。。"
  end
end
