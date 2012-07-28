atom_feed do |feed|
  feed.title("Awesome Videos")
  feed.updated(@videos.first.created_at)
              
  @videos.each do |video|
    feed.entry(video) do |entry|
      entry.title(video.title)
      entry.content(sanitize_embed_code(video), :type => 'html')
      
      entry.author do |author|
        author.name("The Awesome Video Group")
      end
    end
  end
end
