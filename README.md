# otreeTest


## Setting up
Ensure github cli is installed

### Installation
Open up a command prompt<br><br>
Navigate to the location of where the code will be saved<br><br>
Enter the following:
```
github clone lucasreddinger/otree-public-goods
```
### Testing locally
Install otree using:
```
pip install -U otree
```
Once otree is installed, navigate to your oTree project folder, in this case "otreeTest"<br>
Enter the following:
```
otree devserver
```
Open your browser to the returned web address where your oTree server should be running

## Creating a container using Docker

### Install Docker
First, create an account on [docker hub](https://hub.docker.com/)

Next, make sure you have Docker installed - if not, they can be found below
[Windows](https://docs.docker.com/desktop/windows/install/)
[Mac](https://docs.docker.com/desktop/mac/install/)
[Linux](https://docs.docker.com/engine/install/ubuntu/)

### Setup Dockerfile
The docker file should already be included. If there is no docker file, repull this repo.

### Creating the image
While in the oTree project folder, enter the following on the command line
```
docker build -t yourusername/otreeTest .
```
Where yourusername is the username you used when creating an account on docker hub

You've now successfully created a docker image! You can test to see if it worked by entering:
```
docker images
```
 
## Running on Heroku
For a detailed guide with additional help, [click here](
https://github.com/oTree-org/otree-docs/blob/143a6ab7b61d54ec2be1a8bc09515d78e0b07c71/source/server/heroku.rst#heroku-setup-option-2)

### Using oTree Hub
Navigate to [oTree Hub](https://www.otreehub.com/) to use an interactive display to quickly set up a server


### Using the command line
Log in using the email address and password you used when
creating your Heroku account:


    $ heroku login

If the ``heroku`` command is not found,
close and reopen your command prompt.

Initialize your Git repo

Run this command from your project's root folder:


    git init

If you're on Windows, you may need to install Git from
[here](https://git-scm.com/download/win>)



    $ heroku create my-app-name

This will create your website ``my-app-name.herokuapp.com``.


Install Redis add-on

    heroku addons:create heroku-redis:premium-0

Push your code to Heroku

Commit your changes (note the dot in ``git add .``):


    git add .
    git commit -am "your commit message"

(If it's your first time with Git,
you may be prompted to run some git config commands before you can commit.)

Transfer (push) the local repository to Heroku:


    git push heroku master

Reset the oTree database on Heroku.


    heroku run "otree resetdb"

(You can run ``heroku run "otree resetdb --noinput"`` if you want to skip
the prompt.)

Open the site in your browser:


    heroku open
