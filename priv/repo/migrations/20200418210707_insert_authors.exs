defmodule ApiFolhaDirigida.Repo.Migrations.InsertAuthors do
  use Ecto.Migration

  import Ecto.Query
  alias ApiFolhaDirigida.{Authors, Repo}

  def up do
    now = NaiveDateTime.truncate(NaiveDateTime.utc_now(), :second)

    Repo.insert_all(Authors, [
      %{
        id: "a46c9a5c-fd6a-44cc-9827-77d35e267c66",
        name: "Rick Riordan",
        description:
          "Rick Riordan, dubbed 'storyteller of the gods' by Publishers Weekly, is the author of five New York Times number-one bestselling book series with millions of copies sold throughout the world: Percy Jackson, the Heroes of Olympus and the Trials of Apollo, based on Greek and Roman mythology; the Kane Chronicles, based on Egyptian mythology; and Magnus Chase, based on Norse mythology. Percy Jackson and the Lightning Thief, Rick's first novel featuring the heroic young demigod, won the Red House Children's Book Award and is now a blockbuster film franchise starring Logan Lerman. ",
        inserted_at: now,
        updated_at: now
      },
      %{
        id: "b46c9a5c-fd6a-44cc-9827-77d35e267c66",
        name: "Dan Brown",
        description:
          "Dan Brown is the #1 New York Times bestselling author of The Da Vinci Code and, previously, Digital Fortress, Deception Point, and Angels and Demons. He is a graduate of Amherst College and Phillips Exeter Academy, where he spent time as an English teacher before turning his efforts fully to writing. He lives in New England with his wife. ",
        inserted_at: now,
        updated_at: now
      },
      %{
        id: "c46c9a5c-fd6a-44cc-9827-77d35e267c66",
        name: "Christopher Hastings",
        description: "",
        inserted_at: now,
        updated_at: now
      },
      %{
        id: "d46c9a5c-fd6a-44cc-9827-77d35e267c66",
        name: "Ryan North",
        description: "",
        inserted_at: now,
        updated_at: now
      },
      %{
        id: "e46c9a5c-fd6a-44cc-9827-77d35e267c66",
        name: "Kirsten Beyer",
        description: "",
        inserted_at: now,
        updated_at: now
      },
      %{
        id: "f46c9a5c-fd6a-44cc-9827-77d35e267c66",
        name: "Mike Johnson",
        description: "",
        inserted_at: now,
        updated_at: now
      },
      %{
        id: "f46c9a5c-fd6a-44cc-9827-77d35e267c65",
        name: "Robert Perisic",
        description:
          "Robert Perišić is a light bright with intelligence and twinkling with irony, flashing us the news that postwar Croatia not only endures but matters.” —Jonathan Franzen, author of The Corrections and Freedom",
        inserted_at: now,
        updated_at: now
      },
      %{
        id: "f46c9a5c-fd6a-44cc-9827-77d35e267c64",
        name: "Dave Eggers",
        description:
          "DAVE EGGERS is the author of twelve books, including The Monk of Mokha; The Circle; Heroes of the Frontier; A Hologram for the King, a finalist for the National Book Award; and What Is the What, a finalist for the National Book Critics Circle Award and winner of France’s Prix Médicis Etranger. He is the founder of McSweeney’s and the cofounder of 826 Valencia, a youth writing center that has inspired similar programs around the world, and of ScholarMatch, which connects donors with students to make college accessible. He is the winner of the Dayton Literary Peace Prize and is the cofounder of Voice of Witness, a book series that illuminates human rights crises through oral history. He is a member of the American Academy of Arts and Letters. His work has been translated into forty-two languages. ",
        inserted_at: now,
        updated_at: now
      },
      %{
        id: "f46c9a5c-fd6a-44cc-9827-77d35e267c63",
        name: "Silvia Moreno-Garcia",
        description:
          "Silvia Moreno-Garcia is the author of Gods of Jade and Shadow, named one of the best books of summer 2019 by Publishers Weekly; Signal to Noise, named one of the best books of the year by Book Riot, Tordotcom, BuzzFeed, io9, and other publications; Certain Dark Things, one of NPR’s best books of the year, a Publishers Weekly top ten, and a VOYA “Perfect Ten”; the fantasy of manners The Beautiful Ones; and the science fiction novella Prime Meridian. She has also edited several anthologies, including the World Fantasy Award-winning She Walks in Shadows (aka Cthulhu’s Daughters). She lives in Vancouver, British Columbia.",
        inserted_at: now,
        updated_at: now
      },
      %{
        id: "f46c9a5c-fd6a-44cc-9827-77d35e267c62",
        name: "Euclid",
        description:
          "
          Euclid is the most celebrated mathematician of all time. He lived in the third or fourth century B. C. E., after Plato but before Apollonius of Perga. His fame rests preeminently upon the Elements, which he wrote in thirteen books and which is said to have exercised an influence on the human mind greater than that of any other work except the Bible. ",
        inserted_at: now,
        updated_at: now
      }
    ])
  end

  def down do
    from(a in Authors) |> Repo.delete_all()
  end
end
