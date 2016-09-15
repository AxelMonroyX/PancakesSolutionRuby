require 'pry'

num_cases = gets.to_i

for i in 0..num_cases - 1
  num_plates = gets.to_i
  pancakes = Array.new(num_plates)
  pancakes = gets.split(' ').map(&:to_i)

  max_p = pancakes.max
  # binding.pry
  counter = Array.new(max_p)
  max_p += 1
  puts "MAX: "+    max_p.to_s


  for c in 0..counter.length-1
    counter[c]=0
  end
# binding.pry
  for j in 0..pancakes.length-1

    # binding.pry
    counter[(pancakes[j]-1)] += 1
  end

  # ----------Checked
  binding.pry




  puts '--------------------------------------'
  moves = pancakes.max.to_i;

  # min_minutes = 10_000
  splits = 0
for k in 0..counter.length-1
  pk = k +1
    for l in 1..counter.length
      splits =  splits + (((l - 1) / pk) * counter[l].to_i)

    end

    if splits + pk.to_i <= moves.to_i
      moves = splits + pk
    end

    puts "Splits:   "+pk.to_s+ "   "+counter[k].to_s

  end

  printf "Case #%d: %d\n", (i + 1), moves
end
