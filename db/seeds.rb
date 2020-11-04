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

q = c.questions.build(
  :question => "Which relationship best describes the interactions between lettuce and a rabbit?",
  :answer => "producer — consumer",
  )
q.dummy << "predator — prey" << "parasite — host" << "decomposer — scavenger"
q.save

q = c.questions.build(
  :question => "If the population of bobcats decreases, what will most likely be the long-term effect on the rabbit population?",
  :answer => "It will increase and then decrease.",
  :diagram_info => "The diagram below shows a food chain."
)

q.dummy << "It will increase, only." << "It will decrease, only." << "It will decrease and then increase."

q.diagram.attach(
  io: File.open(Rails.root.join('storage', 'seed_pictures','food_chain.jpg')),
  filename: 'food_chain.jpg',
  content_type: "image/jpg"
)
q.save

q = c.questions.build(
  :question => "In an ecosystem, which component is not recycled?",
  :answer => "energy"
)

q.dummy << "water" << "oxygen" << "carbon"
q.save