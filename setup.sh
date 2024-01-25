# Move the Datadog agent config over to the appropriate spot
cp ./vector-trace-log-test/datadog-config/datadog.yaml /etc/datadog-agent/datadog.yaml

# Create the /etc/datadog-agent/conf.d/python.d/conf.yaml file
mkdir /etc/datadog-agent/conf.d/python.d
cp ./vector-trace-log-test/datadog-config/conf.d/python.d/conf.yaml /etc/datadog-agent/conf.d/python.d

#Shotgun change permissions for the folder
chmod 777 /home/
chmod 777 /home/ec2-user
systemctl restart datadog-agent

# Setup Flask Environment
export FLASK_APP=/home/ec2-user/vector-trace-log-test/flask-app/hello.py