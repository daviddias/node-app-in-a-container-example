#
# Select Base image
#
FROM dockerfile/nodejs

#
# Bundle our app source with the container, we could also be fetching the 
# code from a git repo, or really anything else.
#
ADD . /src

#
# Install app dependencies - Got to install them all! :)
#
RUN cd /src; npm install

# 
# Which ports you want to be exposing from this container
#
EXPOSE  8080




#
# Specify the runtime (node) and the source to be run
#
CMD ["node", "/src/index.js"]


#
# Note: You can do pretty much anything you would do in a command line, using 
# the `RUN` prefix 
#
