require "rack"

infinity = Proc.new {|env| [200, {"content-type" => "text/html"}, [env.inspect]]}
builder = Rack::Builder.new do
  use Rack::CommonLogger

  map "/" do
    run infinity
  end

  map "/version" do
    run Proc.new {|env| [200, {"content-type" => "text/html"}, ["infinity 0.1"]]}
  end
end

Rack::Handler::Thin.run builder, :Port => 9292