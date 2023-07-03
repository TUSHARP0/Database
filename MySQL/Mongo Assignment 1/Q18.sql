db.restaurent.find({borough:{$in:['Staten Island','Oueens','Bronxor Brooklyn']}},{restaurant_id:1,name:1,borough:1,cuisine:1}).pretty();
