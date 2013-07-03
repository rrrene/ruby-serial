require 'msgpack'
require 'ruby-serial/common'
require 'ruby-serial/serializer'
require 'ruby-serial/deserializer'

module RubySerial

  # Serialize an object into a String
  #
  # Parameters::
  # * *obj* (_Object_): Object to serialize
  # * *options* (<em>map<Symbol,Object></em>): Options [default = {}]
  #   * *:version* (_Fixnum_): The version to be used to encode
  # Result::
  # * _String_: Serialized object
  def self.dump(obj, options = {})
    return Serializer.new(obj, options).dump
  end

  # Deserialize an object from a String
  #
  # Parameters::
  # * *data* (_String_): Data to deserialize
  # Result::
  # * _Object_: Corresponding Ruby object
  def self.load(data)
    return Deserializer.new(data).load
  end

end