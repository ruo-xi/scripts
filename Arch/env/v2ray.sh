yay -S v2ray
sudo ln -sf ~/Github/config/v2ray/v2ray.json /etc/v2ray/config.json
sudo 
cd Software/source
git clone git@github.com:ThomasZN/v2sub
cd v2sub
go mod download github.com/modood/table
go get github.com/ThomasZN/v2sub/ping
go build
sudo ln -sf ~/Software/source/v2sub/v2sub /bin
sudo ./v2sub -url https://sub.shuttle.mobi/app/osubscribe/3214/vJdfMoKqlY6E
cd ~
