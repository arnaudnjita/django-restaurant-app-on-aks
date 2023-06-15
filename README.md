# Django Restaurant App with Postgresql built with Docker and deployed to a Kubernetes Cluster.
This project is Django Restaurant App thats connected with Azure Postgresql Flexible Server. 
The applications image was built with Docker and pushed to Azure Container Registry (ACR) and deployed to a Kubernetes Cluster Service on the MS Azure Platform (AKS)

# How to Setup and run locally
1. Clone this project to your local machine using the the command
git clone https://github.com/arnaudnjita/ django-restaurant-app-on-aks.git

![image](https://github.com/arnaudnjita/django-restaurant-app-on-aks/assets/50627574/b20130aa-739d-47d6-b087-279052dee572)


2. Create a virtual environment
py -m venv .venv

![image](https://github.com/arnaudnjita/django-restaurant-app-on-aks/assets/50627574/f6627034-2351-46ba-ad49-06f71ba473ec)


3. Activate the virtual environment
source env/Scripts/activate

![image](https://github.com/arnaudnjita/django-restaurant-app-on-aks/assets/50627574/fb036c08-edb9-4074-88a9-1546274ede0b)


4. Generate a requirements.txt file if you don’t have one
Create a requirements.txt file to list out the dependencies for the Django Application. 
python -m pip freeze > requirements.txt

And add the following dependencies in the file
Django==4.2.1
psycopg2-binary==2.9.6
python-dotenv==1.0.0
whitenoise==6.4.0

![image](https://github.com/arnaudnjita/django-restaurant-app-on-aks/assets/50627574/d2e2504c-21d9-4c57-a5e0-eb73aacdb194)


5. Install the requirements for the django app 
pip install -r requirements.txt

![image](https://github.com/arnaudnjita/django-restaurant-app-on-aks/assets/50627574/f5136866-93f8-4c6b-b046-28bae662ff15)


6. Generate a unique secret key using the command below and copy it
python -c 'import secrets; print(secrets.token_hex())'

![image](https://github.com/arnaudnjita/django-restaurant-app-on-aks/assets/50627574/bfc8f9ce-cc1a-4378-a7d3-3ddd3b81ac99)


7. Create a .env file and assign the secret key generated to the SECRET_KEY variable
(This is because you can’t run the django app without the secret key)

![image](https://github.com/arnaudnjita/django-restaurant-app-on-aks/assets/50627574/3259857c-175d-4f12-8762-73b94ba8b610)


8. Apply migrations to reflect the app’s database models in the default sqlite database 
python manage.py migrate

![image](https://github.com/arnaudnjita/django-restaurant-app-on-aks/assets/50627574/2b9ce950-cec2-4bc5-8fa3-c95e19fcab95)


9. Run the application server
python manage.py runserver

![image](https://github.com/arnaudnjita/django-restaurant-app-on-aks/assets/50627574/a7fd2487-76c4-4987-bf67-640813ebf187)

10. Access the app in the browser via the development server






