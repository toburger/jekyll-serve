FROM bretfisher/jekyll-serve

EXPOSE 4000
EXPOSE 35729

# on every container start, check if Gemfile exists and warn if it's missing
ENTRYPOINT [ "docker-entrypoint.sh" ]

CMD [ "bundle", "exec", "jekyll", "serve", "--force_polling", "-H", "0.0.0.0", "-P", "4000", "--livereload", "--incremental", "--livereload-port", "35729" ]
