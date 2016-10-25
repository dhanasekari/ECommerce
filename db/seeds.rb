	Address.all.each do|address|
		address.destroy!
	end
	#User.all.each do|user|
	#	user.destroy!
	#end
	Product.all.each do|product|
		product.destroy!
	end

#user = User.create({name: 'dhanasekari', email: 'dhanaac@gmail.com', password: 'dhanasara', repassword: 'dhanasara'})

address = Address.create({fname: 'dhanasekari', lname: 'pandiyan', address1: 'chinnur north strt', address2: 'bhuvanagiri taluk', city: 'cuddalore', state: 'TN', pincode: '608502', phone: '8809', user_id: user.id})
address = Address.create({fname: 'jeevitha', lname: 'pandiyan', address1: 'chinnur north strt', address2: 'bhuvanagiri taluk', city: 'cuddalore', state: 'TN', pincode: '608502', phone: '989'})

product = Product.create({ProductName: 'sumsung j7', description: 'sumsung glaxy', price: '18000', size: '5inch', color: 'black', discount: '12000', status: 'yes'})
product = Product.create({ProductName: 'iphone', description: 'iphone j6', price: '60000', size: '4inch', color: 'medal', discount: '55000', status: 'yes'})

category = Category.create({name: 'mobile', description: 'mobile shope for all', active:true})
category = Category.create({name: 'cloths', description: 'cloths for all', active:true})
