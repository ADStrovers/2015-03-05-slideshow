DATABASE.execute("CREATE TABLE IF NOT EXISTS slides (
                  id INTEGER PRIMARY KEY,
                  title TEXT CHECK(title != ''),
                  body TEXT,
                  background_url TEXT CHECK(background_url != ''),
                  order INTEGER UNIQUE")