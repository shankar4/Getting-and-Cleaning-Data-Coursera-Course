The column names had to be meaningful while not too long. I chose the following, based on 
typical use in Physics and Mathematics:   ‘a’ is used to imply body acceleration; ‘g’ 
implies gravitational acceleration; and ‘r’ refers to rotational or gyroscope data. 
Further, in statistics, it is common to use ’av’ to refer  to average and ‘sd’ to refer to 
standard deviation.  And x, y, and z refer to the three dimensions.  The subject number uses 
‘id’ (with the range of 1 to 30 for the 30 subjects who participated in the expreriment), 
while the activity codes of 1 to 6 are replaced with character strings that are meaningful 
as given below. The saved tidydata.txt file has 180 rows (one each for the combination of 
subject id (1 to 30) and activity (six of them), and 20 columns (id, act, and 18 others that 
are means of averages and standard deviations of underlying data, as desrcibed below). Note 
that columns 3-20 are the means of the subgroups of all individual 10299 sets that belong to 
that subgroup of id and act combination. 

Column names:
1.	id – subject id;
2.	act – type of activity – the original digital codes are mapped to the following strings: 1 – WALK, 2 – GO_UP, 3 – GO-DOWN, 4 – SIT, 5- STAND, and 6 – SUPINE;
3.	ax.av – average for the body acceleration signal in the x direction;
4.	ay.av – average for the body acceleration signal in the y direction;
5.	az.av – average for the body acceleration signal in the z direction;
6.	ax.sd – standard deviation for the body acceleration signal in the x direction;
7.	ay.sd -- standard deviation for the body acceleration signal in the y direction;
8.	az.sd -- standard deviation for the body acceleration signal in the z direction;
9.	gx.av – average for the gravitational acceleration signal in the x direction;
10.	gy.av – average for the gravitational acceleration signal in the y direction;
11.	gz.av – average for the gravitational acceleration signal in the z direction;
12.	gx.sd – standard deviation for the gravitational acceleration signal in the x direction;
13.	gy.sd -- standard deviation for the gravitational acceleration signal in the y direction;
14.	gz.sd -- standard deviation for the gravitational acceleration signal in the z direction;
15.	rx.av – average for the rotational acceleration signal in the x direction;
16.	ry.av – average for the rotational l acceleration signal in the y direction;
17.	rz.av – average for the rotational  acceleration signal in the z direction;
18.	rx.sd – standard deviation for the rotational l acceleration signal in the x direction;
19.	ry.sd -- standard deviation for the rotational  acceleration signal in the y direction;
20.	rz.sd -- standard deviation for the rotational acceleration signal in the z direction.
 
The ‘tidydata.txt’ provides the averages for measured values in columns 3-20, with the first two 
columns defining the subject id and type of actvity (a total of 180 combinations = 30 subjects x 6 
activity types).   Thus the file has 180 rows and 20 columns. 

