# hoon-learning
This repository is a collection of `.hoon` files created while learning hoon, mostly from following the [Hoon School](https://urbit.org/docs/hoon/hoon-school/setup) course.

This is a repo is created by mounting my generators folder & commiting any custom files.

## Setup
Create a fakezod
```sh
urbit -F zod
```

Mount `/gen` to a folder call `generators` inside your ships pier and `|commit` new files to clay
```
|mount %/gen %generators
|commit %gen
```

## File structure
Most `.hoon` files here will be a 1:1 with the urbit docs however if I make syntax changes to make something more "readable" I'll likely explain why beneath the code. 
