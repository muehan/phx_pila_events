defmodule PilaEventsWeb.Router do
  use PilaEventsWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PilaEventsWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/events", EventController, :list
    get "/events/:id", EventController, :show
  end

  # scope "/events", PilaEventsWeb do
      
  # end

  # Other scopes may use custom stacks.
  # scope "/api", PilaEventsWeb do
  #   pipe_through :api
  # end
end
