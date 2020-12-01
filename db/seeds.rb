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

q = c.questions.build(
  :question => "Which statement represents a characteristic of an ecosystem that is not likely to sustain itself?",
  :answer => "There are more consumers than producers."
)

q.dummy << "The Sun provides the needed energy." << "Energy is transferred from plants to animals." << "There are interactions between biotic and abiotic factors."
q.save

### Genetics ###

c = Category.create(:title => "Genetics")
q = c.questions.build(
    :question => "What term would <em>best</em> be used to describe an organism possessing two identical genes for a trait?", 
    :answer => "homozygous"
    )
q.dummy << "heterozygous" << "hybrid" << "incompletely dominant"
q.save

q = c.questions.build(
  :question => "When red-flowered snapdragons are crossed with white-flowered snapdragons, all the F 1 plants will have pink flowers. If Mendel had used snapdragons instead of pea plants, he would have had difficulty in formulating his principle of", 
  :answer => "dominance"
  )
q.dummy << "sex-linked traits" << "multiple alleles" << "mutation"
q.save

q = c.questions.build(
  :question => "In a certain species of mouse, gray fur (G) is \
  dominant over cream-colored fur (g). If a homozygous gray mouse is crossed with a \
  cream-colored mouse, the genotype of the F 1 generation will most likely be", 
  :answer => "100% Gg"
  )
q.dummy << "50% GG and 50% gg" << "25% GG, 50% Gg, and 25% gg" << "75% Gg and 25% gg"
q.save

q = c.questions.build(
  :question => "In a DNA sample, 15% of the bases are thymine (T). What percentage of \
  the bases in this sample are adenine (A)?", 
  :answer => "15%"
  )
q.dummy << "30%" << "35%" << "85%"
q.save

q = c.questions.build(
  :question => "Heterozygous pink snapdragons are an example of intermediate \
  inheritance in plants. These pink-flowered plants may be produced as a result of", 
  :answer => "a cross between parent plants whose flower color is different from that of their offspring"
  )
q.dummy << "the expression of a dominant gene" << "the expression of a recessive gene" << "a cross between parent plants, both of which
have flowers with red petals"
q.save

q = c.questions.build(
  :question => "If the pattern of inheritance for a trait is complete dominance, \
  then an organism heterozygous for the trait would normally express", 
  :answer => "the dominant trait, only"
  )
q.dummy << "the recessive trait, only" << "a blend of the recessive and dominant traits" << "a phenotype unlike that of either parent"
q.save

## Evolution ##

c = Category.create(:title => "Evolution")
q = c.questions.build(
    :question => "In 1889, August Weismann, a German biologist, conducted an experiment attempting to produce mice \
    without tails. He cut the tails off adult mice and then permitted them to mate. All offspring had long tails. \
    He repeated the experiment many times, always with the same results. This experiment helped to <em>disprove</em> \
    the concept of", 
    :answer => "inheritance of acquired characteristics"
    )
q.dummy << "survival of the fittest" << "struggle for existence" << "natural selection"
q.save

q = c.questions.build(
  :question => "Which statement would most likely be in agreement with Lamarck's theory of evolution?", 
  :answer => "inheritance of acquired characteristics"
  )
q.dummy << "Black moths have evolved in an area because they were better adapted to the environment and \
            had high rates of survival and reproduction." <<
            "Geographic barriers may lead to reproductive  isolation and the production of new species." <<
             "Most variations in animals and plants are due to random chromosomal and gene mutation."
q.save

q = c.questions.build(
  :question => "Natural selection and its evolutionary consequences provide a scientific explanation for", 
  :answer => "the fossil record of ancient life-forms"
)
q.dummy << "predictions about the rate of global warming" << "the amount of precipitation in a rain forest" << "the amount of soil used to grow certain crops"
q.save