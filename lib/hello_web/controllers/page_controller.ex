defmodule HelloWeb.PageController do
  use HelloWeb, :controller

  def index(conn, _params) do
    # original render function
    # render(conn, :index)


    #----------------------------------------------
    # :index will default the layout to index.html.eex but if
    # will route to other formats.
    # The layout must be defined.
    # render(conn, "index.html")

    #------------------------------------------------
    conn
    |> put_layout("admin.html")
    # |> put_flash(:info, "Flash info")
    # |> put_flash(:error, "Flash error")
    |> render("index.html")
  end
end
