dnf install nginx -y 
systemctl enable nginx

rm -rf /usr/share/nginx/html/*

#curl -o /tmp/frontend.zip https://expense-artifacts.s3.amazonaws.com/expense-frontend-v2.zip 
curl -o /tmp/frontend.zip https://roboshop-artifacts.s3.amazonaws.com/frontend.zip 



cd /usr/share/nginx/html 
unzip /tmp/frontend.zip

systemctl restart nginx
