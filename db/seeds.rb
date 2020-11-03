# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

c = Category.create(:title => "Ecology")
q = c.questions.build(
    :question => "Which statement best describes the relationship between organism X and organism Y in each interaction?", 
    :answer => "Organism X is positively affected by the relationship and organism Y is negatively affected.",
    :diagram_info => "Two interactions between organisms are shown in the table below. X and Y do <b>not</b> represent the same organisms in the two interactions."
)
q.dummy << "Organism X is negatively affected by the relationship and organism Y is positively affected." << "Both organisms are positively affected by the relationship." << "Both organisms are negatively affected by the relationship"

q.diagram.attach(
    io: File.open(Rails.root.join('storage', 'seed_pictures','two_interactions.jpg')),
    filename: 'two_interactions.jpg',
    content_type: "image/jpg"
  )
q.save
# Works great