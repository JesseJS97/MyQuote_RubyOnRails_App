#Created by Jesse Scully
#10-10-2024

#The following entries are the entries/dataset to be seeded into the database
#to be used by anyone who is testing this prototype
#Run the command rails db:seed to insert the required data into the prototype's database
#Run the command after environment has already been setup

#Remember to run the rails server command in a separate window


#Seed User entries
User.create!({fname: "John", surname: "Smith", email: "jsmith@email.com", password: "jsmith123", password_confirmation: "jsmith123", IsAdmin: false, status: "Active"})
User.create!({fname: "John", surname: "Doe", email: "johndoe@email.com", password: "jdoe123", password_confirmation: "jdoe123", IsAdmin: false, status: "Active"})
User.create!({fname: "Jane", surname: "Doe", email: "janedoe@email.com", password: "janed456", password_confirmation: "janed456", IsAdmin: false, status: "Suspended"})
User.create!({fname: "Bob", surname: "Smith", email: "bobsmith@email.com", password: "bsmith789", password_confirmation: "bsmith789", IsAdmin: false, status: "Active"})
User.create!({fname: "Alice", surname: "Johnson", email: "alicejohnson@email.com", password: "johno432", password_confirmation: "johno432", IsAdmin: false, status: "Active"})
User.create!({fname: "Sarah", surname: "Lee", email: "sarahlee@email.com", password: "slee123", password_confirmation: "slee123", IsAdmin: false, status: "Active"})
User.create!({fname: "David", surname: "Brown", email: "davidbrown@email.com", password: "dbrown456", password_confirmation: "dbrown456", IsAdmin: false, status: "Active"})
User.create!({fname: "Emily", surname: "Wilson", email: "emilywilson@email.com", password: "wilso789", password_confirmation: "wilso789", IsAdmin: false, status: "Suspended"})
User.create!({fname: "Oliver", surname: "Taylor", email: "olivertaylor@email.com", password: "otay721", password_confirmation: "otay721", IsAdmin: false, status: "Active"})
User.create!({fname: "Grace", surname: "Anderson", email: "graceanderson@email.com", password: "ando123", password_confirmation: "ando123", IsAdmin: false, status: "Active"})
User.create!({fname: "Lucas", surname: "Scott", email: "lucasscott@email.com", password: "scotty456", password_confirmation: "scotty456", IsAdmin: false, status: "Banned"})
User.create!({fname: "Larry", surname: "Bird", email: "lbird@email.com", password: "birdy983", password_confirmation: "birdy983", IsAdmin: false, status: "Active"})
User.create!({fname: "John", surname: "Jones", email: "admin@myquotes.com", password: "admin123", password_confirmation: "admin123", IsAdmin: true, status: "Active"})
User.create!({fname: "Vincent", surname: "Brown", email: "vinceb@myemail.com", password: "vince123", password_confirmation: "vince123", IsAdmin: false, status: "Active"})

#Seed Philosopher entries
#OpenAI.(2024).Philosopher myQuotes dataset [AI-generated .txt file]. Generated using ChatGPT, provided by OpenAI.
Philosopher.create!({p_firstName: "Socrates", p_surname: "", p_deathYear: 399, p_bio: "Ancient Greek philosopher, considered one of the founders of Western philosophy.", p_year: 469})
Philosopher.create!({p_firstName: "René", p_surname: "Descartes", p_deathYear: 1650, p_bio: "French philosopher, known for 'Cogito, ergo sum'.", p_year: 1596})
Philosopher.create!({p_firstName: "Immanuel", p_surname: "Kant", p_deathYear: 1804, p_bio: "German philosopher, key figure in modern philosophy, especially in epistemology.", p_year: 1724})
Philosopher.create!({p_firstName: "Friedrich", p_surname: "Nietzsche", p_deathYear: 1900, p_bio: "German philosopher known for ideas like nihilism and the Übermensch.", p_year: 1844})
Philosopher.create!({p_firstName: "Plato", p_surname: "", p_deathYear: 348, p_bio: "Greek philosopher, student of Socrates, author of 'The Republic'.", p_year: 427})
Philosopher.create!({p_firstName: "John", p_surname: "Locke", p_deathYear: 1704, p_bio: "English philosopher and political theorist, key Enlightenment thinker.", p_year: 1632})
Philosopher.create!({p_firstName: "David", p_surname: "Hume", p_deathYear: 1776, p_bio: "Scottish philosopher, historian, economist, known for empiricism and skepticism.", p_year: 1711})
Philosopher.create!({p_firstName: "Karl", p_surname: "Marx", p_deathYear: 1883, p_bio: "German philosopher, economist, and socialist revolutionary.", p_year: 1818})
Philosopher.create!({p_firstName: "Jean-Paul", p_surname: "Sartre", p_deathYear: 1980, p_bio: "French existentialist philosopher, playwright, and novelist.", p_year: 1905})
Philosopher.create!({p_firstName: "Simone", p_surname: "de Beauvoir", p_deathYear: 1986, p_bio: "French existentialist philosopher and feminist, author of 'The Second Sex'.", p_year: 1908})
Philosopher.create!({p_firstName: "Aristotle", p_surname: "", p_deathYear: 322, p_bio: "Greek philosopher, student of Plato, teacher of Alexander the Great.", p_year: 384})
Philosopher.create!({p_firstName: "Ludwig", p_surname: "Wittgenstein", p_deathYear: 1951, p_bio: "Austrian-British philosopher who worked on logic and language philosophy.", p_year: 1889})

#Seed Quote entries
#OpenAI.(2024).Quotes myQuotes dataset [AI-generated .txt file]. Generated using ChatGPT, provided by OpenAI.
Quote.create!({quote_txt: "The unexamined life is not worth living.", user_comm: "A profound statement on self-reflection.", user_id: 1, philosopher_id: 1})
Quote.create!({quote_txt: "I think, therefore I am.", user_comm: "Insightful quote about existence.", user_id: 2, philosopher_id: 2})
Quote.create!({quote_txt: "Dare to know! Have the courage to use your own reason.", user_comm: "A call for intellectual independence.", user_id: 3, philosopher_id: 3})
Quote.create!({quote_txt: "He who has a why to live can bear almost any how.", user_comm: "A powerful reflection on purpose.", user_id: 4, philosopher_id: 4})
Quote.create!({quote_txt: "Man is by nature a political animal.", user_comm: "A key idea in political philosophy.", user_id: 5, philosopher_id: 5})
Quote.create!({quote_txt: "Where there is no law, there is no freedom.", user_comm: "Locke's view on governance.", user_id: 6, philosopher_id: 6})
Quote.create!({quote_txt: "Reason is, and ought only to be, the slave of the passions.", user_comm: "Hume on human nature.", user_id: 7, philosopher_id: 7})
Quote.create!({quote_txt: "From each according to his ability, to each according to his need.", user_comm: "Marx's socialist ideal.", user_id: 8, philosopher_id: 8})
Quote.create!({quote_txt: "Man is condemned to be free.", user_comm: "Sartre’s existentialist view on freedom.", user_id: 9, philosopher_id: 9})
Quote.create!({quote_txt: "One is not born, but rather becomes, a woman.", user_comm: "De Beauvoir's feminist philosophy.", user_id: 10, philosopher_id: 10})
Quote.create!({quote_txt: "The limits of my language mean the limits of my world.", user_comm: "Wittgenstein on language.", user_id: 11, philosopher_id: 12})
Quote.create!({quote_txt: "Happiness depends upon ourselves.", user_comm: "Aristotle on happiness.", user_id: 12, philosopher_id: 11})

#Seed category entries
#OpenAI.(2024).Categories myQuotes dataset [AI-generated .txt file]. Generated using ChatGPT, provided by OpenAI.
Category.create!({cat_name: "Metaphysics"})
Category.create!({cat_name: "Epistemology"})
Category.create!({cat_name: "Ethics"})
Category.create!({cat_name: "Political Philosophy"})
Category.create!({cat_name: "Aesthetics"})
Category.create!({cat_name: "Logic"})
Category.create!({cat_name: "Existentialism"})
Category.create!({cat_name: "Feminism"})
Category.create!({cat_name: "Philosophy of Language"})
Category.create!({cat_name: "Social Philosophy"})
Category.create!({cat_name: "Human Nature"})
Category.create!({cat_name: "Political Theory"})

#Seed Quotecategory entries
#OpenAI.(2024).QuoteCategories myQuotes dataset [AI-generated .txt file]. Generated using ChatGPT, provided by OpenAI.
Quotecategory.create!({cat_quantity: 1, quote_id: 1, category_id: 3})
Quotecategory.create!({cat_quantity: 1, quote_id: 2, category_id: 2})
Quotecategory.create!({cat_quantity: 1, quote_id: 3, category_id: 2})
Quotecategory.create!({cat_quantity: 1, quote_id: 4, category_id: 5})
Quotecategory.create!({cat_quantity: 1, quote_id: 5, category_id: 4})
Quotecategory.create!({cat_quantity: 1, quote_id: 6, category_id: 4})
Quotecategory.create!({cat_quantity: 1, quote_id: 7, category_id: 1})
Quotecategory.create!({cat_quantity: 1, quote_id: 8, category_id: 6})
Quotecategory.create!({cat_quantity: 1, quote_id: 9, category_id: 7})
Quotecategory.create!({cat_quantity: 1, quote_id: 10, category_id: 8})
Quotecategory.create!({cat_quantity: 1, quote_id: 11, category_id: 9})
Quotecategory.create!({cat_quantity: 1, quote_id: 12, category_id: 11})