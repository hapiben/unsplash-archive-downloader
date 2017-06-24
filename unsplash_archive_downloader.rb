class UnsplashArchiveDownloader
  def call
    # Adjust the archive loop
    (1..163).each do |archive_num|
      system("wget https://download.unsplash.com/zip-archives/#{archive_num}-archive.zip")
    end
  end
end

UnsplashArchiveDownloader.new.call