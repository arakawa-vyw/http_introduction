class HttpHeadersController < ApplicationController
  def index
  end

  def accept_language
    add_breadcrumb "Accept-Language"
    render action: :index
  end

  private
  def set_breadcrumb
    add_breadcrumb "Home", :root_path
    add_breadcrumb I18n.t("http_headers"), :http_headers_path
  end
end
