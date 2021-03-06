# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from notice/system_health_status.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class system_health_status(genpy.Message):
  _md5sum = "597f5922ff244034653f9d597018a242"
  _type = "notice/system_health_status"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """bool laserConnection
int16[8] SonarConnection
bool MCUConnection"""
  __slots__ = ['laserConnection','SonarConnection','MCUConnection']
  _slot_types = ['bool','int16[8]','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       laserConnection,SonarConnection,MCUConnection

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(system_health_status, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.laserConnection is None:
        self.laserConnection = False
      if self.SonarConnection is None:
        self.SonarConnection = [0,0,0,0,0,0,0,0]
      if self.MCUConnection is None:
        self.MCUConnection = False
    else:
      self.laserConnection = False
      self.SonarConnection = [0,0,0,0,0,0,0,0]
      self.MCUConnection = False

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      buff.write(_struct_B.pack(self.laserConnection))
      buff.write(_struct_8h.pack(*self.SonarConnection))
      buff.write(_struct_B.pack(self.MCUConnection))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 1
      (self.laserConnection,) = _struct_B.unpack(str[start:end])
      self.laserConnection = bool(self.laserConnection)
      start = end
      end += 16
      self.SonarConnection = _struct_8h.unpack(str[start:end])
      start = end
      end += 1
      (self.MCUConnection,) = _struct_B.unpack(str[start:end])
      self.MCUConnection = bool(self.MCUConnection)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(_struct_B.pack(self.laserConnection))
      buff.write(self.SonarConnection.tostring())
      buff.write(_struct_B.pack(self.MCUConnection))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 1
      (self.laserConnection,) = _struct_B.unpack(str[start:end])
      self.laserConnection = bool(self.laserConnection)
      start = end
      end += 16
      self.SonarConnection = numpy.frombuffer(str[start:end], dtype=numpy.int16, count=8)
      start = end
      end += 1
      (self.MCUConnection,) = _struct_B.unpack(str[start:end])
      self.MCUConnection = bool(self.MCUConnection)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_8h = struct.Struct("<8h")
_struct_B = struct.Struct("<B")
