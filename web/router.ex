defmodule PeepBlogBackend.Router do
  use PeepBlogBackend.Web, :router

  pipeline :api do
    plug :accepts, ["json-api"]
    plug Corsica, origins: "*", allow_headers: ["accept", "content-type"]
  end

  scope "/", PeepBlogBackend do
    pipe_through :api

    resources "/posts", PostController, except: [:new, :edit]
    options "/posts*anything", PostController, :options
  end
end
