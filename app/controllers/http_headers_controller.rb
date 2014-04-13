class HttpHeadersController < ApplicationController
  def index
  end

  def accept_language
    add_breadcrumb "Accept-Language"
    render action: :index
  end

  def cache_control_none
    add_breadcrumb "Cache-Control: (none)"
    @non_request_info = true
    render action: :index
  end

  def cache_control_max_age
    add_breadcrumb "Cache-Control: max-age"
    response.headers["Cache-Control"] = "max-age=20"
    @non_request_info = true
    render action: :index
  end

  def cache_control_no_cache
    add_breadcrumb "Cache-Control: no-cache"
    response.headers["Cache-Control"] = "no-cache"
    @non_request_info = true
    render action: :index
  end

  private
  def set_breadcrumb
    add_breadcrumb "Home", :root_path
    add_breadcrumb I18n.t("http_headers"), :http_headers_path
  end
end
