def generate_ring_combinations
    combinations = []
    total_combinations = 0
  
    [true, false].each do |agate|
      [true, false].each do |diamond1|
        [true, false].each do |diamond2|
          [true, false].each do |citrine|
            # Apply constraints
            if agate || diamond1 || diamond2 || citrine
              if (diamond1 || diamond2) && diamond1 != diamond2
                combinations << [agate, diamond1, diamond2, citrine]
                total_combinations += 1
              end
            end
          end
        end
      end
    end
  
    return combinations, total_combinations
  end
  
  # Generate ring combinations
  combinations, total_combinations = generate_ring_combinations
  
  # Print combinations
  combinations.each_with_index do |combination, i|
    puts "Combination #{i + 1}: #{combination[0] ? 'Agate ' : ''}#{combination[1] ? 'Diamond ' : ''}#{combination[2] ? 'Diamond ' : ''}#{combination[3] ? 'Citrine' : ''}"
  end
  
  puts "\nTotal combinations: #{total_combinations}"
  