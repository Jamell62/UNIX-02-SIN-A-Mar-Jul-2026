# ============================================================================
# Dockerfile for the course development environment
# ============================================================================
# Docker reads this file from top to bottom and builds an image layer by
# layer. Each instruction creates a new layer that can be cached and reused
# in future builds. This reduces build time when unchanged layers already
# exist (BHB Chapter 3).
#
# An image is a reusable template, while a container is a running instance
# created from that image.
# ============================================================================

# Base image used for the development environment.
# Kali Linux is selected because it already provides repositories and tools
# commonly used for Linux administration, Bash scripting, networking and
# security exercises (BHB Chapter 3).
FROM kalilinux/kali-rolling:latest

# Environment variables are global settings available to shells and
# applications. Bash can access them during execution (BHB Chapter 1).
#
# DEBIAN_FRONTEND=noninteractive prevents package installers from asking
# interactive questions during the image build process.
#
# LANG defines the default language and character encoding.
#
# LC_ALL forces all locale categories to use the same language settings.
#
# TERM=xterm-256color enables support for 256 terminal colors, improving
# readability in terminal applications such as Vim and Zsh.
#
#The backslash character continues the instruction on the next line.
ENV DEBIAN_FRONTEND=noninteractive \
    LANG=es_ES.UTF-8 \
    LC_ALL=es_ES.UTF-8 \
    TERM=xterm-256color

# Tshark normally asks whether non-root users should be allowed to capture
# packets. This answer is provided in advance so the build does not stop
# waiting for user input.
#
# The pipe operator sends the output of echo to debconf-set-selections,
# demonstrating shell redirection concepts discussed in BHB Chapter 1.
RUN echo "wireshark-common wireshark-common/install-setuid boolean false" \
    | debconf-set-selections

# Updates the package index and installs all software required for the
# course environment.
#
# apt-get update downloads the latest package information from repositories.
#
# apt-get install downloads and installs the requested packages.
#
# -y automatically answers yes to installation prompts.
#
# --no-install-recommends installs only required dependencies and avoids
# optional packages, reducing image size.
#
# Using one large RUN instruction creates fewer Docker layers, which helps
# keep the image smaller and improves build performance (BHB Chapter 3).
#
# The && operator executes the next command only if the previous one
# succeeds.
#
# The trailing backslash allows long commands to continue across multiple
# lines for readability.



