FROM alpine:latest
EXPOSE 9050
RUN apk --update add tor runit tini
COPY service /etc/service/
ENTRYPOINT ["tini", "--"]
CMD ["runsvdir", "/etc/service"]
