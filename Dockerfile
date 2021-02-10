FROM manjarolinux/base

# Thanks to https://gitlab.com/m3m3nto/manjaro-buildiso/-/blob/master/Dockerfile for the template

# update Databases
RUN pacman --quit --noprogressbar -Sy

# install development tools
RUN pacman --quiet --noprogressbar -S --noconfirm lsb-release
RUN pacman --quiet --noprogressbar -S --noconfirm base-devel

# install the manjaro tools to execute buildiso
RUN pacman --quiet --noprogressbar -S --noconfirm manjaro-tools

# cleanup
# https://unix.stackexchange.com/questions/52277/pacman-option-to-assume-yes-to-every-question#comment703795_52278
RUN yes | pacman --quiet --noprogressbar -Scc
