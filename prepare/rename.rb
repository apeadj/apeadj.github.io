folder_path = __dir__ + "/"
Dir.glob(folder_path + "*").sort.each do |f|
  filename = File.basename(f, File.extname(f))
  File.rename(f, folder_path + filename + ".jpg")
end