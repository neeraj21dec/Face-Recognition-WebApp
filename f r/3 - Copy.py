import cv2
import numpy as np
import sys
import MySQLdb

recognizer = cv2.createLBPHFaceRecognizer()
recognizer.load('trainner/trainner.yml')
cascadePath = "haarcascade_frontalface_default.xml"
faceCascade = cv2.CascadeClassifier(cascadePath);

db = MySQLdb.connect (host="127.0.0.1",user="root",passwd="12345",db="imagepro")
cursor=db.cursor()
cursor.execute("select upload from uploads")
data=cursor.fetchall()

list1=[]
for row in data:
	list1.append(row[0])
	
print(list1)
im2='test/'+list1[0]
print(im2)
i=0
for index in range(len(list1)):
	#cam = cv2.VideoCapture(0)
	font = cv2.cv.InitFont(cv2.cv.CV_FONT_HERSHEY_SIMPLEX, 1, 1, 0, 1, 1)
	while True:
		im_name='uploads/'+list1[i]
    		im =cv2.imread(im_name)
    		#ret, im =cam.read()
    		gray=cv2.cvtColor(im,cv2.COLOR_BGR2GRAY)
    		faces=faceCascade.detectMultiScale(gray, 1.2,5)
    		for(x,y,w,h) in faces:
        		cv2.rectangle(im,(x,y),(x+w,y+h),(225,0,0),2)
        		Id, conf = recognizer.predict(gray[y:y+h,x:x+w])
        		nbr_predicted, conf = recognizer.predict(gray[y:y+h,x:x+w])
        		cv2.rectangle(im,(x-50,y-50),(x+w+50,y+h+50),(225,0,0),2)
			
        		if(nbr_predicted==1):
				user_id=1
             			nbr_predicted='neeraj'
        		
        		cv2.cv.PutText(cv2.cv.fromarray(im),str(nbr_predicted)+"--id="+str(user_id)+"--"+str(conf), (x,y+h),font, 255) #Draw the text
    		#cv2.imshow('im',im)    
		im_out='result/'+list1[i]
    		cv2.imwrite(im_out,im);
		i=i+1 
sys.exit("Done !!")
cv2.waitKey(10)
cam.release()
cv2.destroyAllWindows()