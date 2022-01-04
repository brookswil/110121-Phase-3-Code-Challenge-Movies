class Role < ActiveRecord::Base
    belongs_to :actor
    belongs_to :movie

    def credit
        "#{self.character.name} played by #{self.actor.name}"
end