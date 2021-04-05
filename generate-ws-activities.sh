printf "\n\nStarting...\n\n\n" && \


curl -s http://localhost/demo-app/test.jsp?do=AM > /dev/null  && \
printf "\n\nTriggered AM event\n\n\n" && \


curl -s http://localhost/demo-app/test.jsp?do=WR > /dev/null && \
printf "\n\nTriggered WR event\n\n\n" && \


curl -s http://localhost/demo-app/test.jsp?do=IM > /dev/null && \
printf "\n\nTriggered IM event\n\n\n" && \


curl -s http://localhost/demo-app/test.jsp?do=LI > /dev/null && \
printf "\n\nTriggered LI event\n\n\n" && \


curl -s http://localhost/demo-app/test.jsp?do=FW /dev/null && \
printf "\n\nTriggered FW event\n\n\n" && \


curl http://localhost/demo-app/test.jsp?do=IP && \
printf "\n\n\nTriggered IPS detection\n\n\n" && \


# Schedules a DSA heartbeat to send logs immediatly
sudo bash "/opt/ds_agent/dsa_control" -m
printf "\n\nSent logs to C1WS\n\n\n\n"

printf "\n\nDone.\n\n"