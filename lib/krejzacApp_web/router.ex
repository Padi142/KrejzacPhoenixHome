defmodule krejzacappWeb.Router do
  use krejzacappWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, html: {krejzacappWeb.Layouts, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", krejzacappWeb do
    pipe_through :browser

    # get "/", PageController, :home
    live "/", Cursors
  end

  # Other scopes may use custom stacks.
  # scope "/api", krejzacappWeb do
  #   pipe_through :api
  # end
end
