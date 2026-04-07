import datetime
with open("D:\\manager_script\\log_day.txt", "a") as f:
    f.write(f"Run every day: {datetime.datetime.now()}\n")   