# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Language.destroy_all
Phrase.destroy_all

Language.create!(name: "French")
Language.create!(name: "Portuguese")
Language.create!(name: "Spanish")
Language.create!(name: "German")


Phrase.create!(body: "body test 1", fig_trans: "fig_trans test 1", lit_trans: "lit_trans test 1", context: "context test 1", pronunciation: "pronunciation test 1", language_id: 1)
Phrase.create!(body: "body test 2", fig_trans: "fig_trans test 2", lit_trans: "lit_trans test 2", context: "context test 2", pronunciation: "pronunciation test 2", language_id: 2)
Phrase.create!(body: "body test 3", fig_trans: "fig_trans test 3", lit_trans: "lit_trans test 3", context: "context test 3", pronunciation: "pronunciation test 3", language_id: 3)
Phrase.create!(body: "body test 4", fig_trans: "fig_trans test 4", lit_trans: "lit_trans test 4", context: "context test 4", pronunciation: "pronunciation test 4", language_id: 4)
