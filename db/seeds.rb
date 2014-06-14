# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create an user
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') rescue nil

# Recreate article table
Article.delete_all
1.upto(3) do |i|
# Create a couple of articles
  Article.create!(translations_attributes: [
      {locale: :en, title: "Engilsh ##{i} title", body: "English ##{i} body"},
      {locale: :it, title: "Italian ##{i} title", body: "Italian ##{i} body"},
      {locale: :de, title: "German ##{i} title", body: "German ##{i} body"},
      {locale: :hu, title: "Hungarian ##{i} title", body: "Hungarian ##{i} body"},
      {locale: :'pt-PT', title: "Portuguese ##{i} title", body: "Portuguese ##{i} body"},
      {locale: :'pt-BR', title: "Brazilian ##{i} title", body: "Brazilian ##{i} body"},
  ])
end

# Article with a couple of empty fields
Article.create!(translations_attributes: [
    {locale: :en, title: 'With empty title', body: 'With empty body'},
    {locale: :it},
])
