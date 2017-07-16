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
        self.create_directories.map{|i| Dir.mkdir(i)}
    end
end
