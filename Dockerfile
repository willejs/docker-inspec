FROM ruby:2.1

RUN gem install inspec -v 0.9.10 --no-ri --no-rdoc

CMD inspec exec
