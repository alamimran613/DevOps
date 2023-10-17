file '/basicinfo' do
    content "This is to get Attributes
    HOSTNAME: #{node['hostname']}
    IPADDRESS: #{node['ipaddress']}
    CPU: #{node['cpu']['0']['mhz']}
    MEMORY: #{node['memory']['total']}"
    owner 'root'
    group 'root'
   action :create
   end