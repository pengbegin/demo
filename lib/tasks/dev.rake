namespace :dev do

    desc "Rebuild system"
    task :rebuild => ["db:drop", "db:setup", :fake]

    task :fake => :environment do
        puts "Create fake data for development"
        u = User.new( :login => "root", :password => "password", :email => "root@example.com", :name => "管理員")
        u.save!
    end
end