package mx.utils
{
   import mx.core.mx_internal;
   import flash.utils.Dictionary;
   import flash.xml.XMLNode;
   import flash.utils.getQualifiedClassName;
   import flash.utils.describeType;
   
   use namespace mx_internal;
   
   public class RPCObjectUtil
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      private static var defaultToStringExcludes:Array = ["password","credentials"];
      
      private static var _externalToString:Function = null;
      
      private static var refCount:int = 0;
      
      private static var CLASS_INFO_CACHE:Object = {};
       
      
      public function RPCObjectUtil()
      {
         super();
      }
      
      public static function setToStringExcludes(param1:Array) : void
      {
         defaultToStringExcludes = param1;
      }
      
      public static function externalToString(param1:Function) : void
      {
         _externalToString = param1;
      }
      
      public static function toString(param1:Object, param2:Array = null, param3:Array = null) : String
      {
         if(param3 == null)
         {
            param3 = defaultToStringExcludes;
         }
         refCount = 0;
         if(_externalToString != null)
         {
            return _externalToString(param1,param2,param3);
         }
         return internalToString(param1,0,null,param2,param3);
      }
      
      private static function internalToString(param1:Object, param2:int = 0, param3:Dictionary = null, param4:Array = null, param5:Array = null) : String
      {
         var str:String = null;
         var classInfo:Object = null;
         var properties:Array = null;
         var id:Object = null;
         var isArray:Boolean = false;
         var prop:* = undefined;
         var length:int = 0;
         var j:int = 0;
         var value:Object = param1;
         var indent:int = param2;
         var refs:Dictionary = param3;
         var namespaceURIs:Array = param4;
         var exclude:Array = param5;
         var type:String = value == null?"null":typeof value;
         switch(type)
         {
            case "boolean":
            case "number":
               return value.toString();
            case "string":
               return "\"" + value.toString() + "\"";
            case "object":
               if(value is Date)
               {
                  return value.toString();
               }
               if(value is XMLNode)
               {
                  return value.toString();
               }
               if(value is Class)
               {
                  return "(" + getQualifiedClassName(value) + ")";
               }
               classInfo = getClassInfo(value,exclude,{
                  "includeReadOnly":true,
                  "uris":namespaceURIs,
                  "includeTransient":false
               });
               properties = classInfo.properties;
               str = "(" + classInfo.name + ")";
               if(refs == null)
               {
                  refs = new Dictionary(true);
               }
               id = refs[value];
               if(id != null)
               {
                  str = str + ("#" + int(id));
                  return str;
               }
               if(value != null)
               {
                  str = str + ("#" + refCount.toString());
                  refs[value] = refCount;
                  refCount++;
               }
               isArray = value is Array;
               indent = indent + 2;
               length = properties.length;
               j = 0;
               while(j < length)
               {
                  str = newline(str,indent);
                  prop = properties[j];
                  if(isArray)
                  {
                     str = str + "[";
                  }
                  str = str + prop.toString();
                  if(isArray)
                  {
                     str = str + "] ";
                  }
                  else
                  {
                     str = str + " = ";
                  }
                  try
                  {
                     str = str + internalToString(value[prop],indent,refs,namespaceURIs,exclude);
                  }
                  catch(e:Error)
                  {
                     str = str + "?";
                  }
                  j++;
               }
               indent = indent - 2;
               return str;
            case "xml":
               return value.toString();
            default:
               return "(" + type + ")";
         }
      }
      
      private static function newline(param1:String, param2:int = 0) : String
      {
         var _loc3_:* = param1 + "\n";
         var _loc4_:int = 0;
         while(_loc4_ < param2)
         {
            _loc3_ = _loc3_ + " ";
            _loc4_++;
         }
         return _loc3_;
      }
      
      public static function getClassInfo(param1:Object, param2:Array = null, param3:Object = null) : Object
      {
         var length:int = 0;
         var i:int = 0;
         var result:Object = null;
         var cacheKey:String = null;
         var className:String = null;
         var classAlias:String = null;
         var properties:XMLList = null;
         var prop:XML = null;
         var metadataInfo:Object = null;
         var classInfo:XML = null;
         var numericIndex:Boolean = false;
         var p:String = null;
         var pi:Number = NaN;
         var uris:Array = null;
         var uri:String = null;
         var qName:QName = null;
         var includeTransients:Boolean = false;
         var j:int = 0;
         var obj:Object = param1;
         var excludes:Array = param2;
         var options:Object = param3;
         if(options == null)
         {
            options = {
               "includeReadOnly":true,
               "uris":null,
               "includeTransient":true
            };
         }
         var propertyNames:Array = [];
         var dynamic:Boolean = false;
         if(typeof obj == "xml")
         {
            className = "XML";
            properties = obj.text();
            if(properties.length())
            {
               propertyNames.push("*");
            }
            properties = obj.attributes();
         }
         else
         {
            classInfo = describeType(obj);
            className = classInfo.@name.toString();
            classAlias = classInfo.@alias.toString();
            dynamic = classInfo.@isDynamic.toString() == "true";
            if(options.includeReadOnly)
            {
               properties = classInfo..accessor.(@access != "writeonly") + classInfo..variable;
            }
            else
            {
               properties = classInfo..accessor.(@access == "readwrite") + classInfo..variable;
            }
            numericIndex = false;
         }
         if(!dynamic)
         {
            cacheKey = getCacheKey(obj,excludes,options);
            result = CLASS_INFO_CACHE[cacheKey];
            if(result != null)
            {
               return result;
            }
         }
         result = {};
         result["name"] = className;
         result["alias"] = classAlias;
         result["properties"] = propertyNames;
         result["dynamic"] = dynamic;
         result["metadata"] = metadataInfo = recordMetadata(properties);
         var excludeObject:Object = {};
         if(excludes)
         {
            length = excludes.length;
            i = 0;
            while(i < length)
            {
               excludeObject[excludes[i]] = 1;
               i++;
            }
         }
         var isArray:Boolean = className == "Array";
         if(dynamic)
         {
            for(p in obj)
            {
               if(excludeObject[p] != 1)
               {
                  if(isArray)
                  {
                     pi = parseInt(p);
                     if(isNaN(pi))
                     {
                        propertyNames.push(new QName("",p));
                     }
                     else
                     {
                        propertyNames.push(pi);
                     }
                  }
                  else
                  {
                     propertyNames.push(new QName("",p));
                  }
               }
            }
            numericIndex = isArray && !isNaN(Number(p));
         }
         if(!(className == "Object" || isArray))
         {
            if(className == "XML")
            {
               length = properties.length();
               i = 0;
               while(i < length)
               {
                  p = properties[i].name();
                  if(excludeObject[p] != 1)
                  {
                     propertyNames.push(new QName("","@" + p));
                  }
                  i++;
               }
            }
            else
            {
               length = properties.length();
               uris = options.uris;
               includeTransients = options.hasOwnProperty("includeTransient") && options.includeTransient;
               i = 0;
               while(i < length)
               {
                  prop = properties[i];
                  p = prop.@name.toString();
                  uri = prop.@uri.toString();
                  if(excludeObject[p] != 1)
                  {
                     if(!(!includeTransients && internalHasMetadata(metadataInfo,p,"Transient")))
                     {
                        if(uris != null)
                        {
                           if(uris.length == 1 && uris[0] == "*")
                           {
                              qName = new QName(uri,p);
                              try
                              {
                                 obj[qName];
                                 propertyNames.push();
                              }
                              catch(e:Error)
                              {
                              }
                           }
                           else
                           {
                              j = 0;
                              while(j < uris.length)
                              {
                                 uri = uris[j];
                                 if(prop.@uri.toString() == uri)
                                 {
                                    qName = new QName(uri,p);
                                    try
                                    {
                                       obj[qName];
                                       propertyNames.push(qName);
                                    }
                                    catch(e:Error)
                                    {
                                    }
                                 }
                                 j++;
                              }
                           }
                        }
                        else if(uri.length == 0)
                        {
                           qName = new QName(uri,p);
                           try
                           {
                              obj[qName];
                              propertyNames.push(qName);
                           }
                           catch(e:Error)
                           {
                           }
                        }
                     }
                  }
                  i++;
               }
            }
         }
         propertyNames.sort(Array.CASEINSENSITIVE | (!!numericIndex?Array.NUMERIC:0));
         length = propertyNames.length;
         i = 0;
         while(i < length - 1)
         {
            if(propertyNames[i].toString() == propertyNames[i + 1].toString())
            {
               propertyNames.splice(i,1);
               i--;
            }
            i++;
         }
         if(!dynamic)
         {
            cacheKey = getCacheKey(obj,excludes,options);
            CLASS_INFO_CACHE[cacheKey] = result;
         }
         return result;
      }
      
      private static function internalHasMetadata(param1:Object, param2:String, param3:String) : Boolean
      {
         var _loc4_:Object = null;
         if(param1 != null)
         {
            _loc4_ = param1[param2];
            if(_loc4_ != null)
            {
               if(_loc4_[param3] != null)
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private static function recordMetadata(param1:XMLList) : Object
      {
         var _loc3_:XML = null;
         var _loc4_:String = null;
         var _loc5_:XMLList = null;
         var _loc6_:Object = null;
         var _loc7_:XML = null;
         var _loc8_:String = null;
         var _loc9_:XMLList = null;
         var _loc10_:Object = null;
         var _loc11_:XML = null;
         var _loc12_:Object = null;
         var _loc13_:String = null;
         var _loc14_:String = null;
         var _loc15_:Array = null;
         var _loc2_:Object = null;
         try
         {
            for each(_loc3_ in param1)
            {
               _loc4_ = _loc3_.attribute("name").toString();
               _loc5_ = _loc3_.metadata;
               if(_loc5_.length() > 0)
               {
                  if(_loc2_ == null)
                  {
                     _loc2_ = {};
                  }
                  _loc6_ = {};
                  _loc2_[_loc4_] = _loc6_;
                  for each(_loc7_ in _loc5_)
                  {
                     _loc8_ = _loc7_.attribute("name").toString();
                     _loc9_ = _loc7_.arg;
                     _loc10_ = {};
                     for each(_loc11_ in _loc9_)
                     {
                        _loc13_ = _loc11_.attribute("key").toString();
                        if(_loc13_ != null)
                        {
                           _loc14_ = _loc11_.attribute("value").toString();
                           _loc10_[_loc13_] = _loc14_;
                        }
                     }
                     _loc12_ = _loc6_[_loc8_];
                     if(_loc12_ != null)
                     {
                        if(_loc12_ is Array)
                        {
                           _loc15_ = _loc12_ as Array;
                        }
                        else
                        {
                           _loc15_ = [];
                        }
                        _loc15_.push(_loc10_);
                        _loc12_ = _loc15_;
                     }
                     else
                     {
                        _loc12_ = _loc10_;
                     }
                     _loc6_[_loc8_] = _loc12_;
                  }
               }
            }
         }
         catch(e:Error)
         {
         }
         return _loc2_;
      }
      
      private static function getCacheKey(param1:Object, param2:Array = null, param3:Object = null) : String
      {
         var _loc5_:int = 0;
         var _loc6_:uint = 0;
         var _loc7_:String = null;
         var _loc8_:* = null;
         var _loc9_:String = null;
         var _loc4_:String = getQualifiedClassName(param1);
         if(param2 != null)
         {
            _loc5_ = param2.length;
            _loc6_ = 0;
            while(_loc6_ < _loc5_)
            {
               _loc7_ = param2[_loc6_] as String;
               if(_loc7_ != null)
               {
                  _loc4_ = _loc4_ + _loc7_;
               }
               _loc6_++;
            }
         }
         if(param3 != null)
         {
            for(_loc8_ in param3)
            {
               _loc4_ = _loc4_ + _loc8_;
               _loc9_ = param3[_loc8_];
               if(_loc9_ != null)
               {
                  _loc4_ = _loc4_ + _loc9_.toString();
               }
            }
         }
         return _loc4_;
      }
   }
}
