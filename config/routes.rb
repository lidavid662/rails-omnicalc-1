Rails.application.routes.draw do
  get("/", {:controller=>"flex",:action=>"home"})
  get("/square/new", {:controller=>"flex",:action=>"square"})
  get("/square/results", {:controller=>"flex",:action=>"squarer"})
  get("/square_root/new", {:controller=>"flex",:action=>"square_root"})
  get("/square_root/results", {:controller=>"flex",:action=>"square_rootr"})
  get("/payment/new", {:controller=>"flex",:action=>"payment"})
  get("/payment/results", {:controller=>"flex",:action=>"paymentr"})
  get("/random/new", {:controller=>"flex",:action=>"random"})
  get("/random/results", {:controller=>"flex",:action=>"randomr"})
end
