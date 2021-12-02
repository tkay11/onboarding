FROM ruby:3.0.2

ADD . /app
WORKDIR /app

RUN bundle install --jobs 4 && bin/rake assets:precompile NODE_ENV=production RAILS_ENV=production

EXPOSE 8080

CMD ["bash", "/app/scripts/run_puma.sh"]
