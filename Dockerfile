# Select Base image
FROM dockerfile/nodejs

# Bundle app source
ADD . /src
# Install app dependencies
#RUN cd /src; npm install

EXPOSE  8888
CMD ["node", "/src/index.js"]


