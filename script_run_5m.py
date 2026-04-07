import datetime

with open("D:\\manager_script\\log_5p.txt", "a") as f:
    f.write(f"Run every 5 minutes: {datetime.datetime.now()}\n")