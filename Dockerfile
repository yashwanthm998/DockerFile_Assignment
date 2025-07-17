FROM alpine

WORKDIR /app

RUN apk update && apk upgrade && apk add openjdk17 bash coreutils

RUN adduser -D -h /app testuser && \
    for dir in /*; do \
      case "$dir" in \
        /app|/usr|/lib|/etc|/proc|/sys|/dev|/bin) ;; \
        *) chmod 700 "$dir";; \
      esac; \
    done

USER testuser

CMD ["sh", "-c", "java -version && tail -f /dev/null"]
