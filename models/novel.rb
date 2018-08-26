class Novel
  # initilise setters and getters for fields id title and post body
  attr_accessor(:id,:novel,:chapter_number,:chapter_title, :chapter_body)
  # create a connection to the db
  def self.open_connection
    conn = PG.connect(dbname: "novels")
  end

  # def save
  #   conn = Post.open_connection
  #
  #   if(!self.id)
  #     sql = "INSERT INTO post (title,post_body) VALUES ('#{self.title}','#{self.post_body}')"
  #     conn.exec(sql)
  #   else
  #     sql = "UPDATE post SET title='#{self.title}', post_body='#{self.post_body}' WHERE id= #{self.id}"
  #     conn.exec(sql)
  #   end
  #
  # end

  def self.all
    # create a connection
    conn = self.open_connection
    # create a query to pass for the db
    sql = "SELECT id,novel,chapter_number,chapter_title,chapter_body FROM novels ORDER BY id"
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

  end

  def self.destroy(id)

  end

  def self.hydrate(novel_data)
    novel = Novel.new
    novel.id = novel_data['id']
    novel.novel = novel_data['novel']
    novel.chapter_number = novel_data['chapter_number']
    novel.chapter_title = novel_data['chapter_title']
    novel.chapter_body = novel_data['chapter_body']

    novel
  end

end
