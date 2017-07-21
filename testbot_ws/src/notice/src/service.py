#!/usr/bin/env python
# -*- coding: utf-8 -*-
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
import sys
import rospy

from notice.srv import *
def count_words(request):
        return WordCountResponse(len(request.words.split()))
rospy.init_node('service_server')
service = rospy.Service('word_count', WordCount, count_words)
rospy.spin()