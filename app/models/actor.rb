class Actor < ActiveRecord::Base
    has_many :roles
    has_many :movies, through: :roles

    def total_salary
        actor.roles.all.sum(:salary)
    end
end