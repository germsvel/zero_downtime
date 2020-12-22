defmodule ZeroDowntimeWeb.PageController do
  use ZeroDowntimeWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
