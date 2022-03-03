return unless Rails.env == "development"

system 'clear'

puts 'Destroy all records'
puts '*' * 80

Article.destroy_all

puts 'Create new records'
puts '*' * 80

MAX_ARTCTICLE = 7
MAX_IMAGES    = 8

print '.'

MAX_ARTCTICLE.times do |index|
  article = Article.new(title: Faker::Name.unique.name)
  count = rand(1..MAX_IMAGES)
  array = [*1..MAX_IMAGES].sample(count).sort
  array.each do |index|
    article.images.attach(io: File.open(Rails.root.join("test/fixtures/files/#{index}.jpg")), filename: "#{index}.jpg")
    article.save!
    print '.'
  end
  print '.'
end

puts ' '
puts ' '
puts "That's all folks!"
puts '*' * 80
p "Created #{Article.count} #{'article'.pluralize(Article.count)}"
