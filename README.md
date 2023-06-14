# Django Restaurant App with Postgresql built with Docker and deployed to a Kubernetes Cluster.
This project is Django Restaurant App thats connected with Azure Postgresql Flexible Server. 
The applications image was built with Docker and pushed to Azure Container Registry (ACR) and deployed to a Kubernetes Cluster Service on the MS Azure Platform (AKS)

# How to Setup and run locally
1. Get the django application from the github repository and clone it on your local machine using the the command
git clone https://github.com/arnaudnjita/ django-restaurant-app-on-aks.git

2. Create a virtual environment
py -m venv .venv

3. Activate the virtual environment
source env/Scripts/activate

4. Generate a requirements.txt file if you don’t have one
Create a requirements.txt file to list out the dependencies for the Django Application. 
python -m pip freeze > requirements.txt

5. Install the requirements for the django app 
pip install -r requirements.txt

6. Generate a unique secret key using the command below and copy it
python -c 'import secrets; print(secrets.token_hex())'

7. Create a .env file and assign the secret key generated to the SECRET_KEY variable
(This is because you can’t run the django app without the secret key)

8. Apply migrations to reflect the app’s database models in the default sqlite database 
python manage.py migrate

9. Test the application
python manage.py runserver

