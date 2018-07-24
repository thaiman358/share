# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# coding: utf-8
Restaurant.create(name: 'PwC亭', category: '1', overview: '魚がおいしい', tel: '080-1234-5678',hour: '17:00~22:00', price: '15,000円', address: '日本')
Restaurant.create(name: 'PwC亭', category: '2', overview: '肉がおいしい', tel: '080-1234-5679',hour: '17:00~23:00', price: '20,000円', address: '日本')
Article.create(industry: '1', arttype: '2', title: 'AI', content: 'AIサイコー')
User.create(name: 'a', email: 'a@a.a', password: 'aaaaaa', password_confirmation: 'aaaaaa', title: '2')
User.create(name: 'b', email: 'b@b.b', password: 'bbbbbb', password_confirmation: 'bbbbbb', title: '2')