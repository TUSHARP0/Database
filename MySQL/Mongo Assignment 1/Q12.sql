db.restaurent.find({cusine:{$ne:'American'},'grades.score':{$gt:70},"address.coord.0":{$lt:-65}}).pretty();
