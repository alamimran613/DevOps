user "imran" do
    action :create
end

group "clouddevops" do
    action :create
    members 'imran'
    append true
end

file '/myfile' do
    content 'Welcome To india'
    action :create
    end