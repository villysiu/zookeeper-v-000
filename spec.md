#Specifications for the Rails Assessment

Specs:

X Using Ruby on Rails for the project
X Include at least one has_many relationship (x has_many y; e.g. User has_many Recipes)
  User has_many Animals
X Include at least one belongs_to relationship (x belongs_to y; e.g. Post belongs_to User)
  Animal belongs_to Exhibit
X Include at least two has_many through relationships (x has_many y through z; e.g. Recipe has_many Items through Ingredients)
 User has_many Animals through HealthCheckups
X Include at least one many-to-many relationship (x has_many y through z, y has_many x through z; e.g. Recipe has_many Items through Ingredients, Item has_many Recipes through Ingredients)
 User has_many Animals through HealthCheckups, Animal has_many Users through HealthCheckups
X The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user (attribute_name e.g. ingredients.quantity)
 HealthCheckup.comment is submiited along with the foreign keys
X Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item)
  list of model objects with validations: User, Animal, HealthCheckup
X Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes)
 Animal.deceased animal.alive URL: /animal/show
X Include signup (how e.g. Devise)
/user/signup
 XInclude login (how e.g. Devise)
 
X Include logout (how e.g. Devise)

X Include third party signup/login (how e.g. Devise/OmniAuth)
  Omniauth_facebook
X Include nested resource show or index (URL e.g. users/2/recipes)
 URL: animal/1/health_checkups
X Include nested resource "new" form (URL e.g. recipes/1/ingredients/new)
 URL: animal/1/health_checkups/new
X Include form display of validation errors (form URL e.g. /recipes/new)
form URL: /animals/new , /animal/1/edit , /animal/1/health_checkup/new
Confirm:

X The application is pretty DRY
X Limited logic in controllers
X Views use helper methods if appropriate
X Views use partials if appropriate
