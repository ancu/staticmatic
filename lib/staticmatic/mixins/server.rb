module StaticMatic::ServerMixin
  def preview
    directory = ARGV[1]
    optional_build = ARGV[2]
    staticmatic = StaticMatic::Base.new(directory)
    
    #building if third argument is -b
    if optional_build == '-b'
      staticmatic.run('build')
    end
    
    puts "StaticMatic Preview Server Starting..."
    StaticMatic::Server.start(self)   
  end
end
