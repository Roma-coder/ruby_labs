# Creates a csv file with fake data
require 'faker'
require 'csv'

module FakerManager

    @@classes = ['ruby', 'software', 'math', 'english', 'testing', 'DevOps']

    def FakerManager.get_name
        Faker::Name.unique.name
    end

    def FakerManager.get_class
        classes = @@classes
        choise_class = rand(classes.length())
        return classes
    end


    def FakerManager.get_address
        address = []
        address.push(Faker::Address.city)
        address.push(Faker::Address.street_address)
        address.push(Faker::Address.secondary_address)
        return address.join(',')
    end


    def FakerManager.get_email(name)
        name_for_email = name.strip.gsub(/\s+/, '')
        email = "#{name_for_email.downcase}@gmail.com"
    end

    def FakerManager.save_to_csv(path_to_csv, array)
        # open a csv file and write an array of hash elements to it
        # use the hash keys as a csv headers
        
        CSV.open(path_to_csv, "w+", headers: array[0].keys, write_headers: true) do |csv_file|
            array.each do |element|
                csv_file << element.values
            end
        end
    end

end
