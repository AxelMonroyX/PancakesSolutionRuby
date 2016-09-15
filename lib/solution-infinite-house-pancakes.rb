num_cases = gets.to_i

for i in 0..num_cases - 1
    num_plates = gets.to_i
    pancakes = Array.new(num_plates)
    pancakes = gets.split(' ').map(&:to_i)

    max_p = pancakes.max
    counter = Array.new(max_p)

    counter = pancakes.map { 1 }

    puts '--------------------------------------'
moves = max_p;
    min_minutes = 10_000

    counter.each.with_index(1) do |_item_k, k|
        splits = 0
        counter.each.with_index(1) do |_item_l, l|
            splits += ((l - 1) / k) * _item_l;
            puts 'Splits: ' + splits.to_s
        end

        moves = splits + k if splits + k <= moves
    end

    printf "Case #%d: %d\n", (i + 1), moves
end
