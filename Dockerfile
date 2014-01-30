# Select Base image
FROM dockerfile/nodejs

RUN git clone https://github.com/diasdavid/sample-app-for-docker-lisbon.git

#expose the port that the app is going to use
# private and public mapping
EXPOSE 80:8888

# private only
# EXPOSE 80

# set a variable env, like you normally would
RUN export PORT=80

# What to start when container starts
ENTRYPOINT ["node", "sample-app-for-docker-lisbon/index.js"]
