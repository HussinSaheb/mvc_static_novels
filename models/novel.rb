class Novel
  # initilise setters and getters for fields id title and post body
  attr_accessor(:id,:novel,:novel_img,:chapter_number,:chapter_title, :chapter_body)
  # create a connection to the db
  def self.open_connection
    conn = PG.connect(dbname: "novels")
  end

  def save
    conn = Post.open_connection

    if(!self.id)
      sql = "INSERT INTO novels (novel, novel_img, chapter_number,chapter_title,chapter_body) VALUES ('#{self.novel}','#{self.novel_img}','#{self.chapter_number}','#{self.chapter_title}','#{self.chapter_body}')"
      conn.exec(sql)
    else
      sql = "UPDATE post SET novel='#{self.novel}' novel_img='#{self.novel_img}', chapter_number='#{self.chapter_number}',chapter_title='#{self.chapter_title}',chapter_body='#{self.chapter_body}' WHERE id= #{self.id}"
      conn.exec(sql)
    end

  end

  def self.all
    # create a connection
    conn = self.open_connection
    # create a query to pass for the db
    sql = "SELECT id,novel,novel_img,chapter_number,chapter_title,chapter_body FROM novels ORDER BY id"
    # execute the query.
    results = conn.exec(sql)
    # loop over the results
    novels = results.map do |result|
      # hydrate it
      self.hydrate(result)
    end
    novels
  end

  def self.find(id)
    # create a new connection
  conn = self.open_connection
  # query it for one item
  sql = "Select * from novels WHERE id = #{id} LIMIT 1"
  # execute the query
  posts_results = conn.exec(sql)
  # hydrate the valuse
  post = self.hydrate(posts_results[0])
  end

  def self.destroy(id)

  end

  def self.hydrate(novel_data)
    novel = Novel.new
    novel.id = novel_data['id']
    novel.novel = novel_data['novel']
    novel.novel_img = novel_data['novel_img']
    novel.chapter_number = novel_data['chapter_number']
    novel.chapter_title = novel_data['chapter_title']
    novel.chapter_body = novel_data['chapter_body']
    novel
  end

end
