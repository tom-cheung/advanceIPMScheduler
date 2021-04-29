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

    
    
end