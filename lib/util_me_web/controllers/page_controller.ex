defmodule UtilMeWeb.PageController do
  use UtilMeWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
