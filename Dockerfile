FROM alpine

RUN apk add --no-cache \
	bash \
	httpie \
	jq && \
	which bash && \
	which http && \
	which jq

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
COPY sample_push_event.json /sample_push_event.json

RUN chmod +x /entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
