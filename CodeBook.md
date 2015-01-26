Data Dictionary

================================================
Study Design
================================================

This project works with data from a data set that was created from experiments involving 30 human volunteers performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.  The initial data set was sub-setted by extracting only columns that contained subject, activity, std() or mean().  

For each of the variables below, the mean has been calculated for each activity and each subject.  If not stated that the origin of the data is the gyroscope, then the accelerometer can be assumed as the source.

================================================
Code Book
================================================

timebodyaccelerationmeanx	Mean of the mean of the time domain body acceleration signal along the X axis
timebodyaccelerationmeany	Mean of the mean of the time domain body acceleration signal along the Y axis
timebodyaccelerationmeanz	Mean of the mean of the time domain body acceleration signal along the Z axis
timebodyaccelerationstdx	Mean of the standard deviation of the time domain body acceleration signal along 	the X axis
timebodyaccelerationstdy	Mean of the standard deviation of the time domain body acceleration signal along 	the Y axis
timebodyaccelerationstdz
	Mean of the standard deviation of the time domain body acceleration signal along 	the Z axistimegravityaccelerationmeanx	Mean of the mean of the time domain gravity acceleration signal 			along the X axis
timegravityaccelerationmeany
	Mean of the mean of the time domain gravity acceleration signal 			along the Y axistimegravityaccelerationmeanz
	Mean of the mean of the time domain gravity acceleration signal 			along the Z axistimegravityaccelerationstdx
	Mean of the standard deviation of the time domain gravity acceleration signal 		along the X axistimegravityaccelerationstdy
	Mean of the standard deviation of the time domain gravity acceleration signal 		along the Y axistimegravityaccelerationstdz
	Mean of the standard deviation of the time domain gravity acceleration signal 		along the Z axistimebodyaccelerationjerkmeanx
	Mean of the mean of the time domain body acceleration jerk signal 			along the X axistimebodyaccelerationjerkmeany
	Mean of the mean of the time domain body acceleration jerk signal 			along the Y axistimebodyaccelerationjerkmeanz
	Mean of the mean of the time domain body acceleration jerk signal 			along the Z axistimebodyaccelerationjerkstdx
	Mean of the standard deviation of the time domain body acceleration jerk signal 	along the X axis	timebodyaccelerationjerkstdy
	Mean of the standard deviation of the time domain body acceleration jerk signal 	along the Y axistimebodyaccelerationjerkstdz
	Mean of the standard deviation of the time domain body acceleration jerk signal 	along the Z axistimebodygyroscopemeanx
	Mean of the mean of the time domain body acceleration signal along the X axis 		coming from the gyroscopetimebodygyroscopemeany
	Mean of the mean of the time domain body acceleration signal along the Y axis 		coming from the gyroscopetimebodygyroscopemeanz
	Mean of the mean of the time domain body acceleration signal along the Z axis 		coming from the gyroscopetimebodygyroscopestdx
	Mean of the standard deviation of the time domain body acceleration signal along 	the X axis coming from the gyroscopetimebodygyroscopestdy
	Mean of the standard deviation of the time domain body acceleration signal along 	the Y axis coming from the gyroscopetimebodygyroscopestdz
	Mean of the standard deviation of the time domain body acceleration signal along 	the Z axis coming from the gyroscopetimebodygyroscopejerkmeanx
	Mean of the mean of the time domain body acceleration jerk signal along 		the X axis coming from the gyroscopetimebodygyroscopejerkmeany
	Mean of the mean of the time domain body acceleration jerk signal along 		the Y axis coming from the gyroscopetimebodygyroscopejerkmeanz
	Mean of the mean of the time domain body acceleration jerk signal along 		the Z axis coming from the gyroscopetimebodygyroscopejerkstdx
	Mean of the standard deviation of the time domain body acceleration jerk signal 	along the X axis coming from the gyroscopetimebodygyroscopejerkstdy
	Mean of the standard deviation of the time domain body acceleration jerk signal 	along the Y axis coming from the gyroscopetimebodygyroscopejerkstdz
	Mean of the standard deviation of the time domain body acceleration jerk signal 	along the Z axis coming from the gyroscopetimebodyaccelerationmagnitudemean
	Mean of the magnitude of the mean of the time domain body acceleration signal 		along the X, Y and Z Axis
timebodyaccelerationmagnitudestd
	Mean of the magnitude of the standard deviation of the time domain body 		acceleration signal along the X, Y and Z Axistimegravityaccelerationmagnitudemean
	Mean of the magnitude of the mean of the time domain gravity acceleration signal 	along the X, Y and Z Axistimegravityaccelerationmagnitudestd
	Mean of the magnitude of the standard deviation of the time domain gravity 		acceleration signal along the X, Y and Z Axistimebodyaccelerationjerkmagnitudemean
	Mean of the magnitude of the mean of the time domain body acceleration jerk signal 	along the X, Y and Z Axistimebodyaccelerationjerkmagnitudestd
	Mean of the magnitude of the standard deviation of the time domain body 		acceleration signal along the X, Y and Z Axistimebodygyroscopemagnitudemean
	Mean of the magnitude of the mean of the time domain body acceleration signal 	along the X, Y and Z Axis coming from the gyroscopetimebodygyroscopemagnitudestd
	Mean of the magnitude of the standard deviation of the time domain body 		acceleration signal along the X, Y and Z Axis coming from the gyroscopetimebodygyroscopejerkmagnitudemean
	Mean of the magnitude of the mean of the time domain body 				acceleration jerk signal along the X, Y and Z Axis coming from the gyroscopetimebodygyroscopejerkmagnitudestd
	Mean of the magnitude of the standard deviation of the time domain body 		acceleration jerk signal along the X, Y and Z Axis coming from the gyroscopefrequencybodyaccelerationmeanx
	Mean of the mean of the frequency domain body acceleration signal along the X axisfrequencybodyaccelerationmeanyfrequencybodyaccelerationmeanzfrequencybodyaccelerationstdxfrequencybodyaccelerationstdyfrequencybodyaccelerationstdzfrequencybodyaccelerationjerkmeanxfrequencybodyaccelerationjerkmeanyfrequencybodyaccelerationjerkmeanzfrequencybodyaccelerationjerkstdxfrequencybodyaccelerationjerkstdyfrequencybodyaccelerationjerkstdzfrequencybodygyroscopemeanxfrequencybodygyroscopemeanyfrequencybodygyroscopemeanzfrequencybodygyroscopestdxfrequencybodygyroscopestdyfrequencybodygyroscopestdzfrequencybodyaccelerationmagnitudemeanfrequencybodyaccelerationmagnitudestdfrequencybodyaccelerationjerkmagnitudemeanfrequencybodyaccelerationjerkmagnitudestdfrequencybodygyroscopemagnitudemeanfrequencybodygyroscopemagnitudestdfrequencybodygyroscopejerkmagnitudemeanfrequencybodygyroscopejerkmagnitudestdsubject	A number from 1 to 30 representing one of the 30 volunteers who are within the 19-48 years age bracket.  70% of the volunteers were randomly selected for the training set and 30% for the test set
activity	 A string representing the activity the subject was performing while the measurement was recorded.  Possible values are:
		laying
		sitting
		standing
		walking
		walkingdownstairs
		walkingupstairs