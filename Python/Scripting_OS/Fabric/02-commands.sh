# get fabfile function list
fab -l

# Exec remote command
fab -H <your ip here> -u <your username of remote> -p <if using password, skip if you use key based authentication> <function name>
# Example - fab -H 192.168.10.3 -u devops remote_exec

# Another example
fab -H 192.168.10.3 -u devops web_setup:https://www.tooplate.com/zip-templates/2137_barista_cafe.zip,2137_barista_cafe
