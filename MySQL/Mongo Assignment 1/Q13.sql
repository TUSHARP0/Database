db.restaurent.find({cuisine:{$ne:'American'},"grades.grade":'A',borough:{$ne:'Brooklyn'}}).pretty();
