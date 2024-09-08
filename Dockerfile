FROM ruby:3.1.3

WORKDIR /usr/src/app

RUN gem install jekyll bundler

COPY ./_base/Gemfile ./

RUN bundle install

COPY ./_base .

COPY images ./assets/images

COPY ./_posts ./_posts

EXPOSE 4000

CMD ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]
