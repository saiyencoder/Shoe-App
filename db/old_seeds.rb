Supplier.create(name: "Footlocker", email: "footlocker@lockerroom.com", phone: "1-800-481-7564")
Supplier.create(name: "Champs", email: "champs@champions.com", phone: "1-800-983-1632")
Supplier.create(name: "Nike Store", email: "nikestore@nike.com", phone: "1-800-538-0921")


CategoryShoe.create!(shoe_id: 1, category_id: 2)
CategoryShoe.create!(shoe_id: 2, category_id: 1)
CategoryShoe.create!(shoe_id: 3, category_id: 2)
CategoryShoe.create!(shoe_id: 4, category_id: 3)
CategoryShoe.create!(shoe_id: 6, category_id: 3)
CategoryShoe.create!(shoe_id: 8, category_id: 2)
CategoryShoe.create!(shoe_id: 13, category_id: 3)

Image.create([
  {shoe_id: 1, url: "https://images.solecollector.com/complex/image/upload/c_fill,f_auto,fl_lossy,q_auto,w_800/nike-kobe-11_i8fbna"},
  {shoe_id: 2, url: "https://images.solecollector.com/complex/image/upload/yhit8nc3gaoinbtx2jiv.jpg"},
  {shoe_id: 3, url: "https://images3.nike.com/is/image/DotCom/PDP_HERO_ZOOM/844378_006_C_PREM/zoom-lebron-soldier-10-sfg-basketball-shoe.jpg"},
  {shoe_id: 4, url: "https://images.solecollector.com/complex/image/upload/mbxc19h4ujc7k3kqjwzm.jpg"},
  {shoe_id: 6, url: "https://s7d2.scene7.com/is/image/dkscdn/16ADIMHRDN1BLKRD1PRF_Red_White_is/"},
  {shoe_id: 8, url: "https://sneakernews.com/wp-content/uploads/2017/04/nike-pg-1-black-white-hyper-turquoise-878627-001-1.jpg"},
  {shoe_id: 13, url: "http://14042-presscdn-0-36.pagely.netdna-cdn.com/wp-content/uploads/2015/07/Adizero-1.5-Derrick-Rose-.jpg"}
  ])  
  
  Category.create!([
  {name: "Jordans"},    #ID = 1
  {name: "Nike"},       #ID = 2
  {name: "Adidas"},     #ID = 3 
  {name: "High Tops"},  #ID = 4
  {name: "Low Tops"}    #ID = 5
  ]) 

  CategoryShoe.create!([
  {shoe_id: 1, category_id: 5},
  {shoe_id: 2, category_id: 4},
  {shoe_id: 3, category_id: 4},
  {shoe_id: 4, category_id: 5},
  {shoe_id: 6, category_id: 5},
  {shoe_id: 8, category_id: 5},
  {shoe_id: 13, category_id: 4},
  ])  







