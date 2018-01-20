defmodule ManjoServerWeb.PageController do
  use ManjoServerWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
