require 'pry'

num_cases = gets.to_i

for i in 0..num_cases - 1
  num_plates = gets.to_i
  pancakes = Array.new(num_plates)
  pancakes = gets.split(' ').map(&:to_i)

  max_p = (pancakes.sort_by {|k,v| v}.reverse)[0].to_i
  max_p += 1
  puts "MAX: "+    max_p.to_s
  counter = Array.new(10000)


  for j in 0..pancakes.length-1

    if counter[pancakes[j]] == nil
      counter[pancakes[j]] = 0
    end
    # binding.pry
counter[(pancakes[j])] = counter[(pancakes[j])] +1
  end


  puts '--------------------------------------'
  moves = (pancakes.sort_by {|k,v| v}.reverse)[0].to_i;
  puts "MOVESS"+moves.to_s
  # min_minutes = 10_000
  splits = 0
  counter.each.with_index(1) do |_item_k, k|
    # splits = 0
    for l in 1..counter.length
      splits =  splits + (((l - 1) / k) * counter[l].to_i)
      # binding.pry
    end

    if splits + k.to_i <= moves.to_i
      moves = splits + k
    end


end

printf "Case #%d: %d\n", (i + 1), moves
end
