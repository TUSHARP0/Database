db.restaurent.find({$and:[{borough:'Bronx'},{cuisine:{$in:['American','Chinese']}}]}).pretty();
