num_cases = gets.to_i

for i in 0..num_cases-1
    num_plates = gets.to_i
    pancakes = Array.new(num_plates)
    pancakes = gets.split(' ').map(&:to_i)
    puts pancakes.inspect
    printf 'pancakes taken'

    confirm = Array.new(10_000)

    confirm = pancakes.map { 1 }
    puts confirm.inspect
    puts '--------------------------------------'

    min_minutes = 10_000

    confirm.each.with_index(1) do |item_k, k|
        splits = 0
        confirm.each_with_index do |item_l, l|

            splits += ((l - 1) / k) * confirm[l].to_i;
            puts "Splits: " +splits.to_s
        end

        min_minutes = splits + k if (splits + k < min_minutes)
    end

    printf "Case #%d: %d\n", (i + 1), min_minutes
end
