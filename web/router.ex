defmodule PeepBlogBackend.Router do
  use PeepBlogBackend.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PeepBlogBackend do
    pipe_through :api

    get "/", PageController, :index
  end

  resources "/posts", PostController, except: [:new, :edit]

  # Other scopes may use custom stacks.
  # scope "/api", PeepBlogBackend do
  #   pipe_through :api
  # end
end
