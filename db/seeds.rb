	Address.all.each do|address|
		address.destroy!
	end
	User.all.each do|user|
		user.destroy!
	end

user = User.create({name: 'dhanasekari', email: 'dhanaac@gmail.com', password: 'dhanasara', repassword: 'dhanasara'})

address = Address.create({fname: 'dhanasekari', lname: 'pandiyan', address1: 'chinnur north strt', address2: 'bhuvanagiri taluk', city: 'cuddalore', state: 'TN', pincode: '608502', phone: '8809'})
address = Address.create({fname: 'jeevitha', lname: 'pandiyan', address1: 'chinnur north strt', address2: 'bhuvanagiri taluk', city: 'cuddalore', state: 'TN', pincode: '608502', phone: '989'})