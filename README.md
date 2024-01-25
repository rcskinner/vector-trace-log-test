# vector-trace-log-test
Testing the functionality of the Vector aggregator and verifying Trace ID / Log correlation remain uninterrupted. 

Main Directories:  

1. `datadog-config`: Contains the configuration files for the Datadog Agents and the custom checks required to read python log files 
2. `flask-app`: Lightweight flask app with a `/hello` endpoint used to demonstrate the following
    - Datadog APM Autoinstrumentation
    - TraceID / Log Correlation with Python applications
3. `vector-config`: Configuration file for a Vector Aggregator to process the log files prior to sending


### Set Up Instructions
1. Install git on Amazon Linux 
2. Git clone https://github.com/rcskinner/vector-trace-log-test.git
3. Install Datadog Agent - Amazon Linux 
4. Update the API key in /vector-trace-log-test/datadog.yaml