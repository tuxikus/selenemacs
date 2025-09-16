FROM alpine:3.22

COPY . /root/.emacs.d

RUN apk update && apk add emacs-nox
CMD ["emacs", "-nw"]