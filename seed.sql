DROP TABLE IF EXISTS novels;

CREATE TABLE novels (
  id SERIAL PRIMARY KEY,
  novel TEXT,
  novel_img TEXT,
  chapter_number Int,
  chapter_title VARCHAR(255),
  chapter_body TEXT
);

INSERT INTO novels (novel,novel_img ,chapter_number,chapter_title,chapter_body) VALUES ('I shall seal the heavens','http://novelmania.com.br/wp-content/uploads/2016/12/Patriarch-Reliance.jpg' , 1, 'Scholar Meng Hao', 'insert the chapter here');
INSERT INTO novels (novel,novel_img ,chapter_number,chapter_title,chapter_body) VALUES ('I shall seal the heavens','http://novelmania.com.br/wp-content/uploads/2016/12/Patriarch-Reliance.jpg' , 2, 'The Reliance Sect', 'add chapter ');
INSERT INTO novels (novel,novel_img ,chapter_number,chapter_title,chapter_body) VALUES ('I shall seal the heavens','http://novelmania.com.br/wp-content/uploads/2016/12/Patriarch-Reliance.jpg' , 3, 'Promotion to outer Sect', 'add chapter ');
INSERT INTO novels (novel,novel_img ,chapter_number,chapter_title,chapter_body) VALUES ('I shall seal the heavens','http://novelmania.com.br/wp-content/uploads/2016/12/Patriarch-Reliance.jpg' , 4, 'Scholar Meng Hao', 'add chapter ');
INSERT INTO novels (novel,novel_img ,chapter_number,chapter_title,chapter_body) VALUES ('AWE','http://novelmania.com.br/wp-content/uploads/2016/12/Patriarch-Reliance.jpg' , 4, 'Scholar Meng Hao', 'add chapter ');
