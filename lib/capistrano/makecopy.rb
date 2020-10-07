require "capistrano/scm/plugin"

class Capistrano::SCM::MakeCopy < Capistrano::SCM::Plugin
  def define_tasks
    eval_rakefile File.expand_path("../tasks/copy.rake", __FILE__)
  end
  def register_hooks
    after "deploy:new_release_path", "copy:create_release"
    after 'deploy:finished', 'copy:clean'
  end
end