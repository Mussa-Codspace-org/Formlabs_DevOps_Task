FROM python:3.8.3
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
COPY ./helloapp /app 
COPY . run.sh /app/
COPY . test.sh /app/
COPY . build.sh /app/
COPY . Makefile /app/
EXPOSE 8080
CMD ["run.sh"]
ENTRYPOINT ["bash"]