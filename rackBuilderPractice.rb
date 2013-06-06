require "rack"

infinity = Proc.new {|env| [200, {"content-type" => "text/html"}, env.inspect]}
builder = Rack::Builder.new do
  run infinity
end

Rack::Handler::Thin.run builder, :Port => 9292