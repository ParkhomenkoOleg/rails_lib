require 'csv'

task csv_thread: [:environment] do
  @table = []
  @table = CSV.parse(File.read("libraries_7.csv"), headers:true)

  FILE_LINES_COUNT = @table.size

  def setup(thread_count)
    puts "----- count of threads = #{thread_count}"
    threads = []
    lines_per_thread = FILE_LINES_COUNT / thread_count
    puts "----- lines per thread = #{lines_per_thread}"

    @table.to_a.each_slice(lines_per_thread) do | slice |
      threads << Thread.new do
      end
    end

    threads.each(&:join)
  end

  setup(10)
end