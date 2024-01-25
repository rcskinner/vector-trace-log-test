from flask import Flask
import logging 

app = Flask(__name__)

# Configure Logging
FORMAT = ('%(asctime)s %(levelname)s [%(name)s] [%(filename)s:%(lineno)d] '
          '[dd.service=%(dd.service)s dd.env=%(dd.env)s dd.version=%(dd.version)s dd.trace_id=%(dd.trace_id)s dd.span_id=%(dd.span_id)s] '
          '- %(message)s')
logging.basicConfig(filename="./example.log", 
                    encoding='utf-8', 
                    level=logging.INFO, 
                    format=FORMAT)

@app.route('/hello')
def hello_world():
    logging.warning("Hello, World! Testing log correlation")
    return 'Hello, World!'
