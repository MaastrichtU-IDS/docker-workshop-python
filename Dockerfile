FROM python:3.7

RUN pip install --upgrade pip

# Install from source code
COPY . .
RUN pip install -e .

ENTRYPOINT [ "my-package" ]
# Default arguments if nothing provided:
CMD [ "hello-word Docker" ]
