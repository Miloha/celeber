FROM golang:1.10.1

# Move current project to a valid go path
WORKDIR /go/src/github.com/Miloha/celeber/
COPY . ./


# Install Revel CLI
RUN go get github.com/revel/cmd/revel

# Install project dependencies
#RUN go get gopkg.in/mgo.v2


# Run app in production mode
EXPOSE 9000
ENTRYPOINT revel run github.com/Miloha/revelmg2
