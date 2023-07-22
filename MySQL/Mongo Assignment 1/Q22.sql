db.restaurent.find({grades:{$elemMatch:{grade:'A',score:11,date:ISODate("2014-08-11T00:00:00Z")}}}).pretty();
