# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Brand.destroy_all
Type.destroy_all
Product.destroy_all
User.destroy_all
Review.destroy_all

PASSWORD = '123'

super_user = User.create(
    first_name: "Admin",
    last_name: "User", 
    email: "admin@user.com",
    password: PASSWORD,
    is_admin: true
)

5.times do 
    first_name = Faker::Name.first_name
    last_name = Faker::Name.last_name
    User.create(
        first_name:first_name,
        last_name: last_name,
        email: "#{first_name}@#{last_name}.com",
        password: PASSWORD
    )
end

users = User.all

brands = [
        {title: "Apple",
        types: [
            {title: "Laptop", products: [{name: "Macbook Air", image_url:'https://images.unsplash.com/photo-1606248897732-2c5ffe759c04?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80'},{name: 'MacBook Pro  13" (2021)', image_url:'https://images.unsplash.com/photo-1511385348-a52b4a160dc2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1807&q=80'},{name: 'MacBook Pro  14" (2021)', image_url:'https://images.unsplash.com/photo-1569770218135-bea267ed7e84?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1160&q=80'},{name: 'MacBook Pro  16" (2021)', image_url:'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1326&q=80'},{name: 'MacBook Pro  13" (2020)', image_url:'https://images.unsplash.com/photo-1514826786317-59744fe2a548?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'},{name: 'MacBook Pro  14" (2020)', image_url:'https://images.unsplash.com/photo-1496181133206-80ce9b88a853?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1742&q=80'},{name: 'MacBook Pro  16" (2020)', image_url:'https://images.unsplash.com/photo-1585076641399-5c06d1b3365f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'}]},
            {title: "Cell Phone", products: [{name: "iPhone 11", image_url: 'https://images.unsplash.com/photo-1591337676887-a217a6970a8a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8aXBob25lJTIwMTF8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60'},{name: "iPhone 11 Pro", image_url:'https://images.unsplash.com/photo-1577972788227-8ffdb234f5ea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGlwaG9uZSUyMDExJTIwcHJvfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60'},{name: "iPhone 11 Pro Max", image_url:'https://images.unsplash.com/photo-1581795669633-91ef7c9699a8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aXBob25lJTIwMTElMjBwcm8lMjBtYXh8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60'},{name: "iPhone SE", image_url:'https://images.unsplash.com/photo-1598094670018-abf669538033?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aXBob25lJTIwc2V8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60'},{name: "iPhone 12 mini", image_url:'https://images.unsplash.com/photo-1620722003244-15af93cf42b9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aXBob25lJTIwMTIlMjBtaW5pfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60'},{name: "iPhone 12 Pro", image_url:'https://images.unsplash.com/photo-1620555576588-a7dd6c04c55d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aXBob25lJTIwMTIlMjBwcm98ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60'},{name: "iPhone 12 Pro Max", image_url:'https://images.unsplash.com/photo-1611791485440-24e8239a0377?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'},{name: "iPhone 13 mini", image_url:'https://images.unsplash.com/photo-1634618774328-613d0f997911?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'},{name: "iPhone 13", image_url:'https://images.unsplash.com/photo-1632518192421-56aba73eae55?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'},{name: "iPhone 13 Pro", image_url:'https://images.unsplash.com/photo-1633053699034-459674171bec?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1548&q=80'},{name: "iPhone 13 Pro Max", image_url:'https://images.unsplash.com/photo-1634619122295-eb4febef7898?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'}]},
            {title: "Tablet", products: [{name: "iPad Pro (2021)", image_url:'https://images.unsplash.com/photo-1585770536735-27993a080586?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'},{name: "iPad Air (2021)", image_url:'https://images.unsplash.com/photo-1603972924044-1fa96d503676?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1932&q=80'},{name: "iPad Mini (2021)", image_url:'https://images.unsplash.com/photo-1471279136892-55af5dc6895f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1742&q=80'},{name: "iPad Pro (2020)", image_url:'https://images.unsplash.com/photo-1621715225783-b361297d0e8f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80'},{name: "iPad Air (2020)", image_url:'https://images.unsplash.com/photo-1611532736597-de2d4265fba3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'},{name: "iPad Mini (2020)", image_url:'https://images.unsplash.com/photo-1632633726852-7b95f3119cf0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'}]}
        ]
    },

    {title: "Samsung",
        types: [
            {title: "Laptop", products: [{name: "Samsung Chromebook 4", image_url:'https://images.unsplash.com/photo-1522202222206-b75023c48f4f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'},{name: "Samsung Galaxy Book Pro", image_url:'https://images.unsplash.com/photo-1484788984921-03950022c9ef?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHNhbXN1bmclMjBnYWxheHklMjAlMjBsYXB0b3B8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60'},{name: 'Samsung Galaxy Book S" (2021)', image_url:'https://images.unsplash.com/photo-1507208773393-40d9fc670acf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHNhbXN1bmclMjBnYWxheHklMjAlMjBsYXB0b3B8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60'},{name: 'Samsung Galaxy Book Go" (2021)', image_url:'https://images.unsplash.com/photo-1499914485622-a88fac536970?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHNhbXN1bmclMjBnYWxheHklMjAlMjBsYXB0b3B8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60'},{name: 'Samsung Galaxy Book Ion" (2021)', image_url:'https://media.istockphoto.com/photos/modern-laptop-isolated-on-space-background-3d-illustration-elements-picture-id1312486314?b=1&k=20&m=1312486314&s=170667a&w=0&h=pbpUPzTv-Fcnmv4fk2msMKe0QRjv-gQktXnon91urhM='}]},
            {title: "Cell Phone", products: [{name: "Samsung Galaxy S21", image_url:'https://images.unsplash.com/photo-1610945265064-0e34e5519bbf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2Ftc3VuZyUyMGdhbGF4eXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60'},{name: "Samsung Galaxy S21 Plus",image_url: 'https://images.unsplash.com/photo-1610945264803-c22b62d2a7b3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'},{name: "Samsung Galaxy S21 Ultra", image_url:'https://images.unsplash.com/photo-1609561954579-f5d38cece8c4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1742&q=80'},{name: "Samsung Galaxy S20", image_url:'https://images.unsplash.com/photo-1583574333311-3a86605c76b2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8c2Ftc3VuZyUyMGdhbGF4eSUyMHMyMHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60'},{name: "Samsung Galaxy S20 Plus", image_url:'https://images.unsplash.com/photo-1581508473167-1c80505e5e8b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1742&q=80'},{name: "Samsung Galaxy A52", image_url:'https://images.unsplash.com/photo-1618214394482-caa124b8ad2c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2Ftc3VuZyUyMGdhbGF4eSUyMGE1MnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60'},{name: "Samsung Galaxy Z Flip3", image_url:'https://images.unsplash.com/photo-1592813630413-1124aa567638?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80'},{name: "Samsung Galaxy S10", image_url:"https://images.unsplash.com/photo-1581003989336-2ae25a99c091?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80"},{name: "Samsung Galaxy Note 10", image_url:'https://images.unsplash.com/photo-1611407019488-0a354195b618?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'}]},
            {title: "Tablet", products: [{name: "Samsung Galaxy Tab S7", image_url:'https://images.unsplash.com/photo-1622533950960-2ed47209dab0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1809&q=80'},{name: "Samsung Galaxy Tab S7 Lite", image_url:'https://images.unsplash.com/photo-1615515057524-302a334449ce?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'},{name: "Samsung Galaxy Tab S6", image_url:'https://images.unsplash.com/photo-1522204553393-1f71c9d4296d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1652&q=80'},{name: "Samsung Galaxy Tab S6 Lite", image_url:'https://images.unsplash.com/photo-1628591459313-a64214c5bfac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=842&q=80'},{name: "Samsung Galaxy Tab A7", image_url:'https://images.unsplash.com/photo-1521159311222-fcd72db9bd8e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1740&q=80'},{name: "Samsung Galaxy Tab A7 Lite", image_url:'https://images.unsplash.com/photo-1585790050230-5dd28404ccb9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1932&q=80'}]}
        ]
    },

    {title: "LG Electronics",
        types: [
            {title: "Laptop", products: [{name: 'LG Gram 17" Laptop - Obsidian', image_url:'https://media.istockphoto.com/photos/laptop-computer-with-blue-pink-lighting-and-blank-screen-place-on-picture-id1292038829?b=1&k=20&m=1292038829&s=170667a&w=0&h=L8DhcSOFS3BZdCHN6ldjumqQBw0J2kk7mBagO5io5jM='},{name: "LG Gram 17” Ultra-Lightweight", image_url:'https://media.istockphoto.com/photos/blank-screen-laptop-on-the-table-with-blurred-living-room-background-picture-id1297540300?b=1&k=20&m=1297540300&s=170667a&w=0&h=dvd_3kfKezTRvnAVqnEAEy0hU8dPl6tvNoS-Ms-k54w='},{name: 'LG Gram 16" Laptop - Obsidian', image_url:'https://images.unsplash.com/photo-1541506618330-7c369fc759b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bGclMjBsYXB0b3B8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60'},{name: 'LG gram 16T90P-K.APB7U1 16" Touchscreen', image_url:'https://images.unsplash.com/photo-1593642634315-48f5414c3ad9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGxnJTIwbGFwdG9wJTIwdG91Y2hzY3JlZW58ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60'}]},
            {title: "Cell Phone", products: [{name: "LG G8X ThinQ ", image_url:'https://images.unsplash.com/photo-1524856076870-0d765c831d68?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bGclMjBwaG9uZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60'},{name: "LG G8 ThinQ ", image_url:'https://images.unsplash.com/photo-1517091362637-0b90051c1a44?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8bGclMjBwaG9uZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60'},{name: "LG Velvet 128GB", image_url:'https://images.unsplash.com/photo-1527578982322-bb818b9d40e6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8bGclMjBwaG9uZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60'},{name: "LG Velvet 5G", image_url:'https://images.unsplash.com/photo-1551619050-9272919f6672?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGxnJTIwcGhvbmV8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60'},{name: "LG K9", image_url:'https://images.unsplash.com/photo-1580993390368-78542f087c69?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGxnJTIwcGhvbmV8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60'},{name: "LG K20", image_url:'https://images.unsplash.com/photo-1548268567-4610dc7a5a16?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGxnJTIwcGhvbmVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60'},{name: "LG K31", image_url:'https://images.unsplash.com/photo-1528270018395-375b027411bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTJ8fGxnJTIwcGhvbmVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60'},{name: "LG V50 ThinQ", image_url:'https://images.unsplash.com/photo-1561525155-40a650192479?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTR8fGxnJTIwcGhvbmVzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60'}]},
            {title: "Tablet", products: [{name: "LG G Pad", image_url:'https://media.istockphoto.com/photos/man-working-on-a-tablet-on-a-wooden-table-in-a-garden-with-graphs-a-picture-id1341316040?b=1&k=20&m=1341316040&s=170667a&w=0&h=Yj9EZ3uU9t7JI6uCIdtXujY9BEHz9jeNAocQcBRKD2E='},{name: "LG Gpad IV", image_url:'https://images.unsplash.com/photo-1611532736597-de2d4265fba3?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bGclMjBnJTIwcGFkJTIwdGFibGV0fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60'},{name: "LG G Pad Plus", image_url:'https://media.istockphoto.com/photos/overhead-shot-of-mock-up-digital-tablet-with-empty-screen-on-blank-picture-id1298092934?b=1&k=20&m=1298092934&s=170667a&w=0&h=dsOrbmt_u9FuBcoqm3ao8dR5hr5i1ZlS-IJSPF4zPfY='},{name: "LG G Pad II", image_url:'https://media.istockphoto.com/photos/anonymous-businesswoman-analyzing-statistical-business-reports-on-her-picture-id1266858252?b=1&k=20&m=1266858252&s=170667a&w=0&h=gL6JdK1CUBuyxe_J79-TW8dk5oBHdZLPRb-JFuxxviY='},{name: "LG G Pad III", image_url:'https://images.unsplash.com/photo-1557825835-70d97c4aa567?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8TEclMjBpcGFkfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60'}]}
        ]
    }
]

brands.each do |brand|
    b = Brand.create(
        title: brand[:title]
    )
        brand[:types].each do |type| 
        t = Type.create(title: type[:title], brand:b)

        type[:products].each do |product|
        p = Product.create(
            name: product[:name],
            image_url: product[:image_url],
            description: Faker::Lorem.paragraph_by_chars*10,
            price: rand(1000..5000),
            type:t,
            user: users.sample
        )
            rand(1..3).times do
                Review.create(body:Faker::Lorem.sentence, 
                    rating: rand(1..100), 
                    product:p, 
                    user: users.sample
                )
            end
            length = 5
            chars = '@'
            rand(chars.length)
        end
    end  
end

brands = Brand.all
types = Type.all
products = Product.all
reviews = Review.all

puts('Brands: ',brands.count)
puts('Types: ',types.count)
puts('Products: ',products.count)
puts('Reviews: ',reviews.count)
puts('Users: ',users.count)
puts("admin: #{super_user.email} and password: #{PASSWORD}")