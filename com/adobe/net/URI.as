package com.adobe.net
{
   import mx.graphics.SolidColor;
   import spark.validators.NumberValidator;
   import mx.binding.BindingManager;
   import spark.components.Label;
   import com.enfluid.ltp.view.components.HelpButton;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import hr.binaria.asx3m.converters.IUnmarshallingContext;
   import com.enfluid.ltp.model.vo.DomainsVO;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.model.constants.DomainStatuses;
   import spark.components.TextArea;
   import spark.layouts.HorizontalLayout;
   import flash.utils.ByteArray;
   import flash.events.MouseEvent;
   import spark.primitives.Path;
   import mx.binding.Binding;
   import flash.utils.Proxy;
   import com.enfluid.ltp.view.components.AvgDelayComponent;
   import spark.events.GridEvent;
   import mx.collections.SortField;
   import com.enfluid.ltp.view.components.FilterGridColumn;
   import mx.collections.Sort;
   import mx.collections.ArrayCollection;
   import system.errors.ConcurrencyError;
   import flash.errors.IllegalOperationError;
   import com.enfluid.ltp.model.DataModel;
   import flash.events.Event;
   import com.enfluid.ltp.util.KeywordUtil;
   import spark.components.VGroup;
   import spark.primitives.Rect;
   
   public final class URI
   {
      
      protected static const URIqueryPartExcludedBitmap:com.adobe.net.URIEncodingBitmap = new com.adobe.net.URIEncodingBitmap(URIqueryPartEscape);
      
      protected static const URIbaselineExcludedBitmap:com.adobe.net.URIEncodingBitmap = new com.adobe.net.URIEncodingBitmap(URIbaselineEscape);
      
      public static const EQUAL:int = 2;
      
      public static const URIqueryEscape:String = URImustEscape + "#";
      
      protected static const URIauthorityExcludedBitmap:com.adobe.net.URIEncodingBitmap = URIbaselineExcludedBitmap;
      
      public static const PARENT:int = 3;
      
      protected static const URIqueryExcludedBitmap:com.adobe.net.URIEncodingBitmap = new com.adobe.net.URIEncodingBitmap(URIqueryEscape);
      
      public static const URImustEscape:String = " %";
      
      protected static const URIportExludedBitmap:com.adobe.net.URIEncodingBitmap = URIbaselineExcludedBitmap;
      
      public static const URIpathEscape:String = URImustEscape + "?#";
      
      protected static const URIfragmentExcludedBitmap:com.adobe.net.URIEncodingBitmap = URIqueryExcludedBitmap;
      
      public static const UNKNOWN_SCHEME:String = "unknown";
      
      protected static const URIuserpassExcludedBitmap:com.adobe.net.URIEncodingBitmap = URIbaselineExcludedBitmap;
      
      protected static var _resolver:com.adobe.net.IURIResolver = null;
      
      protected static const URInonHierexcludedBitmap:com.adobe.net.URIEncodingBitmap = new com.adobe.net.URIEncodingBitmap(URInonHierEscape);
      
      protected static const URIschemeExcludedBitmap:com.adobe.net.URIEncodingBitmap = URIbaselineExcludedBitmap;
      
      public static const URIqueryPartEscape:String = URImustEscape + "#&=";
      
      protected static const URIpathExcludedBitmap:com.adobe.net.URIEncodingBitmap = new com.adobe.net.URIEncodingBitmap(URIpathEscape);
      
      public static const URIbaselineEscape:String = URImustEscape + ":?#/@";
      
      public static const URInonHierEscape:String = URImustEscape + "?#/";
      
      public static const CHILD:int = 1;
      
      public static const NOT_RELATED:int = 0;
       
      
      protected var _path:String = "";
      
      protected var _relative:Boolean = false;
      
      protected var _fragment:String = "";
      
      protected var _username:String = "";
      
      protected var _nonHierarchical:String = "";
      
      protected var _authority:String = "";
      
      protected var _query:String = "";
      
      protected var _scheme:String = "";
      
      protected var _port:String = "";
      
      protected var _password:String = "";
      
      protected var _valid:Boolean = false;
      
      public function URI(param1:String = null)
      {
         super();
         if(param1 == null)
         {
            this.initialize();
         }
         else
         {
            this.constructURI(param1);
         }
      }
      
      public static function get resolver() : com.adobe.net.IURIResolver
      {
         return _resolver;
      }
      
      protected static function compareStr(param1:String, param2:String, param3:Boolean = true) : Boolean
      {
         if(param3 == false)
         {
            param1 = param1.toLowerCase();
            param2 = param2.toLowerCase();
         }
         return param1 == param2;
      }
      
      public static function set resolver(param1:com.adobe.net.IURIResolver) : void
      {
         _resolver = param1;
      }
      
      public static function unescapeChars(param1:String) : String
      {
         var _loc2_:String = null;
         _loc2_ = decodeURIComponent(param1);
         return _loc2_;
      }
      
      public static function queryPartEscape(param1:String) : String
      {
         var _loc2_:String = param1;
         _loc2_ = URI.fastEscapeChars(param1,URI.URIqueryPartExcludedBitmap);
         return _loc2_;
      }
      
      public static function escapeChars(param1:String) : String
      {
         return fastEscapeChars(param1,URI.URIbaselineExcludedBitmap);
      }
      
      public static function fastEscapeChars(param1:String, param2:com.adobe.net.URIEncodingBitmap) : String
      {
         var _loc4_:String = null;
         §§push(0);
         if(_loc7_)
         {
            §§push(-(§§pop() - 73) - 11 + 1);
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push(§§pop() + 1 + 30 + 1 + 1);
         }
         var _loc6_:* = §§pop();
         var _loc3_:String = "";
         §§push(0);
         if(_loc7_)
         {
            §§push(-(-§§pop() * 53 + 83 + 1 - 103) - 72);
         }
         _loc6_ = §§pop();
         while(_loc6_ < param1.length)
         {
            _loc4_ = param1.charAt(_loc6_);
            _loc5_ = int(param2.ShouldEscape(_loc4_));
            if(_loc5_)
            {
               §§push(_loc5_);
               §§push(16);
               if(_loc7_)
               {
                  §§push((-((§§pop() * 19 + 1) * 6) + 1) * 54);
               }
               _loc4_ = §§pop().toString(§§pop());
               §§push(_loc4_.length);
               §§push(1);
               if(_loc8_)
               {
                  §§push((§§pop() + 24 + 1) * 56 - 39);
               }
               if(§§pop() == §§pop())
               {
                  _loc4_ = "0" + _loc4_;
               }
               _loc4_ = "%" + _loc4_;
               _loc4_ = _loc4_.toUpperCase();
            }
            _loc3_ = _loc3_ + _loc4_;
            _loc6_++;
         }
         return _loc3_;
      }
      
      public static function queryPartUnescape(param1:String) : String
      {
         var _loc2_:String = param1;
         _loc2_ = unescapeChars(_loc2_);
         return _loc2_;
      }
      
      protected static function resolve(param1:URI) : URI
      {
         var _loc2_:URI = new URI();
         _loc2_.copyURI(param1);
         if(_resolver != null)
         {
            return _resolver.resolve(_loc2_);
         }
         return _loc2_;
      }
      
      public function set queryRaw(param1:String) : void
      {
         this._query = param1;
      }
      
      public function get port() : String
      {
         return URI.unescapeChars(this._port);
      }
      
      public function set port(param1:String) : void
      {
         this._port = URI.escapeChars(param1);
         this.hierState = true;
      }
      
      public final function getCommonParent(param1:URI, param2:Boolean = true) : URI
      {
         var _loc6_:String = null;
         var _loc7_:String = null;
         var _loc3_:URI = URI.resolve(this);
         var _loc4_:URI = URI.resolve(param1);
         if(!_loc3_.isAbsolute() || !_loc4_.isAbsolute() || _loc3_.isHierarchical() == false || _loc4_.isHierarchical() == false)
         {
            return null;
         }
         var _loc5_:int = _loc3_.getRelation(_loc4_);
         if(_loc5_ == URI.NOT_RELATED)
         {
            return null;
         }
         _loc3_.chdir(".");
         _loc4_.chdir(".");
         do
         {
            _loc5_ = _loc3_.getRelation(_loc4_,param2);
            if(_loc5_ == URI.EQUAL || _loc5_ == URI.PARENT)
            {
               break;
            }
            _loc6_ = _loc3_.toString();
            _loc3_.chdir("..");
            _loc7_ = _loc3_.toString();
         }
         while(_loc6_ != _loc7_);
         
         return _loc3_;
      }
      
      public function get nonHierarchical() : String
      {
         return URI.unescapeChars(this._nonHierarchical);
      }
      
      protected function set hierState(param1:Boolean) : void
      {
         if(param1)
         {
            this._nonHierarchical = "";
            if(this._scheme == "" || this._scheme == UNKNOWN_SCHEME)
            {
               this._relative = true;
            }
            else
            {
               this._relative = false;
            }
            if(this._authority.length == 0 && this._path.length == 0)
            {
               this._valid = false;
            }
            else
            {
               this._valid = true;
            }
         }
         else
         {
            this._authority = "";
            this._username = "";
            this._password = "";
            this._port = "";
            this._path = "";
            this._relative = false;
            if(this._scheme == "" || this._scheme == UNKNOWN_SCHEME)
            {
               this._valid = false;
            }
            else
            {
               this._valid = true;
            }
         }
      }
      
      public final function setQueryValue(param1:String, param2:String) : void
      {
         var _loc3_:Object = null;
         _loc3_ = this.getQueryByMap();
         _loc3_[param1] = param2;
         this.setQueryByMap(_loc3_);
      }
      
      public final function getFilename(param1:Boolean = false) : String
      {
         var _loc3_:String = null;
         §§push(0);
         if(_loc5_)
         {
            §§push(-(§§pop() * 84 - 1) + 1);
         }
         var _loc4_:* = §§pop();
         if(this.isDirectory())
         {
            return String("");
         }
         var _loc2_:String = this.path;
         _loc4_ = int(_loc2_.lastIndexOf("/"));
         §§push(_loc4_);
         §§push(-1);
         if(_loc6_)
         {
            §§push(§§pop() + 4 + 118 + 1 + 118 + 92 + 88);
         }
         if(§§pop() != §§pop())
         {
            §§push(_loc2_);
            §§push(_loc4_);
            §§push(1);
            if(_loc6_)
            {
               §§push(§§pop() + 1 - 3 - 1);
            }
            _loc3_ = §§pop().substr(§§pop() + §§pop());
         }
         else
         {
            _loc3_ = _loc2_;
         }
         if(param1)
         {
            _loc4_ = int(_loc3_.lastIndexOf("."));
            §§push(_loc4_);
            §§push(-1);
            if(_loc5_)
            {
               §§push(-((§§pop() - 31) * 11));
            }
            if(§§pop() != §§pop())
            {
               §§push(_loc3_);
               §§push(0);
               if(_loc5_)
               {
                  §§push(--§§pop() * 93 + 29 - 1);
               }
               _loc3_ = §§pop().substr(§§pop(),_loc4_);
            }
         }
         return _loc3_;
      }
      
      public function set authority(param1:String) : void
      {
         param1 = param1.toLowerCase();
         this._authority = URI.fastEscapeChars(param1,URI.URIauthorityExcludedBitmap);
         this.hierState = true;
      }
      
      protected final function initialize() : void
      {
         this._valid = false;
         this._relative = false;
         this._scheme = UNKNOWN_SCHEME;
         this._authority = "";
         this._username = "";
         this._password = "";
         this._port = "";
         this._path = "";
         this._query = "";
         this._fragment = "";
         this._nonHierarchical = "";
      }
      
      public final function getQueryByMap() : Object
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         §§push(0);
         if(_loc12_)
         {
            §§push((§§pop() - 62 - 1 - 1) * 48 - 55 + 1 - 24);
         }
         var _loc7_:* = §§pop();
         var _loc8_:Object = new Object();
         _loc1_ = this._query;
         _loc3_ = _loc1_.split("&");
         §§push(0);
         if(_loc11_)
         {
            §§push((§§pop() - 1) * 66 - 114 + 1);
         }
         for each(_loc2_ in _loc3_)
         {
            §§push(_loc2_.length);
            §§push(0);
            if(_loc11_)
            {
               §§push(((§§pop() - 1) * 2 + 1 - 15 + 117) * 22 - 7);
            }
            if(§§pop() != §§pop())
            {
               _loc4_ = _loc2_.split("=");
               §§push(_loc4_.length);
               §§push(0);
               if(_loc12_)
               {
                  §§push(-§§pop() + 1 - 1 + 53 + 1);
               }
               if(§§pop() > §§pop())
               {
                  §§push(_loc4_);
                  §§push(0);
                  if(_loc12_)
                  {
                     §§push(§§pop() - 70 - 1 + 23);
                  }
                  _loc5_ = §§pop()[§§pop()];
                  §§push(_loc4_.length);
                  §§push(1);
                  if(_loc12_)
                  {
                     §§push(-(--(§§pop() - 1) - 43 - 85));
                  }
                  if(§§pop() > §§pop())
                  {
                     §§push(_loc4_);
                     §§push(1);
                     if(_loc12_)
                     {
                        §§push(-§§pop() - 67 + 1);
                     }
                     _loc6_ = §§pop()[§§pop()];
                  }
                  else
                  {
                     _loc6_ = "";
                  }
                  _loc5_ = queryPartUnescape(_loc5_);
                  _loc6_ = queryPartUnescape(_loc6_);
                  _loc8_[_loc5_] = _loc6_;
               }
            }
         }
         return _loc8_;
      }
      
      protected final function constructURI(param1:String) : Boolean
      {
         if(!this.parseURI(param1))
         {
            this._valid = false;
         }
         return this.isValid();
      }
      
      public final function isRelative() : Boolean
      {
         return this._relative;
      }
      
      public final function getExtension(param1:Boolean = false) : String
      {
         var _loc3_:String = null;
         §§push(0);
         if(_loc5_)
         {
            §§push(-§§pop() - 83 - 79);
         }
         var _loc4_:* = §§pop();
         var _loc2_:String = this.getFilename();
         if(_loc2_ == "")
         {
            return String("");
         }
         _loc4_ = int(_loc2_.lastIndexOf("."));
         §§push(_loc4_);
         §§push(-1);
         if(_loc6_)
         {
            §§push(-§§pop() - 25 - 1);
         }
         if(§§pop() == §§pop() || §§pop() == §§pop())
         {
            return String("");
         }
         _loc3_ = _loc2_.substr(_loc4_);
         if(param1 && §§pop().charAt(§§pop()) == ".")
         {
            §§push(_loc3_);
            §§push(1);
            if(_loc6_)
            {
               §§push(--((§§pop() - 1 + 1) * 46) * 36 + 52);
            }
            _loc3_ = §§pop().substr(§§pop());
         }
         return _loc3_;
      }
      
      public function get password() : String
      {
         return URI.unescapeChars(this._password);
      }
      
      public final function setParts(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String) : void
      {
         this.scheme = param1;
         this.authority = param2;
         this.port = param3;
         this.path = param4;
         this.query = param5;
         this.fragment = param6;
         this.hierState = true;
      }
      
      public function set query(param1:String) : void
      {
         this._query = URI.fastEscapeChars(param1,URI.URIqueryExcludedBitmap);
      }
      
      public function set fragment(param1:String) : void
      {
         this._fragment = URI.fastEscapeChars(param1,URIfragmentExcludedBitmap);
      }
      
      public function get path() : String
      {
         return URI.unescapeChars(this._path);
      }
      
      public final function setQueryByMap(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         var _loc6_:* = null;
         var _loc7_:String = null;
         var _loc5_:* = "";
         §§push(0);
         if(_loc10_)
         {
            §§push((§§pop() - 1) * 62 * 15);
         }
         for(_loc3_ in param1)
         {
            _loc4_ = param1[_loc2_];
            if(_loc4_ == null)
            {
               _loc4_ = "";
            }
            _loc3_ = queryPartEscape(_loc3_);
            _loc4_ = queryPartEscape(_loc4_);
            _loc6_ = _loc3_;
            §§push(_loc4_.length);
            §§push(0);
            if(_loc11_)
            {
               §§push(-(§§pop() * 58) * 80);
            }
            if(§§pop() > §§pop())
            {
               _loc6_ = _loc6_ + "=";
               _loc6_ = _loc6_ + _loc4_;
            }
            §§push(_loc5_.length);
            §§push(0);
            if(_loc10_)
            {
               §§push(-(-(§§pop() * 66 - 1) - 90) - 1 - 54);
            }
            if(§§pop() != §§pop())
            {
               _loc5_ = _loc5_ + "&";
            }
            _loc5_ = _loc5_ + _loc6_;
         }
         this._query = _loc5_;
      }
      
      public final function makeAbsoluteURI(param1:URI) : Boolean
      {
         if(this.isAbsolute() || param1.isRelative())
         {
            return false;
         }
         var _loc2_:URI = new URI();
         _loc2_.copyURI(param1);
         if(_loc2_.chdir(this.toString()) == false)
         {
            return false;
         }
         this.copyURI(_loc2_);
         return true;
      }
      
      public final function chdir(param1:String, param2:Boolean = false) : Boolean
      {
         var _loc3_:URI = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:Array = null;
         var _loc8_:Array = null;
         var _loc14_:String = null;
         §§push(0);
         if(_loc19_)
         {
            §§push((§§pop() - 55 + 1 + 22 - 1) * 33);
         }
         var _loc15_:* = §§pop();
         var _loc17_:String = null;
         var _loc4_:String = param1;
         if(param2)
         {
            _loc4_ = URI.escapeChars(param1);
         }
         if(_loc4_ == "")
         {
            return true;
         }
         §§push(_loc4_);
         §§push(0);
         if(_loc19_)
         {
            §§push((§§pop() + 91 - 104 + 1 + 1) * 33 * 61);
         }
         if(§§pop().substr(§§pop(),2) == "//")
         {
            _loc17_ = this.scheme + ":" + _loc4_;
            return this.constructURI(_loc17_);
         }
         §§push(_loc4_);
         §§push(0);
         if(_loc18_)
         {
            §§push(§§pop() - 14 + 57 - 5);
         }
         if(§§pop().charAt(§§pop()) == "?")
         {
            _loc4_ = "./" + _loc4_;
         }
         _loc3_ = new URI(_loc4_);
         if(_loc3_.isAbsolute() || _loc3_.isHierarchical() == false)
         {
            this.copyURI(_loc3_);
            return true;
         }
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         _loc5_ = this.path;
         _loc6_ = _loc3_.path;
         §§push(_loc5_.length);
         §§push(0);
         if(_loc18_)
         {
            §§push(-((§§pop() + 1 - 71) * 92 - 1 + 50));
         }
         if(§§pop() > §§pop())
         {
            _loc7_ = _loc5_.split("/");
         }
         else
         {
            _loc7_ = new Array();
         }
         §§push(_loc6_.length);
         §§push(0);
         if(_loc18_)
         {
            §§push((-((§§pop() * 1 + 1) * 54) - 57) * 51);
         }
         if(§§pop() > §§pop())
         {
            _loc8_ = _loc6_.split("/");
         }
         else
         {
            _loc8_ = new Array();
         }
         §§push(_loc7_.length);
         §§push(0);
         if(_loc19_)
         {
            §§push((§§pop() + 1 - 49) * 66);
         }
         if(§§pop() > §§pop() && §§pop()[§§pop()] == "")
         {
            _loc11_ = true;
            _loc7_.shift();
         }
         §§push(_loc7_.length);
         §§push(0);
         if(_loc19_)
         {
            §§push(---§§pop() - 1);
         }
         if(§§pop() > §§pop() && _loc7_[_loc7_.length - 1] == "")
         {
            _loc9_ = true;
            _loc7_.pop();
         }
         §§push(_loc8_.length);
         §§push(0);
         if(_loc18_)
         {
            §§push(-(-(-§§pop() + 1 + 1 - 1) - 1));
         }
         if(§§pop() > §§pop() && §§pop()[§§pop()] == "")
         {
            _loc12_ = true;
            _loc8_.shift();
         }
         §§push(_loc8_.length);
         §§push(0);
         if(_loc18_)
         {
            §§push((§§pop() - 1 + 58) * 62);
         }
         if(§§pop() > §§pop() && _loc8_[_loc8_.length - 1] == "")
         {
            _loc10_ = true;
            _loc8_.pop();
         }
         if(_loc12_)
         {
            this.path = _loc3_.path;
            this.queryRaw = _loc3_.queryRaw;
            this.fragment = _loc3_.fragment;
            return true;
         }
         §§push(_loc8_.length);
         §§push(0);
         if(_loc18_)
         {
            §§push((§§pop() - 53 - 98) * 2 - 93);
         }
         if(§§pop() == §§pop() && _loc3_.query == "")
         {
            this.fragment = _loc3_.fragment;
            return true;
         }
         if(_loc9_ == false && §§pop() > §§pop())
         {
            _loc7_.pop();
         }
         this.queryRaw = _loc3_.queryRaw;
         this.fragment = _loc3_.fragment;
         _loc7_ = _loc7_.concat(_loc8_);
         §§push(0);
         if(_loc18_)
         {
            §§push(-(--§§pop() + 65 + 21 + 1));
         }
         _loc15_ = §§pop();
         while(_loc15_ < _loc7_.length)
         {
            _loc14_ = _loc7_[_loc15_];
            _loc13_ = false;
            if(_loc14_ == ".")
            {
               §§push(_loc7_);
               §§push(_loc15_);
               §§push(1);
               if(_loc19_)
               {
                  §§push((§§pop() + 114 + 1 - 53) * 46 - 106);
               }
               §§pop().splice(§§pop(),§§pop());
               _loc15_--;
               _loc13_ = true;
            }
            else if(_loc14_ == "..")
            {
               §§push(_loc15_);
               §§push(1);
               if(_loc18_)
               {
                  §§push(§§pop() - 1 + 1 - 1);
               }
               if(§§pop() >= §§pop())
               {
                  if(_loc7_[_loc15_ - 1] != "..")
                  {
                     §§push(_loc7_);
                     §§push(_loc15_ - 1);
                     §§push(2);
                     if(_loc19_)
                     {
                        §§push(§§pop() - 1 - 36 + 1 - 72 + 1 + 1);
                     }
                     §§pop().splice(§§pop(),§§pop());
                     §§push(_loc15_);
                     §§push(2);
                     if(_loc19_)
                     {
                        §§push(-(---§§pop() + 1 - 1));
                     }
                     _loc15_ = int(§§pop() - §§pop());
                  }
               }
               else if(!this.isRelative())
               {
                  §§push(_loc7_);
                  §§push(_loc15_);
                  §§push(1);
                  if(_loc18_)
                  {
                     §§push(§§pop() - 1 - 68 - 36 + 119);
                  }
                  §§pop().splice(§§pop(),§§pop());
                  _loc15_--;
               }
               _loc13_ = true;
            }
            _loc15_++;
         }
         var _loc16_:String = "";
         _loc10_ = _loc10_ || _loc13_;
         _loc16_ = this.joinPath(_loc7_,_loc11_,_loc10_);
         this.path = _loc16_;
         return true;
      }
      
      public function get scheme() : String
      {
         return URI.unescapeChars(this._scheme);
      }
      
      public final function makeRelativeURI(param1:URI, param2:Boolean = true) : Boolean
      {
         var _loc4_:Array = null;
         var _loc5_:Array = null;
         var _loc7_:String = null;
         var _loc8_:String = null;
         var _loc9_:String = null;
         §§push(0);
         if(_loc17_)
         {
            §§push((§§pop() + 111) * 47 + 88);
         }
         var _loc13_:* = §§pop();
         var _loc3_:URI = new URI();
         _loc3_.copyURI(param1);
         var _loc6_:Array = new Array();
         var _loc10_:String = this.path;
         var _loc11_:String = this.queryRaw;
         var _loc12_:String = this.fragment;
         var _loc14_:Boolean = false;
         var _loc15_:Boolean = false;
         if(this.isRelative())
         {
            return true;
         }
         if(_loc3_.isRelative())
         {
            return false;
         }
         if(this.isOfType(param1.scheme) == false || this.authority != param1.authority)
         {
            return false;
         }
         _loc15_ = this.isDirectory();
         _loc3_.chdir(".");
         _loc4_ = _loc10_.split("/");
         _loc5_ = _loc3_.path.split("/");
         §§push(_loc4_.length);
         §§push(0);
         if(_loc18_)
         {
            §§push(-(§§pop() + 1 - 110 + 0));
         }
         if(§§pop() > §§pop() && §§pop()[§§pop()] == "")
         {
            _loc4_.shift();
         }
         §§push(_loc4_.length);
         §§push(0);
         if(_loc17_)
         {
            §§push(-(((§§pop() - 1) * 29 * 118 + 1 - 1) * 15));
         }
         if(§§pop() > §§pop() && _loc4_[_loc4_.length - 1] == "")
         {
            _loc15_ = true;
            _loc4_.pop();
         }
         §§push(_loc5_.length);
         §§push(0);
         if(_loc17_)
         {
            §§push(-((§§pop() - 74 - 1 - 1) * 69) + 41);
         }
         if(§§pop() > §§pop() && §§pop()[§§pop()] == "")
         {
            _loc5_.shift();
         }
         §§push(_loc5_.length);
         §§push(0);
         if(_loc17_)
         {
            §§push((§§pop() - 50 + 1) * 109);
         }
         if(§§pop() > §§pop() && _loc5_[_loc5_.length - 1] == "")
         {
            _loc5_.pop();
         }
         while(true)
         {
            §§push(_loc5_.length);
            §§push(0);
            if(_loc17_)
            {
               §§push(§§pop() * 49 - 1 - 1);
            }
            if(§§pop() > §§pop())
            {
               §§push(_loc4_.length);
               §§push(0);
               if(_loc18_)
               {
                  §§push(§§pop() + 110 + 100 + 111);
               }
               if(§§pop() == §§pop())
               {
                  break;
               }
               §§push(_loc4_);
               §§push(0);
               if(_loc18_)
               {
                  §§push(--(§§pop() - 103 - 1) + 56);
               }
               _loc7_ = §§pop()[§§pop()];
               §§push(_loc5_);
               §§push(0);
               if(_loc18_)
               {
                  §§push(-((-(§§pop() - 13) - 1) * 83));
               }
               _loc8_ = §§pop()[§§pop()];
               if(compareStr(_loc7_,_loc8_,param2))
               {
                  _loc4_.shift();
                  _loc5_.shift();
                  continue;
               }
               break;
            }
            break;
         }
         var _loc16_:String = "..";
         §§push(0);
         if(_loc17_)
         {
            §§push(-((§§pop() - 1) * 38 - 1 + 1 - 1));
         }
         _loc13_ = §§pop();
         while(_loc13_ < _loc5_.length)
         {
            _loc6_.push(_loc16_);
            _loc13_++;
         }
         _loc6_ = _loc6_.concat(_loc4_);
         _loc9_ = this.joinPath(_loc6_,false,_loc15_);
         §§push(_loc9_.length);
         §§push(0);
         if(_loc17_)
         {
            §§push(§§pop() * 75 * 90 + 81 + 119);
         }
         if(§§pop() == §§pop())
         {
            _loc9_ = "./";
         }
         this.setParts("","","",_loc9_,_loc11_,_loc12_);
         return true;
      }
      
      public function set password(param1:String) : void
      {
         this._password = URI.fastEscapeChars(param1,URI.URIuserpassExcludedBitmap);
         this.hierState = true;
      }
      
      public final function toDisplayString() : String
      {
         return this.toStringInternal(true);
      }
      
      protected final function parseURI(param1:String) : Boolean
      {
         §§push(0);
         if(_loc9_)
         {
            §§push(-(§§pop() + 1) - 1);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc10_)
         {
            §§push(((--§§pop() - 31) * 26 - 90 + 98) * 59);
         }
         var _loc4_:* = §§pop();
         var _loc2_:String = param1;
         this.initialize();
         _loc3_ = int(_loc2_.indexOf("#"));
         §§push(_loc3_);
         §§push(-1);
         if(_loc9_)
         {
            §§push(-§§pop() * 14 * 64 * 90);
         }
         if(§§pop() != §§pop())
         {
            §§push(_loc2_.length);
            §§push(_loc3_);
            §§push(1);
            if(_loc9_)
            {
               §§push(-((§§pop() - 30) * 37 + 1 - 15 + 118 - 82));
            }
            if(§§pop() > §§pop() + §§pop())
            {
               §§push(this);
               §§push(_loc2_);
               §§push(_loc3_);
               §§push(1);
               if(_loc10_)
               {
                  §§push(§§pop() + 1 - 34 - 1);
               }
               §§push(§§pop() + §§pop());
               §§push(_loc2_.length);
               §§push(_loc3_);
               §§push(1);
               if(_loc9_)
               {
                  §§push(§§pop() - 66 - 22 - 1 - 1 + 1);
               }
               §§pop()._fragment = §§pop().substr(§§pop(),§§pop() - (§§pop() + §§pop()));
            }
            §§push(_loc2_);
            §§push(0);
            if(_loc10_)
            {
               §§push(-(§§pop() - 1) + 93 - 95 - 117 - 32);
            }
            _loc2_ = §§pop().substr(§§pop(),_loc3_);
         }
         _loc3_ = int(_loc2_.indexOf("?"));
         §§push(_loc3_);
         §§push(-1);
         if(_loc10_)
         {
            §§push(-(§§pop() - 118 - 1 + 1));
         }
         if(§§pop() != §§pop())
         {
            §§push(_loc2_.length);
            §§push(_loc3_);
            §§push(1);
            if(_loc9_)
            {
               §§push(§§pop() - 1 - 1 - 1 + 111);
            }
            if(§§pop() > §§pop() + §§pop())
            {
               §§push(this);
               §§push(_loc2_);
               §§push(_loc3_);
               §§push(1);
               if(_loc9_)
               {
                  §§push(--(§§pop() * 28 + 53) + 39);
               }
               §§push(§§pop() + §§pop());
               §§push(_loc2_.length);
               §§push(_loc3_);
               §§push(1);
               if(_loc10_)
               {
                  §§push((§§pop() * 53 - 106 - 26 - 96) * 85 - 39 - 1);
               }
               §§pop()._query = §§pop().substr(§§pop(),§§pop() - (§§pop() + §§pop()));
            }
            §§push(_loc2_);
            §§push(0);
            if(_loc9_)
            {
               §§push(-§§pop() * 39 + 1 - 3 + 111 - 51);
            }
            _loc2_ = §§pop().substr(§§pop(),_loc3_);
         }
         _loc3_ = int(_loc2_.search(":"));
         _loc4_ = int(_loc2_.search("/"));
         §§push(_loc3_);
         §§push(-1);
         if(_loc9_)
         {
            §§push(-§§pop() - 27 - 31 - 1);
         }
         var _loc5_:* = §§pop() != §§pop();
         §§push(_loc4_);
         §§push(-1);
         if(_loc10_)
         {
            §§push(-(-§§pop() - 1 + 58) - 27);
         }
         var _loc6_:* = §§pop() != §§pop();
         var _loc7_:Boolean = !_loc6_ || _loc3_ < _loc4_;
         if(_loc5_ && _loc7_)
         {
            §§push(this);
            §§push(_loc2_);
            §§push(0);
            if(_loc10_)
            {
               §§push(-(§§pop() + 80 - 82 - 3) - 1);
            }
            §§pop()._scheme = §§pop().substr(§§pop(),_loc3_);
            this._scheme = this._scheme.toLowerCase();
            §§push(_loc2_);
            §§push(_loc3_);
            §§push(1);
            if(_loc10_)
            {
               §§push((§§pop() + 1 - 1 - 70 - 1) * 54);
            }
            _loc2_ = §§pop().substr(§§pop() + §§pop());
            §§push(_loc2_);
            §§push(0);
            if(_loc10_)
            {
               §§push(-(§§pop() + 22 - 1 - 1 - 1 + 71));
            }
            if(§§pop().substr(§§pop(),2) == "//")
            {
               this._nonHierarchical = "";
               §§push(_loc2_);
               §§push(2);
               if(_loc10_)
               {
                  §§push(§§pop() * 114 + 1 - 57);
               }
               §§push(_loc2_.length);
               §§push(2);
               if(_loc10_)
               {
                  §§push(§§pop() * 70 + 1 + 1);
               }
               _loc2_ = §§pop().substr(§§pop(),§§pop() - §§pop());
            }
            else
            {
               this._nonHierarchical = _loc2_;
               if((this._valid = this.validateURI()) == false)
               {
                  this.initialize();
               }
               return this.isValid();
            }
         }
         else
         {
            this._scheme = "";
            this._relative = true;
            this._nonHierarchical = "";
         }
         if(this.isRelative())
         {
            this._authority = "";
            this._port = "";
            this._path = _loc2_;
         }
         else
         {
            §§push(_loc2_);
            §§push(0);
            if(_loc9_)
            {
               §§push(-§§pop() - 49 - 74 - 92);
            }
            if(§§pop().substr(§§pop(),2) == "//")
            {
               while(true)
               {
                  §§push(_loc2_);
                  §§push(0);
                  if(_loc10_)
                  {
                     §§push(-(-(§§pop() - 11 + 44) - 85 - 1 + 1));
                  }
                  if(§§pop().charAt(§§pop()) != "/")
                  {
                     break;
                  }
                  §§push(_loc2_);
                  §§push(1);
                  if(_loc10_)
                  {
                     §§push(-(§§pop() - 64 - 119) + 33 - 1 - 80);
                  }
                  _loc2_ = §§pop().substr(§§pop(),_loc2_.length - 1);
               }
            }
            _loc3_ = int(_loc2_.search("/"));
            §§push(_loc3_);
            §§push(-1);
            if(_loc9_)
            {
               §§push(-((§§pop() * 117 - 9 - 1) * 35) * 85);
            }
            if(§§pop() == §§pop())
            {
               this._authority = _loc2_;
               this._path = "";
            }
            else
            {
               §§push(this);
               §§push(_loc2_);
               §§push(0);
               if(_loc9_)
               {
                  §§push(-(§§pop() - 1 - 1) - 1 + 107);
               }
               §§pop()._authority = §§pop().substr(§§pop(),_loc3_);
               this._path = _loc2_.substr(_loc3_,_loc2_.length - _loc3_);
            }
            _loc3_ = int(this._authority.search("@"));
            §§push(_loc3_);
            §§push(-1);
            if(_loc10_)
            {
               §§push(-(-§§pop() - 65) - 47 - 84);
            }
            if(§§pop() != §§pop())
            {
               §§push(this);
               §§push(this._authority);
               §§push(0);
               if(_loc10_)
               {
                  §§push(§§pop() - 1 - 1 + 8 - 116 - 57);
               }
               §§pop()._username = §§pop().substr(§§pop(),_loc3_);
               §§push(this);
               §§push(this._authority);
               §§push(_loc3_);
               §§push(1);
               if(_loc9_)
               {
                  §§push(§§pop() - 10 + 1 - 22);
               }
               §§pop()._authority = §§pop().substr(§§pop() + §§pop());
               _loc3_ = int(this._username.search(":"));
               §§push(_loc3_);
               §§push(-1);
               if(_loc9_)
               {
                  §§push(-(-(§§pop() + 1 + 1) - 1) * 28 - 22);
               }
               if(§§pop() != §§pop())
               {
                  §§push(this);
                  §§push(this._username);
                  §§push(_loc3_);
                  §§push(1);
                  if(_loc10_)
                  {
                     §§push((§§pop() * 64 - 13 + 6 - 1 - 1) * 38 - 1);
                  }
                  §§pop()._password = §§pop().substring(§§pop() + §§pop(),this._username.length);
                  §§push(this);
                  §§push(this._username);
                  §§push(0);
                  if(_loc10_)
                  {
                     §§push((-(§§pop() * 15) - 1 - 1) * 113 * 83 + 1);
                  }
                  §§pop()._username = §§pop().substr(§§pop(),_loc3_);
               }
               else
               {
                  this._password = "";
               }
            }
            else
            {
               this._username = "";
               this._password = "";
            }
            _loc3_ = int(this._authority.search(":"));
            §§push(_loc3_);
            §§push(-1);
            if(_loc10_)
            {
               §§push(-(-§§pop() + 67) - 1 + 33);
            }
            if(§§pop() != §§pop())
            {
               §§push(this);
               §§push(this._authority);
               §§push(_loc3_);
               §§push(1);
               if(_loc9_)
               {
                  §§push((-§§pop() - 1 + 98) * 24);
               }
               §§pop()._port = §§pop().substring(§§pop() + §§pop(),this._authority.length);
               §§push(this);
               §§push(this._authority);
               §§push(0);
               if(_loc10_)
               {
                  §§push(§§pop() * 32 - 1 + 104 - 1 + 1 - 53);
               }
               §§pop()._authority = §§pop().substr(§§pop(),_loc3_);
            }
            else
            {
               this._port = "";
            }
            this._authority = this._authority.toLowerCase();
         }
         if((this._valid = this.validateURI()) == false)
         {
            this.initialize();
         }
         return this.isValid();
      }
      
      public function set username(param1:String) : void
      {
         this._username = URI.fastEscapeChars(param1,URI.URIuserpassExcludedBitmap);
         this.hierState = true;
      }
      
      public final function copyURI(param1:URI) : void
      {
         this._scheme = param1._scheme;
         this._authority = param1._authority;
         this._username = param1._username;
         this._password = param1._password;
         this._port = param1._port;
         this._path = param1._path;
         this._query = param1._query;
         this._fragment = param1._fragment;
         this._nonHierarchical = param1._nonHierarchical;
         this._valid = param1._valid;
         this._relative = param1._relative;
      }
      
      public final function isAbsolute() : Boolean
      {
         return !this._relative;
      }
      
      protected function get hierState() : Boolean
      {
         return this._nonHierarchical.length == 0;
      }
      
      public function get queryRaw() : String
      {
         return this._query;
      }
      
      public function get query() : String
      {
         return URI.unescapeChars(this._query);
      }
      
      public function set scheme(param1:String) : void
      {
         var _loc2_:String = param1.toLowerCase();
         this._scheme = URI.fastEscapeChars(_loc2_,URI.URIschemeExcludedBitmap);
      }
      
      public final function forceEscape() : void
      {
         this.scheme = this.scheme;
         this.setQueryByMap(this.getQueryByMap());
         this.fragment = this.fragment;
         if(this.isHierarchical())
         {
            this.authority = this.authority;
            this.path = this.path;
            this.port = this.port;
            this.username = this.username;
            this.password = this.password;
         }
         else
         {
            this.nonHierarchical = this.nonHierarchical;
         }
      }
      
      public final function getDefaultPort() : String
      {
         if(this._scheme == "http")
         {
            return String("80");
         }
         if(this._scheme == "ftp")
         {
            return String("21");
         }
         if(this._scheme == "file")
         {
            return String("");
         }
         if(this._scheme == "sftp")
         {
            return String("22");
         }
         return String("");
      }
      
      public function get fragment() : String
      {
         return URI.unescapeChars(this._fragment);
      }
      
      public function set path(param1:String) : void
      {
         this._path = URI.fastEscapeChars(param1,URI.URIpathExcludedBitmap);
         if(this._scheme == UNKNOWN_SCHEME)
         {
            this._scheme = "";
         }
         this.hierState = true;
      }
      
      public function get authority() : String
      {
         return URI.unescapeChars(this._authority);
      }
      
      public final function isHierarchical() : Boolean
      {
         return this.hierState;
      }
      
      protected final function toStringInternal(param1:Boolean) : String
      {
         var _loc2_:* = "";
         var _loc3_:String = "";
         if(this.isHierarchical() == false)
         {
            _loc2_ = _loc2_ + (!!param1?this.scheme:this._scheme);
            _loc2_ = _loc2_ + ":";
            _loc2_ = _loc2_ + (!!param1?this.nonHierarchical:this._nonHierarchical);
         }
         else
         {
            if(this.isRelative() == false)
            {
               §§push(this._scheme.length);
               §§push(0);
               if(_loc5_)
               {
                  §§push(§§pop() * 60 - 1 + 21);
               }
               if(§§pop() != §§pop())
               {
                  _loc3_ = !!param1?this.scheme:this._scheme;
                  _loc2_ = _loc2_ + (_loc3_ + ":");
               }
               §§push(this._authority.length);
               §§push(0);
               if(_loc4_)
               {
                  §§push((§§pop() - 1) * 1 + 57 - 1 - 40);
               }
               if(§§pop() != §§pop() || this.isOfType("file"))
               {
                  _loc2_ = _loc2_ + "//";
                  §§push(this._username.length);
                  §§push(0);
                  if(_loc5_)
                  {
                     §§push(-(-(§§pop() - 116 - 1) * 71) + 1);
                  }
                  if(§§pop() != §§pop())
                  {
                     _loc3_ = !!param1?this.username:this._username;
                     _loc2_ = _loc2_ + _loc3_;
                     §§push(this._password.length);
                     §§push(0);
                     if(_loc5_)
                     {
                        §§push(§§pop() - 1 - 46 - 63);
                     }
                     if(§§pop() != §§pop())
                     {
                        _loc3_ = !!param1?this.password:this._password;
                        _loc2_ = _loc2_ + (":" + _loc3_);
                     }
                     _loc2_ = _loc2_ + "@";
                  }
                  _loc3_ = !!param1?this.authority:this._authority;
                  _loc2_ = _loc2_ + _loc3_;
                  §§push(this.port.length);
                  §§push(0);
                  if(_loc4_)
                  {
                     §§push(-(§§pop() - 1) * 2);
                  }
                  if(§§pop() != §§pop())
                  {
                     _loc2_ = _loc2_ + (":" + this.port);
                  }
               }
            }
            _loc3_ = !!param1?this.path:this._path;
            _loc2_ = _loc2_ + _loc3_;
         }
         §§push(this._query.length);
         §§push(0);
         if(_loc5_)
         {
            §§push(-(§§pop() - 103 + 21 - 1) * 56);
         }
         if(§§pop() != §§pop())
         {
            _loc3_ = !!param1?this.query:this._query;
            _loc2_ = _loc2_ + ("?" + _loc3_);
         }
         §§push(this.fragment.length);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() - 113) - 1 + 1);
         }
         if(§§pop() != §§pop())
         {
            _loc3_ = !!param1?this.fragment:this._fragment;
            _loc2_ = _loc2_ + ("#" + _loc3_);
         }
         return _loc2_;
      }
      
      public function get username() : String
      {
         return URI.unescapeChars(this._username);
      }
      
      public final function unknownToURI(param1:String, param2:String = "http") : Boolean
      {
         var _loc3_:String = null;
         var _loc5_:String = null;
         §§push(param1.length);
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() - 1 + 1 - 1 - 5);
         }
         if(§§pop() == §§pop())
         {
            this.initialize();
            return false;
         }
         param1 = param1.replace(/\\/g,"/");
         §§push(param1.length);
         §§push(2);
         if(_loc6_)
         {
            §§push(-(§§pop() + 1 - 1 - 1) - 37);
         }
         if(§§pop() >= §§pop())
         {
            §§push(param1);
            §§push(0);
            if(_loc7_)
            {
               §§push(-(-§§pop() - 96 - 1) - 1);
            }
            _loc3_ = §§pop().substr(§§pop(),2);
            if(_loc3_ == "//")
            {
               param1 = param2 + ":" + param1;
            }
         }
         §§push(param1.length);
         §§push(3);
         if(_loc6_)
         {
            §§push(-((§§pop() - 53) * 43));
         }
         if(§§pop() >= §§pop())
         {
            §§push(param1);
            §§push(0);
            if(_loc6_)
            {
               §§push(-(-(§§pop() - 1 + 78 - 6) + 96));
            }
            _loc3_ = §§pop().substr(§§pop(),3);
            if(_loc3_ == "://")
            {
               param1 = param2 + param1;
            }
         }
         var _loc4_:URI = new URI(param1);
         if(_loc4_.isHierarchical() == false)
         {
            if(_loc4_.scheme == UNKNOWN_SCHEME)
            {
               this.initialize();
               return false;
            }
            this.copyURI(_loc4_);
            this.forceEscape();
            return true;
         }
         if(_loc4_.scheme != UNKNOWN_SCHEME && §§pop() > §§pop())
         {
            §§push(_loc4_.authority.length);
            §§push(0);
            if(_loc7_)
            {
               §§push((§§pop() - 22 - 1 + 45 - 41) * 82);
            }
            if(§§pop() > §§pop() || _loc4_.scheme == "file")
            {
               this.copyURI(_loc4_);
               this.forceEscape();
               return true;
            }
            §§push(_loc4_.authority.length);
            §§push(0);
            if(_loc6_)
            {
               §§push((§§pop() - 10 - 1 - 1 + 1) * 15);
            }
            if(§§pop() == §§pop() && §§pop() == §§pop())
            {
               this.setParts(_loc4_.scheme,"","","","","");
               return false;
            }
         }
         else
         {
            _loc5_ = _loc4_.path;
            if(_loc5_ == ".." || _loc5_ == "." || §§pop() >= §§pop() && §§pop().substr(§§pop(),3) == "../" || §§pop() >= §§pop() && §§pop().substr(§§pop(),2) == "./")
            {
               this.copyURI(_loc4_);
               this.forceEscape();
               return true;
            }
         }
         _loc4_ = new URI(param2 + "://" + param1);
         §§push(_loc4_.scheme.length);
         §§push(0);
         if(_loc7_)
         {
            §§push(----§§pop() - 1 + 1);
         }
         if(§§pop() > §§pop() && §§pop() > §§pop())
         {
            this.copyURI(_loc4_);
            this.forceEscape();
            return true;
         }
         this.initialize();
         return false;
      }
      
      public final function isDirectory() : Boolean
      {
         §§push(this._path.length);
         §§push(0);
         if(_loc1_)
         {
            §§push(§§pop() + 113 - 74 + 0 + 22 - 1);
         }
         if(§§pop() == §§pop())
         {
            return false;
         }
         return this._path.charAt(this.path.length - 1) == "/";
      }
      
      protected final function verifyAlpha(param1:String) : Boolean
      {
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() - 1 - 103 - 88);
         }
         var _loc3_:* = §§pop();
         var _loc2_:RegExp = /[^a-z]/;
         param1 = param1.toLowerCase();
         _loc3_ = int(param1.search(_loc2_));
         §§push(_loc3_);
         §§push(-1);
         if(_loc5_)
         {
            §§push(-(§§pop() - 1) - 1 - 86);
         }
         if(§§pop() == §§pop())
         {
            return true;
         }
         return false;
      }
      
      public final function isOfFileType(param1:String) : Boolean
      {
         var _loc2_:String = null;
         §§push(0);
         if(_loc5_)
         {
            §§push(-(-((§§pop() + 1) * 101) + 1) - 1 + 1);
         }
         var _loc3_:* = §§pop();
         _loc3_ = int(param1.lastIndexOf("."));
         §§push(_loc3_);
         §§push(-1);
         if(_loc5_)
         {
            §§push(-((-§§pop() * 65 - 51) * 47 + 1) * 77);
         }
         if(§§pop() != §§pop())
         {
            §§push(param1);
            §§push(_loc3_);
            §§push(1);
            if(_loc5_)
            {
               §§push(§§pop() * 57 - 83 + 1 - 111 - 87 - 1 + 1);
            }
            param1 = §§pop().substr(§§pop() + §§pop());
         }
         _loc2_ = this.getExtension(true);
         if(_loc2_ == "")
         {
            return false;
         }
         §§push(compareStr(_loc2_,param1,false));
         §§push(0);
         if(_loc5_)
         {
            §§push(-(§§pop() + 1 - 71 + 1) - 43);
         }
         if(§§pop() == §§pop())
         {
            return true;
         }
         return false;
      }
      
      public function set nonHierarchical(param1:String) : void
      {
         this._nonHierarchical = URI.fastEscapeChars(param1,URInonHierexcludedBitmap);
         this.hierState = false;
      }
      
      protected final function joinPath(param1:Array, param2:Boolean, param3:Boolean) : String
      {
         §§push(0);
         if(_loc6_)
         {
            §§push((§§pop() - 1) * 8 * 20 - 66);
         }
         var _loc5_:* = §§pop();
         var _loc4_:* = "";
         §§push(0);
         if(_loc6_)
         {
            §§push(-((§§pop() - 87 - 1 + 1 - 1 - 1) * 20));
         }
         _loc5_ = §§pop();
         while(_loc5_ < param1.length)
         {
            §§push(_loc4_.length);
            §§push(0);
            if(_loc7_)
            {
               §§push((§§pop() - 4 - 84) * 71 + 25 + 1 - 83 + 17);
            }
            if(§§pop() > §§pop())
            {
               _loc4_ = _loc4_ + "/";
            }
            _loc4_ = _loc4_ + param1[_loc5_];
            _loc5_++;
         }
         if(param3 && §§pop() > §§pop())
         {
            _loc4_ = _loc4_ + "/";
         }
         if(param2)
         {
            _loc4_ = "/" + _loc4_;
         }
         return _loc4_;
      }
      
      public final function isValid() : Boolean
      {
         return this._valid;
      }
      
      public final function toString() : String
      {
         if(this == null)
         {
            return "";
         }
         return this.toStringInternal(false);
      }
      
      protected final function validateURI() : Boolean
      {
         if(this.isAbsolute())
         {
            §§push(this._scheme.length);
            §§push(1);
            if(_loc1_)
            {
               §§push((§§pop() - 1 + 1) * 98);
            }
            if(§§pop() <= §§pop() || this._scheme == UNKNOWN_SCHEME)
            {
               return false;
            }
            if(this.verifyAlpha(this._scheme) == false)
            {
               return false;
            }
         }
         if(this.hierState)
         {
            §§push(this._path.search("\\"));
            §§push(-1);
            if(_loc2_)
            {
               §§push(-§§pop() - 1 + 1 - 1 + 113 + 118 - 1);
            }
            if(§§pop() != §§pop())
            {
               return false;
            }
            if(this.isRelative() == false && this._scheme == UNKNOWN_SCHEME)
            {
               return false;
            }
         }
         else
         {
            §§push(this._nonHierarchical.search("\\"));
            §§push(-1);
            if(_loc1_)
            {
               §§push(-((§§pop() - 1) * 21) + 51 + 119);
            }
            if(§§pop() != §§pop())
            {
               return false;
            }
         }
         return true;
      }
      
      public final function getRelation(param1:URI, param2:Boolean = true) : int
      {
         var _loc9_:Array = null;
         var _loc10_:Array = null;
         var _loc11_:String = null;
         var _loc12_:String = null;
         §§push(0);
         if(_loc15_)
         {
            §§push(§§pop() * 88 * 11 * 105);
         }
         var _loc13_:* = §§pop();
         var _loc3_:URI = URI.resolve(this);
         var _loc4_:URI = URI.resolve(param1);
         if(_loc3_.isRelative() || _loc4_.isRelative())
         {
            return URI.NOT_RELATED;
         }
         if(_loc3_.isHierarchical() == false || _loc4_.isHierarchical() == false)
         {
            if(_loc3_.isHierarchical() == false && _loc4_.isHierarchical() == true || _loc3_.isHierarchical() == true && _loc4_.isHierarchical() == false)
            {
               return URI.NOT_RELATED;
            }
            if(_loc3_.scheme != _loc4_.scheme)
            {
               return URI.NOT_RELATED;
            }
            if(_loc3_.nonHierarchical != _loc4_.nonHierarchical)
            {
               return URI.NOT_RELATED;
            }
            return URI.EQUAL;
         }
         if(_loc3_.scheme != _loc4_.scheme)
         {
            return URI.NOT_RELATED;
         }
         if(_loc3_.authority != _loc4_.authority)
         {
            return URI.NOT_RELATED;
         }
         var _loc5_:String = _loc3_.port;
         var _loc6_:String = _loc4_.port;
         if(_loc5_ == "")
         {
            _loc5_ = _loc3_.getDefaultPort();
         }
         if(_loc6_ == "")
         {
            _loc6_ = _loc4_.getDefaultPort();
         }
         if(_loc5_ != _loc6_)
         {
            return URI.NOT_RELATED;
         }
         if(compareStr(_loc3_.path,_loc4_.path,param2))
         {
            return URI.EQUAL;
         }
         var _loc7_:String = _loc3_.path;
         var _loc8_:String = _loc4_.path;
         if((_loc7_ == "/" || _loc8_ == "/") && (_loc7_ == "" || _loc8_ == ""))
         {
            return URI.EQUAL;
         }
         _loc9_ = _loc7_.split("/");
         _loc10_ = _loc8_.split("/");
         if(_loc9_.length > _loc10_.length)
         {
            _loc12_ = _loc10_[_loc10_.length - 1];
            §§push(_loc12_.length);
            §§push(0);
            if(_loc14_)
            {
               §§push((§§pop() + 71) * 42 - 1);
            }
            if(§§pop() > §§pop())
            {
               return URI.NOT_RELATED;
            }
            _loc10_.pop();
            §§push(0);
            if(_loc15_)
            {
               §§push(§§pop() + 73 + 111 + 1);
            }
            _loc13_ = §§pop();
            while(_loc13_ < _loc10_.length)
            {
               _loc11_ = _loc9_[_loc13_];
               _loc12_ = _loc10_[_loc13_];
               if(compareStr(_loc11_,_loc12_,param2) == false)
               {
                  return URI.NOT_RELATED;
               }
               _loc13_++;
            }
            return URI.CHILD;
         }
         if(_loc9_.length < _loc10_.length)
         {
            _loc11_ = _loc9_[_loc9_.length - 1];
            §§push(_loc11_.length);
            §§push(0);
            if(_loc15_)
            {
               §§push((§§pop() + 1 + 1) * 2);
            }
            if(§§pop() > §§pop())
            {
               return URI.NOT_RELATED;
            }
            _loc9_.pop();
            §§push(0);
            if(_loc14_)
            {
               §§push(-(§§pop() - 1) + 93);
            }
            _loc13_ = §§pop();
            while(_loc13_ < _loc9_.length)
            {
               _loc11_ = _loc9_[_loc13_];
               _loc12_ = _loc10_[_loc13_];
               if(compareStr(_loc11_,_loc12_,param2) == false)
               {
                  return URI.NOT_RELATED;
               }
               _loc13_++;
            }
            return URI.PARENT;
         }
         return URI.NOT_RELATED;
      }
      
      public final function isOfType(param1:String) : Boolean
      {
         param1 = param1.toLowerCase();
         return this._scheme == param1;
      }
      
      public final function getQueryValue(param1:String) : String
      {
         var _loc2_:Object = null;
         var _loc3_:* = null;
         var _loc4_:String = null;
         _loc2_ = this.getQueryByMap();
         §§push(0);
         if(_loc7_)
         {
            §§push(-(-§§pop() * 85 * 16) - 108);
         }
         for(_loc3_ in _loc2_)
         {
            if(_loc3_ == param1)
            {
               _loc4_ = _loc2_[_loc3_];
               return _loc4_;
            }
         }
         return new String("");
      }
   }
}
