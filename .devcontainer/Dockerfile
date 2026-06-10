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



