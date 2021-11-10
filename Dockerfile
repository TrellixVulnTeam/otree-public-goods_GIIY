FROM python:3

# set a directory for the app
WORKDIR /usr/src/app

# copy all the files to the container
COPY . .

# install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# define the port number the container should expose
EXPOSE 8000

# run the command
ENTRYPOINT ["python", "./settings.py"]
#CMD ["python", "./settings.py", "--host=0.0.0.0", "otree", "devserver"]