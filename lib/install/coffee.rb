require "webpacker/configuration"

say "Copying the example entry file to #{Webpacker.config.source_entry_path}"
copy_file "#{__dir__}/examples/coffee/hello_coffee.coffee",
  "#{Webpacker.config.source_entry_path}/hello_coffee.coffee"

say "Installing all Coffeescript dependencies"
run "yarn add coffeescript@1.12.7 coffee-loader"

say "Webpacker now supports Coffeescript 🎉", :green
