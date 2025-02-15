FROM python:3.8.3
WORKDIR /app
COPY requirements.txt .
RUN pip install -r requirements.txt
ADD . /app/
EXPOSE 8080
CMD ["run.sh"]
ENTRYPOINT ["bash"]