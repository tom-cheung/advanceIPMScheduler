namespace :sample_tasks do 

    sample_arr = ['cat', 'dog']
    task :say_hello do 
        sample_arr.each do |item|
            puts item
        end
    end
end