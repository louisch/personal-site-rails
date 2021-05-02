FROM ruby:latest
WORKDIR /usr/src/personal-site-rails
COPY . ./
RUN bundle install
RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && \
  apt-get install -y nodejs && \
  npm install -g yarn
RUN yarn install
CMD ["bin/rails", "server", "-b", "0.0.0.0"]
