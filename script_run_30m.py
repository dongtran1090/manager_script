import datetime
with open("D:\\manager_script\\log_30m.txt", "a") as f:
    
    f.write(f"Run every 30 minutes: {datetime.datetime.now()}\n")   
