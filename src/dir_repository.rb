class DirRepository
    attr_reader :cmd

    def initialize(cmd)
        @cmd = cmd
    end

    def create_directories
        (1..@cmd.max).to_a.map{|i|
            sprintf("#{@cmd.header}%0#{@cmd.digit}d", i)
        }
    end

    def make
        Dir.mkdir(@cmd.dir_name)
        self.create_directories.map{|i| Dir.mkdir("#{@cmd.dir_name}/#{i}")}
    end
end
