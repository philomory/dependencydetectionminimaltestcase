# -*- coding: utf-8 -*-
$:.unshift("/Library/RubyMotion/lib")
require 'motion/project'
require 'pp'

Motion::Project::App.setup do |app|
  # Use `rake config' to see complete project settings.
  app.name = 'DependencyDetectionMinimalTestCase'
  app.device_family = :ipad
  app.interface_orientations = [:landscape_left, :landscape_right]
  app.resources_dirs.unshift "../data"
  app.files.unshift *Dir.glob("../src/**/*.rb")
  app.info_plist['UIStatusBarHidden'] = true
end


desc "Show file dependencies"
task :deps do
  deps = Motion::Project::Dependency.new(Motion::Project::App.config.files).run
  Motion::Project::App.config.dependencies = deps.merge(Motion::Project::App.config.dependencies)
  pp Motion::Project::App.config.dependencies
  puts

  #puts
  #puts
  #Motion::Project::App.config.files.each do |file|
  #  puts "file: #{file}"
  #  puts "go_list: #{Motion::Project::App.config.file_dependencies(file)}"
  #  puts 
  #end
  
  
  puts Motion::Project::App.config.files.map {|file| Motion::Project::App.config.file_dependencies(file) }.flatten
  puts
  puts Motion::Project::App.config.ordered_build_files
end
