defmodule ApiFolhaDirigida.Repo.Migrations.InsertBooks do
  use Ecto.Migration

  import Ecto.Query
  alias ApiFolhaDirigida.{Books, Repo}

  def up do
    now = NaiveDateTime.truncate(NaiveDateTime.utc_now(), :second)

    Repo.insert_all(Books, [
      %{
        id: "a46c9a5c-fd6a-44cc-9827-77d35e267c66",
        name: "Percy Jackson and the Lightning Thief",
        price: 81.40,
        synopsis:
          "After a terrible dragon attack on the little town of Fairfield, the King of Proudhaven declares war on the Dragons. Within days, the entire country becomes a battlefield in the conflict between Dragons and Humans, leaving the land unsafe for all.
        One hope still remains, however, and that hope comes in the form of the young dragon Flashwing. He knows the truth behind the attack on Fairfield, and will stop at nothing to bring peace back to the land.",
        image:
          "https://images-na.ssl-images-amazon.com/images/I/51BE8yvYwtL._SX324_BO1,204,203,200_.jpg",
        inserted_at: now,
        updated_at: now
      },
      %{
        id: "b46c9a5c-fd6a-44cc-9827-77d35e267c66",
        name: "The Lost Symbol",
        price: 16.50,
        synopsis:
          "In this stunning follow-up to the global phenomenon The Da Vinci Code, Dan Brown demonstrates once again why he is the world’s most popular thriller writer. The Lost Symbol is a masterstroke of storytelling--a deadly race through a real-world labyrinth of codes, secrets, and unseen truths . . . all under the watchful eye of Brown’s most terrifying villain to date. Set within the hidden chambers, tunnels, and temples of Washington, D.C., The Lost Symbol accelerates through a startling landscape toward an unthinkable finale.

        As the story opens, Harvard symbologist Robert Langdon is summoned unexpectedly to deliver an evening lecture in the U.S. Capitol Building. Within minutes of his arrival, however, the night takes a bizarre turn. A disturbing object--artfully encoded with five symbols--is discovered in the Capitol Building. Langdon recognizes the object as an ancient invitation . . . one meant to usher its recipient into a long-lost world of esoteric wisdom.

        When Langdon’s beloved mentor, Peter Solomon--a prominent Mason and philanthropist--is brutally kidnapped, Langdon realizes his only hope of saving Peter is to accept this mystical invitation and follow wherever it leads him. Langdon is instantly plunged into a clandestine world of Masonic secrets, hidden history, and never-before-seen locations--all of which seem to be dragging him toward a single, inconceivable truth.

        As the world discovered in The Da Vinci Code and Angels & Demons, Dan Brown’s novels are brilliant tapestries of veiled histories, arcane symbols, and enigmatic codes. In this new novel, he again challenges readers with an intelligent, lightning-paced story that offers surprises at every turn. The Lost Symbol is exactly what Brown’s fans have been waiting for . . . his most thrilling novel yet.",
        image:
          "https://images-na.ssl-images-amazon.com/images/I/51BxwMrmUTL._SX328_BO1,204,203,200_.jpg",
        inserted_at: now,
        updated_at: now
      },
      %{
        id: "c46c9a5c-fd6a-44cc-9827-77d35e267c66",
        name: "Inferno (Robert Langdon)",
        price: 20.00,
        synopsis:
          "Harvard professor of symbology Robert Langdon awakens in an Italian hospital, disoriented and with no recollection of the past thirty-six hours, including the origin of the macabre object hidden in his belongings. With a relentless female assassin trailing them through Florence, he and his resourceful doctor, Sienna Brooks, are forced to flee. Embarking on a harrowing journey, they must unravel a series of codes, which are the work of a brilliant scientist whose obsession with the end of the world is matched only by his passion for one of the most influential masterpieces ever written, Dante Alighieri's The Inferno.

        Dan Brown has raised the bar yet again, combining classical Italian art, history, and literature with cutting-edge science in this sumptuously entertaining thriller.",
        image:
          "https://images-na.ssl-images-amazon.com/images/I/51bn5djsB1L._SX271_BO1,204,203,200_.jpg",
        inserted_at: now,
        updated_at: now
      },
      %{
        id: "d46c9a5c-fd6a-44cc-9827-77d35e267c66",
        name: "Adventure Time Vol. 8 (8)",
        price: 20.50,
        synopsis:
          "Or, at least it is if you're a citizen of Ooo! Finn and Jake wake up one morning to realize that they've forgotten how to cook!? It looks like it's an epidemic that is spreading around Ooo and when there is no food to be had...how soon will it be till the candy people realize they're made of candy? Princess Bubblegum assigns Finn and Jake to get to the bottom of this madness before the hunger drives the Kingdom crazy! First story arc by indie all-star Christopher Hastings (The Adventures of Dr. McNinja) and illustrated by the insanely talented Zachary Sterling (Adventure Time: Seeing Red), this is a brand new adventure that you won't want to miss!",
        image:
          "https://images-na.ssl-images-amazon.com/images/I/61ypzJZltiL._SX323_BO1,204,203,200_.jpg",
        inserted_at: now,
        updated_at: now
      },
      %{
        id: "e46c9a5c-fd6a-44cc-9827-77d35e267c66",
        name: "Star Trek: Picard: Countdown",
        price: 15.99,
        synopsis:
          "Witness the events leading to the new CBS All Access series Picard in this graphic novel where new characters are introduced and secrets will be revealed.

        Before he retired to his vineyard, Jean-Luc Picard was the most decorated admiral in Starfleet. Then one mission changed his life forever. The Countdown starts here! ",
        image: "https://images2.penguinrandomhouse.com/cover/9781684056941",
        inserted_at: now,
        updated_at: now
      },
      %{
        id: "f46c9a5c-fd6a-44cc-9827-77d35e267c66",
        name: "No-Signal Area",
        price: 22.95,
        synopsis:
          "Oleg and Nikola—hustlers, entrepreneurs, ambassadors of capitalism—have come to the town of N to build an obsolete turbine, never mind why. Enlisting the help of former engineer Sobotka, they reopen the old turbine factory, preaching the gospel of “self-organization” and bringing new life to the depressed post-communist town. But as the project spins out of control, Oleg and Nikola find themselves increasingly entangled with the locals, for whom this return to past prosperity brings bitter reckonings and reunions. At once a savage sendup of our current political moment and a rueful elegy for what might have been, this sprawling novel blends tragedy and comedy in its portrayal of ordinary people wondering where it all went wrong, and whether it could have gone any other way.",
        image: "https://images3.penguinrandomhouse.com/cover/9781609809706",
        inserted_at: now,
        updated_at: now
      },
      %{
        id: "f46c9a5c-fd6a-44cc-9827-77d35e267c65",
        name: "The Circle",
        price: 16.95,
        synopsis:
          "Now a Major Motion Picture starring Emma Watson and Tom Hanks. A bestselling dystopian novel that tackles surveillance, privacy and the frightening intrusions of technology in our lives.

        When Mae Holland is hired to work for the Circle, the world’s most powerful internet company, she feels she’s been given the opportunity of a lifetime. The Circle, run out of a sprawling California campus, links users’ personal emails, social media, banking, and purchasing with their universal operating system, resulting in one online identity and a new age of civility and transparency. As Mae tours the open-plan office spaces, the towering glass dining facilities, the cozy dorms for those who spend nights at work, she is thrilled with the company’s modernity and activity. There are parties that last through the night, there are famous musicians playing on the lawn, there are athletic activities and clubs and brunches, and even an aquarium of rare fish retrieved from the Marianas Trench by the CEO. Mae can’t believe her luck, her great fortune to work for the most influential company in the world—even as life beyond the campus grows distant, even as a strange encounter with a colleague leaves her shaken, even as her role at the Circle becomes increasingly public. What begins as the captivating story of one woman’s ambition and idealism soon becomes a heart-racing novel of suspense, raising questions about memory, history, privacy, democracy, and the limits of human knowledge.
        ",
        image: "https://images4.penguinrandomhouse.com/cover/9780345807298",
        inserted_at: now,
        updated_at: now
      },
      %{
        id: "f46c9a5c-fd6a-44cc-9827-77d35e267c64",
        name: "Gods of Jade and Shadow",
        price: 16.00,
        synopsis:
          "The Mayan god of death sends a young woman on a harrowing, life-changing journey in this dark, one-of-a-kind fairy tale inspired by Mexican folklore.

        “A spellbinding fairy tale rooted in Mexican mythology . . . Gods of Jade and Shadow is a magical fairy tale about identity, freedom, and love, and it’s like nothing you’ve read before.”—Bustle

        NEBULA AWARD FINALIST • NAMED ONE OF THE BEST BOOKS OF THE YEAR BY NPR • Tordotcom • The New York Public Library • BookRiot

        The Jazz Age is in full swing, but Casiopea Tun is too busy cleaning the floors of her wealthy grandfather’s house to listen to any fast tunes. Nevertheless, she dreams of a life far from her dusty small town in southern Mexico. A life she can call her own.

        Yet this new life seems as distant as the stars, until the day she finds a curious wooden box in her grandfather’s room. She opens it—and accidentally frees the spirit of the Mayan god of death, who requests her help in recovering his throne from his treacherous brother. Failure will mean Casiopea’s demise, but success could make her dreams come true.

        In the company of the strangely alluring god and armed with her wits, Casiopea begins an adventure that will take her on a cross-country odyssey from the jungles of Yucatán to the bright lights of Mexico City—and deep into the darkness of the Mayan underworld.

        Praise for Gods of Jade and Shadow

        “A dark, dazzling fairy tale . . . a whirlwind tour of a 1920s Mexico vivid with jazz, the memories of revolution, and gods, demons, and magic.”—NPR

        “Snappy dialog, stellar worldbuilding, lyrical prose, and a slow-burn romance make this a standout. . . . Purchase where Naomi Novik, Nnedi Okorafor, and N. K. Jemisin are popular.”—Library Journal (starred review)

        “A magical novel of duality, tradition, and change . . . Moreno-Garcia’s seamless blend of mythology and history provides a ripe setting for Casiopea’s stellar journey of self-discovery, which culminates in a dramatic denouement. Readers will gladly immerse themselves in Moreno-Garcia’s rich and complex tale of desperate hopes and complicated relationships.”—Publishers Weekly (starred review)
        ",
        image: "https://images3.penguinrandomhouse.com/cover/9780525620778",
        inserted_at: now,
        updated_at: now
      },
      %{
        id: "f46c9a5c-fd6a-44cc-9827-77d35e267c63",
        name: "The Thirteen Books of the Elements, Vol. 1",
        price: 80.78,
        synopsis:
          "Volume 1 of 3-volume set containing complete English text of all 13 books of the Elements plus critical apparatus analyzing each definition, postulate, and proposition. Covers textual and linguistic matters; mathematical analyses of Euclid's ideas; commentators; refutations, supports, extrapolations, reinterpretations, and historical notes. Vol. 1 includes Introduction, Books I and II of Elements, lines, angles, intersections, etc.",
        image:
          "https://images-na.ssl-images-amazon.com/images/I/51mqvaCYXLL._SX322_BO1,204,203,200_.jpg",
        inserted_at: now,
        updated_at: now
      }
    ])
  end

  def down do
    from(a in Books) |> Repo.delete_all()
  end
end
