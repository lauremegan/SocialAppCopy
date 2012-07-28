module VideosHelper
	 def sanitize_embed_code(video)
    sanitize video.embed_code, :tags => ['iframe']
  end
end
