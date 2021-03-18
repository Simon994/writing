# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a1 = Article.create(title: 'Smart stretch expands hip implant performance', link: 'https://www.chemistryworld.com/news/smart-stretch-expands-hip-implant-performance/3008154.article',
                    summary: 'On a material that offers to lengthen the lifetime of hip implants...')
a2 = Article.create(title: 'Oil collector drums up hope for oceans', link: 'https://www.chemistryworld.com/news/oil-collector-drums-up-hope-for-oceans/3007800.article',
                    summary: 'A two-faced barrel attracts then traps oil spills at speed...')

c1 = Category.create(name: 'Journalism')
c2 = Category.create(name: 'Materials science')
c3 = Category.create(name: 'Environment')

c1.articles << [a1, a2]
c2.articles << [a1]
c3.articles << [a2]
