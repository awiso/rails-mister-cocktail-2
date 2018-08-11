# Tough Spots

* associating the models
  each cocktail has a DOSE of an INGREDIENT
  but a cocktail does not directly have an ingredient...

* "A dose must have a description, a cocktail and an ingredient, and [cocktail, ingredient] pairings should be unique."
  so this means that no cocktail can have '100 ml vodka' more than once.

validates :cocktail_id, presence: true, uniqueness: { scope: :ingredient }


* from rails guides:

class Physician < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments
end
 
class Appointment < ApplicationRecord
  belongs_to :physician
  belongs_to :patient
end
 
class Patient < ApplicationRecord
  has_many :appointments
  has_many :physicians, through: :appointments
endi

* in simple_form, the ingredient is an association


## WOW just dealt with like a 30m bug on the destroy method
  * the confusion was:
    * the route is DELETE coctails/:id --> cocktails#destroy
    * so, in the view it's method: :delete (as in delete request)
    * but in the controller it's destroy!

## and now build is failing because webpack won't compile
  * this line was missing from config/webpack/environment.js:

      const { environment } = require('@rails/webpacker')

  * so during the build is threw an "undefined variable: environment" error


