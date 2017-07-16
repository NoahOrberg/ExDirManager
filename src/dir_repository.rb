class DirRepository
    attr_reader :dir_name, :header, :max, :digit

    def initialize(dir_name, header, max, digit)
        @dir_name = dir_name
        @header = header
        @max = max
        @digit = digit
    end

    def create_directories
        (1..@max).to_a.map{|i|
            sprintf("#{@header}%0#{@digit}d", i)
        }
    end

    def make
        Dir.mkdir(@dir_name)
        self.create_directories.map{|i| Dir.mkdir("#{dir_name}/#{i}")}
    end
end

DirRepository.new("Prog1", "Ex", 12, 2).make
