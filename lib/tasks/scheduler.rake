desc "This task is called by the Heroku scheduler add-on"
task :update_feed => :environment do

  Water.all.each do |water|
    days = water.user_plant.plant.days
    boundary_date = water.created_at + (days + 2).days
    if DateTime.now > boundary_date && DateTime.now < boundary_date + 1.days
      user = water.user_plant.user
      Esendex::Account.new.send_message( to: user.number, body: "Mon 1er SMS")
    end
  end
end

