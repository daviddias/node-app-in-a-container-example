# Select Base image
FROM dockerfile/nodejs

RUN git clone https://github.com/diasdavid/sample-app-for-docker-lisbon.git

#expose the port that the app is going to use
EXPOSE 8888
EXPOSE 1337

# set a variable env, like you normally would
RUN export PORT=8888

# What to start when container starts
ENTRYPOINT ["node", "sample-app-for-docker-lisbon/index.js"]
