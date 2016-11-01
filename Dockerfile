FROM brianlow/syntaxnet-docker

MAINTAINER Corprew Reed <github-public-incoming@corprew.org>

COPY demo-emits-conll.sh /root/models/syntaxnet/demo-emits-conll.sh

CMD ["bash","/root/models/syntaxnet/demo-emits-conll.sh"]
