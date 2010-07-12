require 'getoptlong'

module StaticMatic::ServerMixin
  def preview
    $bool = false
    $dir_name = ARGV[1]
    opts = GetoptLong.new([ '--auto-build', '-a', GetoptLong::NO_ARGUMENT ])
    
    opt = opts.get()
    if opt[0] == '--auto-build'
        $bool = true
    end
    
    puts "StaticMatic Preview Server Starting..."
    StaticMatic::Server.start(self)   
  end
end
