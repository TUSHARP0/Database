db.restaurent.find({grades:{$elemMatch:{grade:"A",score:3,date:ISODate("2014-03-05T00:00:00Z")}}},{restaurant_id:1,name:1,grades:1}).skip(1).pretty();
