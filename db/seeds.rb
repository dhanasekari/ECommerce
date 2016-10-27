	Address.all.each do|address|
		address.destroy!
	end
	User.all.each do|user|
		user.destroy!
	end
	Product.all.each do|product|
		product.destroy!
	end
	Category.all.each do|category|
		category.destroy!
	end

user = User.create({name: 'dhanasekari', email: 'dhanaac@gmail.com', password: 'dhanasekari', password_confirmation: 'dhanasekari'})
user = User.create({name: 'jeevitha', email: 'jeevi@gmail.com', password: 'jeevi1991', password_confirmation: 'jeevi1991'})
user = User.create({name: 'nirmala', email: 'nimmi@gmail.com', password: 'nirmala', password_confirmation: 'nirmala'})

address = Address.create({fname: 'dhanasekari', lname: 'pandiyan', address1: 'chinnur north strt', address2: 'bhuvanagiri taluk', city: 'cuddalore', state: 'TN', pincode: '608502', phone: '8809', user_id: user.id})
address = Address.create({fname: 'jeevitha', lname: 'pandiyan', address1: 'chinnur north strt', address2: 'bhuvanagiri taluk', city: 'cuddalore', state: 'TN', pincode: '608502', phone: '989', user_id: user.id})

category = Category.create({name: 'mobile', description: 'mobile shope for all', active:true})
category = Category.create({name: 'cloths', description: 'cloths for all', active:true})

product = Product.create({ProductName: 'sumsung j7', description: 'sumsung glaxy', price: '18000', size: '5inch', color: 'black', discount: '12000', status: 'yes', category_id: category.id})
product = Product.create({ProductName: 'iphone', description: 'iphone j6', price: '60000', size: '4inch', color: 'medal', discount: '55000', status: 'yes', category_id: category.id})
product = Product.create({ProductName: 'chudi', description: 'cotton materials', price: '1500', size: 'medium,', color: 'black', discount: '1200', status: 'yes', category_id: category.id })

OrderStatus.delete_all
OrderStatus.create! id: 1, name: "In Progress"
OrderStatus.create! id: 2, name: "Placed"
OrderStatus.create! id: 3, name: "Shipped"
OrderStatus.create! id: 4, name: "Cancelled"

order = Order.create({subtotal: '220', tax:'11', shipping:'109', total:'109'})




