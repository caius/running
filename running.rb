#!/usr/bin/env macruby

@app_name = ARGV.first

unless @app_name
  $stderr.puts "Error: you need to specify a bundle identifier"
  exit(2)
end

framework "Cocoa"

apps = NSRunningApplication.runningApplicationsWithBundleIdentifier @app_name

if apps.empty?
  $stderr.puts "#{@app_name} not running"
  exit 1
else
  $stderr.puts "#{@app_name} running"
  exit 0
end
