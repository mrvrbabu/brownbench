# Start with python alpine image 
FROM python:3.8-alpine

#RUN apk add python3 && apk add py3-pip && pip3 install Flask

# Install python flask 
RUN pip3 install Flask

# Create a app directory
RUN mkdir /app 

# Copy the main.py file to /app directory 
COPY app/main.py /app/main.py

# Expose port 5000 
EXPOSE 5000

# Configure the container to run in an executed manner 
ENTRYPOINT [ "python3" ]

# Run main.py
CMD ["/app/main.py"]
