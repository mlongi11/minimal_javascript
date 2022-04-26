def benchmark(label, &code_to_be_benchmarked)
  puts "=" * 50
  puts "Starting benchmark for #{label}"
  puts "-" * 50

  starting_time = Time.now

  code_to_be_benchmarked.call(starting_time)

  ending_time = Time.now

  elapsed_seconds = ending_time - starting_time

  puts "=" * 50
  puts "#{label} took #{elapsed_seconds} seconds"
  puts "-" * 50


end

benchmark("zebra") do |started_at|
    puts "howdy #{started_at}"
end
