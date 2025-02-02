import os
import pymysql

SECRET_KEY = 'A0Zr98j/3yX R~XHH!jmN]LWX/,?RT'
PWD = os.path.abspath(os.curdir)

DEBUG = True
#SQLALCHEMY_DATABASE_URI = 'sqlite:///{}/dbase.db'.format(PWD)

SQLALCHEMY_DATABASE_URI = 'mysql+pymysql://admin:Asgbd2023$@servidorweb.c4j3xvwqhb5e.us-east-1.rds.amazonaws.com/tienda'

SQLALCHEMY_TRACK_MODIFICATIONS = False
