#!/usr/bin/env ruby
command = ARGV.first
raise 'enter a command' unless command
Dir['**/.git'].map do |git_path|
  git_path.gsub(/\/.git/,'')
end.map do |repo_path|
  File.absolute_path(repo_path)
end.map do |absolute_repo_path|
  puts absolute_repo_path
  git_command = "git --git-dir=#{absolute_repo_path}/.git --work-tree=#{absolute_repo_path} #{command}"
  system(git_command)
end