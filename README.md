Read loag file
tail -F 50  ./log/test.log
tail -f log/development.log
heroku logs -t -a gotruckergo-prod
heroku run console -a gotruckergo-prod

heroku run rake db:seed -a gotruckergo-prod

!pbcopy

coyotego.com

