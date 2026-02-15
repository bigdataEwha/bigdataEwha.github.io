FROM ruby:2.7

WORKDIR /srv/jekyll

# (중요) rubygems 너무 최신으로 올리지 말고, bundler만 적당히 고정
RUN gem install bundler -v 2.4.22

COPY Gemfile Gemfile.lock ./
RUN bundle _2.4.22_ install

COPY . .

EXPOSE 4000
CMD ["bundle", "_2.4.22_", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload"]
