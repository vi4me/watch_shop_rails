# women = Category.create(title: 'Пряники', bytitle: 'women', keywords: 'women', description: 'for women')
# electronic2 = Category.create(title: 'Пряники с вишней', bytitle: 'electronic2', keywords: 'electronic', description: 'electronic', parent: women)

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')