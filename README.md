Try KRoC within a Docker container.

### Build

    $ docker build -t embs/kroc .

### Run

    $ docker run -it embs/kroc

### Try KRoC

From the inside of the container:

    # cd ~/
    # occbuild --program hello.occ
    # ./hello

Which should output

> Hello, KRoC!

### Possible TODO List

- Polish Dockerfile
- Allow running code from host
- Publish image

### About KRoC

- https://www.cs.kent.ac.uk/projects/ofa/kroc/
- http://projects.cs.kent.ac.uk/projects/kroc/trac/
