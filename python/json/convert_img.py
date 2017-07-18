#!/usr/bin/env python
# -*- coding: utf-8 -*-
# @Date    : 2017-07-12 11:43:18
# @Author  : Jian Jiao (jim1949@163.com)
# @Link    : http://github.com/jim1949
#This is the tool which can convert the picture of .pgm file to jpg and jpeg file.
# @Version : １


import rospy
import actionlib
from actionlib_msgs.msg import *
from geometry_msgs.msg import Pose, Point, Quaternion, Twist
from move_base_msgs.msg import MoveBaseAction, MoveBaseGoal
from tf.transformations import quaternion_from_euler
from visualization_msgs.msg import Marker
from math import radians, pi
from std_msgs.msg import Int32
from std_msgs.msg import String
from PIL import Image
import sys
import json
import yaml

def listener():
    
    rospy.init_node('talker', anonymous=True)
    rate = rospy.Rate(10) # 10hz
    sub = rospy.Subscriber("map_status", Int32, convert)
    rospy.spin()

def convert(data):
    arg="map_test1"
    if len(sys.argv)>1:
        arg=sys.argv[1]
    print(arg)
    im=Image.open(arg+".pgm")
    print("test") 
    im.save(arg+".jpg")
    im.save(arg+".jpeg")

    pic_size=im.size
    x_size=pic_size[0]
    y_size=pic_size[1]
    measurements=[{'x_size': x_size,  
                                    'y_size': y_size }]
    with open(arg+'.json','w') as fw:
        fw.write(json.dumps(measurements,sort_keys=True,indent=4, separators=(',', ': ')))



    
    


if __name__ == '__main__':
    try:
        listener()
    except rospy.ROSInterruptException:
        pass


{
    "createdAt" : "2017-03-25 15:57:55",
    "id" : "4fec88ea-3c2c-4640-a6fd-ac8a728e9ddd",
    "mapInfo" : 
    {
        "gridHeight" : 480,
        "gridWidth" : 736,
        "originX" : -30.400000000000002,
        "originY" : -11.200000000000001,
        "resolution" : 0.05000000074505806
    },
    "name" : "1",
    "obstacleFileName" : "7f903e82-acea-444a-975a-cf8addbda877.json",
    "pgmFileName" : "0eb1a3fa-56cc-45f6-a137-282fa9570650.pgm",
    "pngFileName" : "3f975d03-a803-4483-b62d-dc2341f13eb4.png",
    "slopeFileName" : "",
    "yamlFileName" : "8026bee3-dc73-4ade-a4e3-a6ad102db86a.yaml"
}
