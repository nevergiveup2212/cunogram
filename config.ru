# This file is used by Rack-based servers to start the application.

require_relative 'config/environment'
	# config.ru
	run Proc.new { |env| ['200', {'Content-Type' => 'text/html'}, ['Welcome to ruby rack!']] }
run Rails.application
