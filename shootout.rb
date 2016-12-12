require "digest"

mapping = {
  "video_3.mov" => "f0d70bc663de5afda6b1e95634115b8e81a63acbccb58a3530e5ad92fc0d25c2dc0b3d77c9009813c15d11453b17cea93980e8a8a3a64681a33f48706bbb56f1",
  "picard.jpeg" => "ff2876dd7528fcbe1985a83aed413a9e0e0aa9baadfedb78d58f7e1be74e3591815997af1d2c5b9e01c00317462546564d01caff113f0512a1547b71da04a5ee",
  "lorem_1.txt" => "2969d110708b17873e9e6ca7ee4aef8baabbec765df80af88b9d6ec11711810bf6ce460610fbe4694c5a7f5808c284e8cacee9d3e12bf9bc4f76ec1329e5e45d",
  "video_1.mov" => "f0d70bc663de5afda6b1e95634115b8e81a63acbccb58a3530e5ad92fc0d25c2dc0b3d77c9009813c15d11453b17cea93980e8a8a3a64681a33f48706bbb56f1",
  "urand.data" => "64f857fe404d2858140edfe74f1a45d93604e4884494b4a9d9c4851ba7dd11b1814020de8c2f169fd01d3dfcc57bd422e75794b5cc69236e75c42c84e7f7c911",
  "video_2.mov" => "f0d70bc663de5afda6b1e95634115b8e81a63acbccb58a3530e5ad92fc0d25c2dc0b3d77c9009813c15d11453b17cea93980e8a8a3a64681a33f48706bbb56f1",
}

mapping.each do |filename, digest|
  actual = Digest::SHA512.file(File.join(".", filename)).hexdigest
  if actual == digest
    puts "Awesome!: #{File.basename(filename)}"
  else
    puts "Boo!: #{File.basename(filename)}"
    puts ""
  end
end
