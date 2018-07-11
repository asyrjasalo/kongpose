FROM pgbi/kong-dashboard

RUN apk update && apk upgrade && apk add bash

COPY wait-for-it.sh wait-for-it.sh
COPY entrypoint.sh entrypoint.sh

ENTRYPOINT ["./entrypoint.sh"]