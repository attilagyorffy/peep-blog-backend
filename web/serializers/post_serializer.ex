defmodule PeepBlogBackend.PostSerializer do
  use JaSerializer

  serialize "post" do
    attributes [:title, :body]
  end
end
