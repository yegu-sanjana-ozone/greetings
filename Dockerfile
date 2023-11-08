# Start from the official golang image
FROM golang:1.17

# Set the working directory inside the container
WORKDIR /go/src/app

# Copy the entire current directory into the container's working directory
COPY . .

# Build the Go app
RUN go build -o greetings

# Run the executable
CMD ["./greetings"]