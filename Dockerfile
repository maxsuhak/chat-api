# Dockerfile
# Use ruby image to build our own image
FROM ruby:2.7

RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

RUN mkdir /chat-api

# We specify everything will happen within the /chat-api folder inside the container
WORKDIR /chat-api

# We copy these files from our current application to the /chat-api container
COPY Gemfile /chat-api/Gemfile
COPY Gemfile.lock /chat-api/Gemfile.lock

# We install all the dependencies
RUN bundle install

# We copy all the files from our current application to the /chat-api container
COPY . /chat-api

# Add a script to be executed every time the container starts.
COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

# We expose the port
EXPOSE 3000

# We skipping deprecations
ENV RUBYOPT="-W:no-deprecated"

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]
