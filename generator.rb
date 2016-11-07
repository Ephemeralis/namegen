adjectives = File.readlines("adjectives.txt").map(&:strip)
emotions = File.readlines("emotions.txt").map(&:strip)

animals = %w(birds lizards mammals reptiles)
  .flat_map { |name| File.readlines("#{name}.txt") }
  .map(&:strip)
  .map(&:downcase)

50.times do
  emotion = emotions.sample.capitalize
  adjective = adjectives.sample.capitalize
  animal = animals.sample.capitalize

  puts "#{emotion} #{animal}\n"
end
