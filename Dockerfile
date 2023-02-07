FROM python
EXPOSE 5000
RUN mkdir uploaded_files \
 && chown -R :root /uploaded_files \
 && chmod -R 0775 /uploaded_files
WORKDIR /
COPY . .
RUN pip install psycopg2
RUN pip install flask
RUN pip install flask-cors
RUN pip install sqlalchemy
RUN pip install pandas
CMD ["python", "service_api.py"]
