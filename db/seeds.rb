# encoding: utf-8
# Autogenerated by the db:seed:dump task
# Do not hesitate to tweak this to your needs

  customer1 = Customer.create( 
    :username => "Franklin", 
    :email => "demoXX+franklin@jumpstartlab.com", 
    :password => "password", 
    :password_confirmation => "password", 
    :admin => false, 
    :first_name => "Franklin ", 
    :last_name => "Webber" )

  customer2 = Customer.create( 
    :username => "admin", 
    :email => "admin@jumpstartlab.com", 
    :password => "password", 
    :password_confirmation => "password", 
    :admin => true, 
    :first_name => "admin", 
    :last_name => "admin" )

  customer3 = Customer.create( 
    :username => "j3", 
    :email => "demoXX+jeff@jumpstartlab.com", 
    :password => "password", 
    :password_confirmation => "password", 
    :admin => false, 
    :first_name => "Jeff", 
    :last_name => "Casimir")

  customer4 = Customer.create( 
    :username => "SkrilleX", 
    :email => "demoXX+steve@jumpstartlab.com", 
    :password => "password", 
    :password_confirmation => "password", 
    :admin => true, 
    :first_name => "Steve", 
    :last_name => "Klabnik" )



store_names = [["Slick Bike Shop", "slick-bike-shop"], ["Cool Runnings", "cool-runnings"], ["Cool Sunglasses", "cool-sunglasses"], ["Hotty Threads", "hot-threads"], ["Obigear", "obigear"], ["ObiWear", "obiwear"], ["Panda Pants", "panda-pants"], ["Blairs HotDog Store", "blairs-hotdog-store"], ["Gather", "gather"], ["ToysRUs", "toysrus"]]
slick_bike_shop = nil
store_names.each do |name,path|
  store = Store.create!(name: name, path: path, description: Faker::Lorem.paragraph(1), status:"active")
    store.path == "slick-bike-shop"
    slick_bike_shop = store
    Store.include_admin(customer1.id, store.id)
  
  print "\ncreating #{store.name}..."
  cats = %w(sunglasses glasses hats ice-cream backpacks coffee friends cake chairs whiteboards)

  100.times do |i|
    Product.create!(store_id: store.id, name: Faker::Name.name, description: Faker::Lorem.paragraph(3), price: "#{(1..500).to_a.sample}.0".to_f, quantity: "#{(1..500).to_a.sample}".to_i, featured: false, active: true, categories_list:cats.sample)
    print "..."
  end
end

Order.create([
  { :customer_id => 3, :status => "returned", :total => 1299.0, :created_at => "2013-04-04 04:55:41", :updated_at => "2013-04-04 05:06:35", :store_id => 1 },
  { :customer_id => 3, :status => "returned", :total => 1549.0, :created_at => "2013-04-04 04:59:24", :updated_at => "2013-04-04 05:07:11", :store_id => 1  },
  { :customer_id => 3, :status => "processed", :total => 3594.0, :created_at => "2013-04-04 04:59:52", :updated_at => "2013-04-04 05:00:18", :store_id => 1  },
  { :customer_id => 3, :status => "shipped", :total => 100.0, :created_at => "2013-04-04 05:00:23", :updated_at => "2013-04-04 05:06:24", :store_id => 1  },
  { :customer_id => 2, :status => "canceled", :total => 2598.0, :created_at => "2013-04-04 05:01:25", :updated_at => "2013-04-04 05:07:22", :store_id => 1  },
  { :customer_id => 2, :status => "canceled", :total => 2598.0, :created_at => "2013-04-04 05:01:52", :updated_at => "2013-04-04 05:07:27", :store_id => 1 },
  { :customer_id => 2, :status => "processed", :total => 800.0, :created_at => "2013-04-04 05:02:22", :updated_at => "2013-04-04 05:02:33", :store_id => 1 },
  { :customer_id => 2, :status => "shipped", :total => 5697.0, :created_at => "2013-04-04 05:02:54", :updated_at => "2013-04-04 05:06:29", :store_id => 1 },
  { :customer_id => 2, :status => "pending", :total => 125.0, :created_at => "2013-04-04 05:03:04", :updated_at => "2013-04-04 05:03:04", :store_id => 1 },
  { :customer_id => 1, :status => "pending", :total => 45.0, :created_at => "2013-04-04 05:03:35", :updated_at => "2013-04-04 05:03:35", :store_id => 1 },
  { :customer_id => 1, :status => "paid", :total => 45.0, :created_at => "2013-04-04 05:04:04", :updated_at => "2013-04-04 05:07:01", :store_id => 1 },
  { :customer_id => 1, :status => "paid", :total => 75.0, :created_at => "2013-04-04 05:04:29", :updated_at => "2013-04-04 05:06:42", :store_id => 1 },
  { :customer_id => 3, :status => "paid", :total => 449.0, :created_at => "2013-04-04 05:05:48", :updated_at => "2013-04-04 05:06:50", :store_id => 1 },
  { :customer_id => 3, :status => "returned", :total => 1299.0, :created_at => "2013-04-04 04:55:41", :updated_at => "2013-04-04 05:06:35", :store_id => 2 },
  { :customer_id => 3, :status => "returned", :total => 1549.0, :created_at => "2013-04-04 04:59:24", :updated_at => "2013-04-04 05:07:11", :store_id => 2  },
  { :customer_id => 3, :status => "processed", :total => 3594.0, :created_at => "2013-04-04 04:59:52", :updated_at => "2013-04-04 05:00:18", :store_id => 2  },
  { :customer_id => 3, :status => "shipped", :total => 100.0, :created_at => "2013-04-04 05:00:23", :updated_at => "2013-04-04 05:06:24", :store_id => 2  },
  { :customer_id => 2, :status => "canceled", :total => 2598.0, :created_at => "2013-04-04 05:01:25", :updated_at => "2013-04-04 05:07:22", :store_id => 2  },
  { :customer_id => 2, :status => "canceled", :total => 2598.0, :created_at => "2013-04-04 05:01:52", :updated_at => "2013-04-04 05:07:27", :store_id => 2 },
  { :customer_id => 2, :status => "processed", :total => 800.0, :created_at => "2013-04-04 05:02:22", :updated_at => "2013-04-04 05:02:33", :store_id => 2 },
  { :customer_id => 2, :status => "shipped", :total => 5697.0, :created_at => "2013-04-04 05:02:54", :updated_at => "2013-04-04 05:06:29", :store_id => 2 },
  { :customer_id => 2, :status => "pending", :total => 125.0, :created_at => "2013-04-04 05:03:04", :updated_at => "2013-04-04 05:03:04", :store_id => 2 },
  { :customer_id => 1, :status => "pending", :total => 45.0, :created_at => "2013-04-04 05:03:35", :updated_at => "2013-04-04 05:03:35", :store_id => 2 },
  { :customer_id => 1, :status => "paid", :total => 45.0, :created_at => "2013-04-04 05:04:04", :updated_at => "2013-04-04 05:07:01", :store_id => 2 },
  { :customer_id => 1, :status => "paid", :total => 75.0, :created_at => "2013-04-04 05:04:29", :updated_at => "2013-04-04 05:06:42", :store_id => 2 },
  { :customer_id => 3, :status => "paid", :total => 449.0, :created_at => "2013-04-04 05:05:48", :updated_at => "2013-04-04 05:06:50", :store_id => 2 },
  { :customer_id => 3, :status => "returned", :total => 1299.0, :created_at => "2013-04-04 04:55:41", :updated_at => "2013-04-04 05:06:35", :store_id => 2 },
  { :customer_id => 3, :status => "returned", :total => 1549.0, :created_at => "2013-04-04 04:59:24", :updated_at => "2013-04-04 05:07:11", :store_id => 2  },
  { :customer_id => 3, :status => "processed", :total => 3594.0, :created_at => "2013-04-04 04:59:52", :updated_at => "2013-04-04 05:00:18", :store_id => 2  },
  { :customer_id => 3, :status => "shipped", :total => 100.0, :created_at => "2013-04-04 05:00:23", :updated_at => "2013-04-04 05:06:24", :store_id => 10  },
  { :customer_id => 2, :status => "canceled", :total => 2598.0, :created_at => "2013-04-04 05:01:25", :updated_at => "2013-04-04 05:07:22", :store_id => 10  },
  { :customer_id => 2, :status => "canceled", :total => 2598.0, :created_at => "2013-04-04 05:01:52", :updated_at => "2013-04-04 05:07:27", :store_id => 10 },
  { :customer_id => 2, :status => "processed", :total => 800.0, :created_at => "2013-04-04 05:02:22", :updated_at => "2013-04-04 05:02:33", :store_id => 10 },
  { :customer_id => 2, :status => "shipped", :total => 5697.0, :created_at => "2013-04-04 05:02:54", :updated_at => "2013-04-04 05:06:29", :store_id => 10 },
  { :customer_id => 2, :status => "pending", :total => 125.0, :created_at => "2013-04-04 05:03:04", :updated_at => "2013-04-04 05:03:04", :store_id => 10 },
  { :customer_id => 1, :status => "pending", :total => 45.0, :created_at => "2013-04-04 05:03:35", :updated_at => "2013-04-04 05:03:35", :store_id => 10 },
  { :customer_id => 1, :status => "paid", :total => 45.0, :created_at => "2013-04-04 05:04:04", :updated_at => "2013-04-04 05:07:01", :store_id => 10 },
  { :customer_id => 1, :status => "paid", :total => 75.0, :created_at => "2013-04-04 05:04:29", :updated_at => "2013-04-04 05:06:42", :store_id => 10 },
  { :customer_id => 3, :status => "paid", :total => 449.0, :created_at => "2013-04-04 05:05:48", :updated_at => "2013-04-04 05:06:50", :store_id => 10 },
  { :customer_id => 3, :status => "returned", :total => 1299.0, :created_at => "2013-04-04 04:55:41", :updated_at => "2013-04-04 05:06:35", :store_id => 10 },
  { :customer_id => 3, :status => "returned", :total => 1549.0, :created_at => "2013-04-04 04:59:24", :updated_at => "2013-04-04 05:07:11", :store_id => 10  },
  { :customer_id => 3, :status => "processed", :total => 3594.0, :created_at => "2013-04-04 04:59:52", :updated_at => "2013-04-04 05:00:18", :store_id => 10  },
  { :customer_id => 3, :status => "shipped", :total => 100.0, :created_at => "2013-04-04 05:00:23", :updated_at => "2013-04-04 05:06:24", :store_id => 10  },
], :without_protection => true )
