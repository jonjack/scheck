#!/bin/sh
  
#  Prerequisites:-
#  ---------------
#
#  1. First create a directory to hold the project 
#  2. Copy this script into the new directory 
#  3. Modify any VARIABLES as necessay
#
#
#  To execute on Mac:-
#  -------------------
#
#  sh createproj.sh       // or
#  bash createproj.sh

# VARIABLES
# ---------

PROJECT="My Project"
VERSION="0.1-SNAPSHOT"
SCALA_VERSION="2.12.2"


# Create source directories
mkdir -p src/main/scala
mkdir -p src/test/scala


# Add a sample source file
echo 'object Hi { def main(args: Array[String]) = println("Hi!") }' > src/main/scala/hello.scala


# Create Build definition
echo 'name := "'$PROJECT'"\n\nversion := "'$VERSION'"\n\nscalaVersion := "'$SCALA_VERSION'"' >> build.sbt


# Create plugins.sbt
mkdir -p project
echo '// Declare plugins below\n' >> project/plugins.sbt


# SCALA IDE SUPPORT (Uncomment following lines if you want to generate Eclipse project files)
echo '// Eclipse IDE' >> project/plugins.sbt
echo 'addSbtPlugin("com.typesafe.sbteclipse" % "sbteclipse-plugin" % "5.1.0")' >> project/plugins.sbt


# Generate Eclipse project files
sbt eclipse