#!/usr/bin/env ruby
require 'curb'
require 'pry'
require 'rainbow'
require 'optparse'
require_relative 'jns_say/version'
require_relative 'jns_say/say'

options = {
  user: "Anonymous"
}
OptionParser.new do |opts|
  opts.banner = "Usage: jns_say.rb -u lis2 -m blablabla"

  opts.on("-u", "--user [USER]", "User name - top part of your output") do |u|
    options[:user] = u
  end

  opts.on("-m", "--message [MESSAGE]", "Message - bottom part of your output") do |m|
    options[:message] = m
  end
  if STDOUT.tty?
    options[:format] = 'pretty'
  else
    options[:format] = 'csv'
  end
end.parse!

JnsSay::Say.new(options[:user], options[:message], options[:format]).display
