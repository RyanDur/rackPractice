# config.ru
run Proc.new {|env| [200, {"content-type" => "text/html"}, ["Hello World, From a config!"]]}