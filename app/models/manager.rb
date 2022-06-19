class Manager < ApplicationRecord
    validates:project, presence: true
    validates:description, presence: true
    validates:state, presence: true

    enum state: [:Propuesta, :Terminado, :Proceso]
end
