require "pry"

class Character < ActiveRecord::Base
    belongs_to :actor
    belongs_to :show

    def say_that_thing_you_say
        "#{name} always says: #{catchphrase}"
    end

    def build_show(name:)
        new_show = Show.create(name: name)
        self.show_id = new_show.id 
        self
    end

    def build_network(input_hash)
        new_network = Network.create(call_letters: input_hash[:call_letters])
        self.show.network_id = new_network.id
    end
end