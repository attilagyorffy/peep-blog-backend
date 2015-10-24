defmodule PeepBlogBackend.Router do
  use PeepBlogBackend.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", PeepBlogBackend do
    pipe_through :api

    resources "/posts", PostController, except: [:new, :edit]
  end
end
