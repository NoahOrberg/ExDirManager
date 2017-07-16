class DirRepository
    attr_reader :dir_name, :header

    def initialize(dir_name, header)
        @dir_name = dir_name
        @header = header
    end
end
