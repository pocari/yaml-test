require 'pp'
require 'yaml'

puts File.read("./test.yml")
pp YAML.load(File.read('./test.yml'))
