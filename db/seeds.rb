# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

a = Article.new(title: 'Letterpress Cheater Algorithm', body: 'A few months ago when Letterpress was hot, I thought about an efficient algorithm for a cheater application. A trivial solution in Ruby is quite slow for this problem, which motivated me to check out alternative approaches. Abbreviated, the problem is the following: Given 25 random letters (letters), find every string in an array of strings (words) that consists of only those letters. I’ll start by walking through a naive solution before presenting a data structure to solve this problem efficiently.')

a.save

b = Article.new(title: 'The 30 most productive days of my life', body: 'It’s scary as it feels like it’s whatever you come down to. When you give everything you have, you find yourself in a paradoxical state of weakness. What if the result of your absolute max is disappointing? After my home-spun philosophical observations – I decided to give the challenge a fair go. For the challenge, I jotted down the things I wanted to achieve:')

b.save

a.comments.new(author_name: 'Chirag Aggarwal', body: 'wow! impressive!').save
b.comments.new(author_name: 'Chirag Aggarwal', body: 'I am for sure gonna follow that!').save
