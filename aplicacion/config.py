import os
import pymysql

SECRET_KEY = 'A0Zr98j/3yX R~XHH!jmN]LWX/,?RT'
PWD = os.path.abspath(os.curdir)

DEBUG = True
#SQLALCHEMY_DATABASE_URI = 'sqlite:///{}/dbase.db'.format(PWD)
#SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://root:Asgbd2023$@localhost/flask_db'
SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://admin:Asgbd2023$@mariadb.crjpvawmtsmq.us-east-1.rds.amazonaws.com/flask_db'

SQLALCHEMY_TRACK_MODIFICATIONS = False
