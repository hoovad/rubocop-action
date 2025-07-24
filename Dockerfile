FROM ruby:latest

LABEL com.github.actions.name="Rubocop"
LABEL com.github.actions.description="Lint your Ruby code"
LABEL com.github.actions.icon="code"
LABEL com.github.actions.color="red"

LABEL maintainer="Alberto Gimeno <gimenete@gmail.com>"
LABEL maintainer="hoovad <hoovad@proton.me>"

COPY lib /action/lib
ENTRYPOINT ["/action/lib/entrypoint.sh"]
