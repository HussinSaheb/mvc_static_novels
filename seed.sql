DROP TABLE IF EXISTS novels;

CREATE TABLE novels (

  id SERIAL PRIMARY KEY,
  novel TEXT,
  chapter_number Int,
  chapter_title VARCHAR(255),
  chapter_body TEXT

);

INSERT INTO novels (novel ,chapter_number,chapter_title,chapter_body) VALUES ('I shall seal the heavens' , 1, 'Scholar Meng Hao', '');
INSERT INTO novels (novel ,chapter_number,chapter_title,chapter_body) VALUES ('I shall seal the heavens' , 2, 'The Reliance Sect', 'add chapter ');
INSERT INTO novels (novel ,chapter_number,chapter_title,chapter_body) VALUES ('I shall seal the heavens' , 3, 'Promotion to outer Sect', 'add chapter ');
INSERT INTO novels (novel ,chapter_number,chapter_title,chapter_body) VALUES ('I shall seal the heavens' , 4, 'Scholar Meng Hao', 'add chapter ');
