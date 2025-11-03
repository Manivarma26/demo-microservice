# ✅ Approved base image from enterprise SecOps whitelist
FROM public.ecr.aws/ubuntu/ubuntu:22.04

WORKDIR /app

# Install dependencies
COPY app/requirements.txt .
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install -r requirements.txt

# Copy source code
COPY app/ .

# Run the app
CMD ["python3", "main.py"]
