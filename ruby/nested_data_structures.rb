learning_community = {
    physical_mental_health: {
      budget: {
        nutrition: 10000,
        fitness: 10000,
        spiritual: 10000,
        mental_emotional: 10000,
        giving_back: 10000,
      },
      students: [
        "Inez Jimenez",
        "Guadalupe Wilson",
        "Sheryl Martinez",
        "Muriel Gross",
        "Terri Carpenter"
      ]
    },

  empathy_and_collaboration: {
    budget: {
      emotional_intelligence: 15000,
      conflict_resolution: 15000,
      culture_and_feedback: 15000,
    },
    students: [
      "Moses Klein",
      "Ruth Fernandez",
      "Derrick Swanson",
      "Linda Morales",
      "Rodney Torres"
    ]
  },

  liberal_arts: {
    budget: {
      music_art_design: 10000,
      history_and_literature: 10000,
      philosophy_and_psychology: 10000,
    },
    students: [
      "Jennifer Gross",
      "Kathy Bryant",
      "Lucille Schultz",
      "Luz Cross",
      "Misty Brown",
    ]
  },

  sciences_and_tech: {
    budget: {
      physical_sciences: 15000,
      life_sciences: 15000,
      social_sciences: 15000,
      applied_sciences: 15000,
    },
    students: [
      "Yvonne Myers",
      "Rose Andrews",
      "Lonnie Collins",
      "Lena Gordon",
      "Daryl Rowe"
    ]
  },

}

p learning_community[:physical_mental_health][:students][0..-1]
p learning_community[:sciences_and_tech][:budget]
p learning_community[:empathy_and_collaboration][:students][3]
p learning_community[:liberal_arts][:students].push("Youna Yang")