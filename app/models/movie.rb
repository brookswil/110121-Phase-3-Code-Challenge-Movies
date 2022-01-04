class Movie < ActiveRecord::Base
    has_many :roles
    has_many :actors, through: :roles

    def cast_role(actor, character_name, salary)
        Role.create(
            actor_id: actor.id,
            character_name: self.id,
            movie_id: movie_id,
            salary: salary

        )
    end

    def all_credits
        ["#{self.character.name} played by #{self.actor.name}",
        "#{self.character.name} played by #{self.actor.name}",
        "#{self.character.name} played by #{self.actor.name}"]
    end

    def fire_actor(actor)
        actor = Actor

end