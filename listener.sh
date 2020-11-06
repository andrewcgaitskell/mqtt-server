mosquitto_sub -h <yourhost> -t <yourtopic> | xargs -I %output% ./handleMessage.sh %output%

