require 'csv'

namespace :sample_tasks do 

    # load the environment (models included) before running task 
    task :import_locations => :environment do 
        CSV.foreach(Rails.root.join('lib/assets/locations.csv'), headers: true) do |row|

            name = row[1];
            city = row[2];
            Location.create({name:name, city:city})
        end
    end

    task :import_work_orders => :environment do 
        CSV.foreach(Rails.root.join('lib/assets/work_orders.csv'), headers: true) do |row|

            technician_id = row[1];
            location_id = row[2];
            time = row[3]
            duration = row[4]
            price = row[5]
            
            puts technician_id + " " + location_id + " " + time + " " + duration + " " + price
            puts "---"
        end
    end

    
    
end