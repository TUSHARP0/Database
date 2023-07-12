db.restaurent.find({"grades.0.score":{$lt:10}},{restaurant_id:1,name:1,borough:1,cuisine:1}).pretty();
