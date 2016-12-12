Hullo

I am writing [a tool that checks files for corruption](https://github.com/nodanaonlyzuul/bagit-cr) by comparing their calculated checksums
vs ones in a manifest text file.

Calculating SHA512 checksums is costly for big files but I was **surprised to see Ruby outperforming Crystal**.

These are the files I'm using for Benchmarking - and I'd like other
people to confirm my results.

## Get up and running

1.  Clone this respository
1.  Ensure you have ruby 2.3.0 installed. Use RVM my friend.
1.  [Install the crystal-lang compiler](https://crystal-lang.org/docs/installation/index.html) on your machine.

## Running Benchmarks

Unzip the contents of [this file](https://dl.dropboxusercontent.com/u/92181/shootout.zip) into the cloned directory (~5GB zipped / ~10GB unzipped). They are the files used whose checksums
are calculated as a test bench.

### Running The Crystal App

1.  Build the crystal executable `crystal build --release shootout.cr`
1.  Run it (`time ./shootout`)

### Running The Ruby Script

`time ruby shootout.rb`

## Exemplary Results From My Machine

```
$ crystal build --release shootout.cr
$ time ./shootout
Awesome!: video_3.mov
Awesome!: picard.jpeg
Awesome!: lorem_1.txt
Awesome!: video_1.mov
Awesome!: urand.data
Awesome!: video_2.mov

real	0m42.383s
user	0m37.452s
sys	0m4.074s

$ time ruby shootout.rb
Awesome!: video_3.mov
Awesome!: picard.jpeg
Awesome!: lorem_1.txt
Awesome!: video_1.mov
Awesome!: urand.data
Awesome!: video_2.mov

real	0m25.769s
user	0m21.017s
sys	0m3.911s
```

## What's the performance like on your machine?

Add it as an issue in the git repo.
Please try to include:

1.  OS Version
1.  RAM and processor information
