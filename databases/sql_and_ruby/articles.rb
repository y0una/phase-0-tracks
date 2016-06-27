# Articles Report takes in the articles that you're reading daily from a CSV file. It generates a raw count and percentage breakdown of the article categories you've read so far. Additionally, if your list of articles read doesn't include a category from World, Health, Science, Tech, Business, Politics, Design, or Arts it will let you know.

# require gems
require 'sqlite3'
require 'csv'

db = SQLite3::Database.new("articles.db")

def create_article(db, date, category, title, source, author, url)
  db.execute("INSERT INTO articles (date, category, title, source, author, url)
VALUES (?, ?, ?, ?, ?, ?)", [date, category, title, source, author, url])
end

# prevents count from adding onto the count each time we run
db.execute("DELETE FROM articles")

# read data from CSV file
data = CSV.read('article_data.csv')

CSV.foreach('article_data.csv') do |row|
  create_article(db, row[0], row[1], row[2], row[3], row[4], row[5])
end

category_array = []
category_array = category_array << db.execute("SELECT category, count() FROM articles group by category;")

# sum up totals
total_articles = []
total_articles = total_articles << db.execute("SELECT count() FROM articles;")
article_count = total_articles[0][0][0] #remove count from nested arrays

# generate a stats of articles read count and percentage
# count of articles in one category / total_count"
puts "You've read articles in these categories so far: "
category_array[0].each do |y|
  puts y
  puts (y[1].to_f/article_count.to_f*100).to_i.to_s + "%"
  puts "---"
end

all_categories = ["World", "Health", "Science", "Tech", "Business", "Politics", "Design", "Arts"]

categories_read = []
category_array[0].each do |x|
  categories_read << x[0]
end

puts "Check out what's going on in: "
all_categories.each do |x|
  if !categories_read.include? x
    puts x
  end
end