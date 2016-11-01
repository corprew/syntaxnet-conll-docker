FROM brianlow/syntaxnet-docker

COPY demo-emits-conll.sh /root/models/syntaxnet/demo-emits-conll.sh

CMD ["bash","/root/models/syntaxnet/demo-emits-conll.sh"]
