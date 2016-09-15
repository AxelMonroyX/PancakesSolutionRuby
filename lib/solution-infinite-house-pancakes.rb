num_cases = gets.to_i

for i in 0..num_cases - 1
  num_plates = gets.to_i
  pancakes = Array.new(num_plates)
  pancakes = gets.split(' ').map(&:to_i)

  max_p = (pancakes.sort_by {|k,v| v}.reverse)[0].to_i
  max_p += 1
  puts "MAX: "+    max_p.to_s
  counter = Array.new(max_p)

  counter = pancakes.map { 1 }

  puts '--------------------------------------'
  moves = max_p;
  puts "MOVESS"+moves.to_s
  min_minutes = 10_000
  splits = 0
  counter.each.with_index(1) do |_item_k, k|
    # splits = 0
    counter.each.with_index(1) do |_item_l, l|

      puts 'Splits: ' + splits.to_s
      splits=  splits + (((l - 1) / k) * _item_l.to_i) 
      puts 'Splits: ' + splits.to_s
    end
    puts "=========================================="
    #  puts "KKKK" +k.to_s
    #  puts "spplit: " + splits.to_s
    if splits + k.to_i <= moves.to_i
      moves = splits + k
    end


end

printf "Case #%d: %d\n", (i + 1), moves+1
end
