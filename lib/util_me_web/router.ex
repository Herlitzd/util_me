defmodule UtilMeWeb.Router do
  use UtilMeWeb, :router

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

  scope "/", UtilMeWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  scope "/api", UtilMeWeb do
    pipe_through :api
    post "/session/attempt", SessionController, :attempt
    post "/session", SessionController, :login
  end
end
