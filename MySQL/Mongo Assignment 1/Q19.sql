db.restaurent.find({borough:{$not:{$in:['Staten Island','Queens','Bronxor Brooklyn']}}},{restaurant_id:1,name:1,borough:1,cuisine:1}).pretty();
