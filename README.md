# Django Restaurant App with Postgresql built with Docker and deployed to a Kubernetes Cluster.
This project is Django Restaurant App thats connected with Azure Postgresql Flexible Server. 
The applications image was built with Docker and pushed to Azure Container Registry (ACR) and deployed to a Kubernetes Cluster Service on the MS Azure Platform (AKS)

# How to Setup and run locally
1. Clone this project to your local machine using the the command
git clone https://github.com/arnaudnjita/ django-restaurant-app-on-aks.git

![image](https://github.com/arnaudnjita/django-restaurant-app-on-aks/assets/50627574/b20130aa-739d-47d6-b087-279052dee572)


3. Create a virtual environment
py -m venv .venv

![image](https://github.com/arnaudnjita/django-restaurant-app-on-aks/assets/50627574/f6627034-2351-46ba-ad49-06f71ba473ec)


5. Activate the virtual environment
source env/Scripts/activate

![image](https://github.com/arnaudnjita/django-restaurant-app-on-aks/assets/50627574/fb036c08-edb9-4074-88a9-1546274ede0b)


7. Generate a requirements.txt file if you don’t have one
Create a requirements.txt file to list out the dependencies for the Django Application. 
python -m pip freeze > requirements.txt

8. Install the requirements for the django app 
pip install -r requirements.txt

9. Generate a unique secret key using the command below and copy it
python -c 'import secrets; print(secrets.token_hex())'

10. Create a .env file and assign the secret key generated to the SECRET_KEY variable
(This is because you can’t run the django app without the secret key)

11. Apply migrations to reflect the app’s database models in the default sqlite database 
python manage.py migrate

12. Test the application
python manage.py runserver



