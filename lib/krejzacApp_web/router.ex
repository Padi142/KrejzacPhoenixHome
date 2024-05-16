defmodule KrejzacAppWeb.Router do
  use KrejzacAppWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {KrejzacAppWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", KrejzacAppWeb do
    pipe_through :browser

    # get "/", PageController, :home
    live "/", Cursors
  end

  # Other scopes may use custom stacks.
  # scope "/api", KrejzacAppWeb do
  #   pipe_through :api
  # end
end
