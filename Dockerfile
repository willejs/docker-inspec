FROM ruby:2.1

RUN gem install inspec -v 0.9.10 --no-ri --no-rdoc

RUN mkdir /home/inspec

WORKDIR /home/inspec

CMD inspec exec ./
