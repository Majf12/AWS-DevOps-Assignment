# ec2 setup + Nginx Installation & command used

## Project Overview
This project demonstrates how to launch an AWS EC2 instance, connect using SSH, install Nginx, deploy a simple HTML page, and verify that the web server is running successfully.

---

## Step 1: Launch an EC2 Instance

1. Log in to AWS Management Console.
2. Open the EC2 Dashboard.
3. Click **Launch Instance**.
4. Configure the instance:
   - AMI: Ubuntu Server
   - Instance Type: t3.micro (Free Tier)
   - Create or select an existing Key Pair
   - Allow HTTP (80) and SSH (22) in the Security Group.
5. Launch the instance.

---

## Step 2: Connect to EC2 Using SSH

```bash
ssh -i your-key.pem ubuntu@<EC2-Public-IP>
```

---

## Step 3: Update the System

```bash
sudo apt update
sudo apt upgrade -y
```

---

## Step 4: Install Nginx

```bash
sudo apt install nginx -y
```

---

## Step 5: Start Nginx

```bash
sudo systemctl start nginx
```

---

## Step 7: Check Nginx Status

```bash
sudo systemctl status nginx
```

Check whether Nginx is active:

```bash
sudo systemctl is-active nginx
```

---

## Step 8: Restart Nginx

```bash
sudo systemctl restart nginx
```

---

## Step 9: Verify Nginx Configuration

```bash
sudo nginx -t
```

---

## Step 10: Deploy HTML File

Go to the Nginx web directory:

```bash
cd /var/www/html
```

Create or edit the HTML file:

```bash
sudo nano index.html
```

Example:

```html
<!DOCTYPE html>
<html>
<body>
<h1>Welcome</h1>
<h2>Name : Majfa.A</h2>
<h2>College : R.A College For Women Thiruvarur</h2>
<h2>Branch : B.Sc Information Technology</h2>
<h2>Email : majfaazees97@gmail.com</h2>
<h2>Date : 09 July 2026</h2></body>
</html>
```

Save the file:
- ctrl+o
- ctrl+s
- ctrl+x

---

## Step 11: Verify the Website

Open the browser:

```
http://http://13.49.49.254/
```

The HTML page should be displayed successfully.

---

# Useful Commands

### Check Disk Usage

```bash
df -h
```

### Check Memory Usage

```bash
free -h
```

### Check Running Processes

```bash
ps -ef
```

### Live Process Monitor

```bash
top
```

Exit from top:

Press **q**

---

## Nginx Commands

Start Nginx

```bash
sudo systemctl start nginx
```

Stop Nginx

```bash
sudo systemctl stop nginx
```

Restart Nginx

```bash
sudo systemctl restart nginx
```

Check Status

```bash
sudo systemctl status nginx
```

Check Configuration

```bash
sudo nginx -t
```

---

## Technologies Used

- AWS EC2
- Ubuntu Linux
- Nginx
- SSH
- HTML

---

## Outcome

Successfully launched an AWS EC2 instance, connected using SSH, installed and configured Nginx, deployed a simple HTML page, and verified that the web server was running successfully.
