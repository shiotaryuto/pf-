# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Admin.create!(
   email: 'admin@test',
   password: 'test01'
)

User.create!(
   email: 'test1@test.com',
   password: 'test01',
   first_name: '山田',
   last_name: '太郎',
   first_name_kana: 'ヤマダ',
   last_name_kana: 'タロウ',
   nickname: '123456',
)