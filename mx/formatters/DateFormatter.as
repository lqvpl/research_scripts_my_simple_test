package mx.formatters
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class DateFormatter extends Formatter
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      private static const VALID_PATTERN_CHARS:String = "Y,M,D,A,E,H,J,K,L,N,S,Q,O,Z";
       
      
      private var _formatString:String;
      
      private var formatStringOverride:String;
      
      public function DateFormatter(param1:String = null)
      {
         super();
         this.formatString = param1;
      }
      
      public static function parseDateString(param1:String, param2:String = null) : Date
      {
         var _loc19_:String = null;
         var _loc20_:int = 0;
         var _loc21_:int = 0;
         var _loc22_:String = null;
         var _loc23_:String = null;
         var _loc24_:int = 0;
         var _loc25_:* = false;
         if(!param1 || param1 == "")
         {
            return null;
         }
         var _loc3_:int = -1;
         var _loc4_:int = -1;
         var _loc5_:int = -1;
         var _loc6_:int = -1;
         var _loc7_:int = -1;
         var _loc8_:int = -1;
         var _loc9_:int = -1;
         var _loc10_:String = "";
         var _loc11_:Object = 0;
         var _loc12_:int = 0;
         var _loc13_:int = 0;
         var _loc14_:Boolean = false;
         var _loc15_:Object = {};
         var _loc16_:Object = {};
         _loc15_["/"] = {
            "general":true,
            "date":true,
            "time":false
         };
         _loc15_[":"] = {
            "general":true,
            "date":false,
            "time":true
         };
         _loc15_[" "] = {
            "general":true,
            "date":true,
            "time":false
         };
         _loc15_["."] = {
            "general":true,
            "date":true,
            "time":true
         };
         _loc15_[","] = {
            "general":true,
            "date":true,
            "time":false
         };
         _loc15_["+"] = {
            "general":true,
            "date":false,
            "time":false
         };
         _loc15_["-"] = {
            "general":true,
            "date":true,
            "time":false
         };
         _loc15_["年"] = {
            "general":true,
            "date":true,
            "time":false
         };
         _loc15_["月"] = {
            "general":true,
            "date":true,
            "time":false
         };
         _loc15_["日"] = {
            "general":true,
            "date":true,
            "time":false
         };
         _loc15_["午"] = {
            "general":false,
            "date":false,
            "time":true
         };
         _loc15_["년"] = {
            "general":true,
            "date":true,
            "time":false
         };
         _loc15_["월"] = {
            "general":true,
            "date":true,
            "time":false
         };
         _loc15_["일"] = {
            "general":true,
            "date":true,
            "time":false
         };
         _loc16_["PM"] = true;
         _loc16_["pm"] = true;
         _loc16_["㏘"] = true;
         _loc16_["μμ"] = true;
         _loc16_["午後"] = true;
         _loc16_["上午"] = true;
         _loc16_["오후"] = true;
         var _loc17_:RegExp = /(GMT|UTC)((\+|-)\d\d\d\d )?/ig;
         param1 = param1.replace(_loc17_,"");
         _loc13_ = param1.length;
         while(_loc12_ < _loc13_)
         {
            _loc10_ = param1.charAt(_loc12_);
            _loc12_++;
            if(!(_loc10_ <= " " || _loc10_ == ","))
            {
               if(_loc15_.hasOwnProperty(_loc10_) && _loc15_[_loc10_].general)
               {
                  _loc11_ = _loc10_;
               }
               else if(!("0" <= _loc10_ && _loc10_ <= "9" || _loc15_.hasOwnProperty(_loc10_) && _loc15_[_loc10_].general))
               {
                  _loc19_ = _loc10_;
                  while(_loc12_ < _loc13_)
                  {
                     _loc10_ = param1.charAt(_loc12_);
                     if("0" <= _loc10_ && _loc10_ <= "9" || _loc15_.hasOwnProperty(_loc10_) && _loc15_[_loc10_].general)
                     {
                        break;
                     }
                     _loc19_ = _loc19_ + _loc10_;
                     _loc12_++;
                  }
                  _loc20_ = DateBase.defaultStringKey.length;
                  _loc21_ = 0;
                  while(_loc21_ < _loc20_)
                  {
                     _loc22_ = String(DateBase.defaultStringKey[_loc21_]);
                     if(_loc22_.toLowerCase() == _loc19_.toLowerCase() || _loc22_.toLowerCase().substr(0,3) == _loc19_.toLowerCase())
                     {
                        if(_loc21_ == 13)
                        {
                           if(_loc6_ > 12 || _loc6_ < 1)
                           {
                              break;
                           }
                           if(_loc6_ < 12)
                           {
                              _loc6_ = _loc6_ + 12;
                           }
                        }
                        else if(_loc21_ == 12)
                        {
                           if(_loc6_ > 12 || _loc6_ < 1)
                           {
                              break;
                           }
                           if(_loc6_ == 12)
                           {
                              _loc6_ = 0;
                           }
                        }
                        else if(_loc21_ < 12)
                        {
                           if(_loc4_ < 0)
                           {
                              _loc4_ = _loc21_;
                           }
                           else
                           {
                              break;
                           }
                        }
                        break;
                     }
                     _loc21_++;
                  }
                  _loc11_ = 0;
                  if(_loc16_.hasOwnProperty(_loc19_))
                  {
                     _loc14_ = true;
                     if(_loc6_ > 12)
                     {
                        break;
                     }
                     if(_loc6_ >= 0 && _loc6_ < 12)
                     {
                        _loc6_ = _loc6_ + 12;
                     }
                  }
               }
               else if("0" <= _loc10_ && _loc10_ <= "9")
               {
                  _loc23_ = _loc10_;
                  while("0" <= (_loc10_ = param1.charAt(_loc12_)) && _loc10_ <= "9" && _loc12_ < _loc13_)
                  {
                     _loc23_ = _loc23_ + _loc10_;
                     _loc12_++;
                  }
                  _loc24_ = int(_loc23_);
                  if(_loc24_ >= 70 && !(_loc15_.hasOwnProperty(_loc10_) && _loc15_[_loc10_].time && _loc8_ >= 0))
                  {
                     if(_loc3_ != -1)
                     {
                        break;
                     }
                     if(_loc15_.hasOwnProperty(_loc10_) && _loc15_[_loc10_].date || _loc12_ >= _loc13_)
                     {
                        _loc3_ = _loc24_;
                     }
                     else
                     {
                        break;
                     }
                  }
                  else if(_loc15_.hasOwnProperty(_loc10_) && _loc15_[_loc10_].date)
                  {
                     _loc25_ = _loc3_ != -1;
                     if(param2)
                     {
                        _loc25_ = Boolean(_loc25_ || param2.search("M") < param2.search("D"));
                     }
                     if(_loc25_ && _loc4_ < 0)
                     {
                        _loc4_ = _loc24_ - 1;
                     }
                     else if(_loc5_ < 0)
                     {
                        _loc5_ = _loc24_;
                     }
                     else if(!_loc25_ && _loc4_ < 0)
                     {
                        _loc4_ = _loc24_ - 1;
                     }
                     else if(_loc7_ < 0)
                     {
                        _loc7_ = _loc24_;
                     }
                     else if(_loc8_ < 0)
                     {
                        _loc8_ = _loc24_;
                     }
                     else if(_loc9_ < 0)
                     {
                        _loc9_ = _loc24_;
                     }
                     else
                     {
                        break;
                     }
                  }
                  else if(_loc15_.hasOwnProperty(_loc10_) && _loc15_[_loc10_].time)
                  {
                     if(_loc6_ < 0)
                     {
                        _loc6_ = _loc24_;
                        if(_loc14_)
                        {
                           if(_loc6_ > 12)
                           {
                              break;
                           }
                           if(_loc6_ >= 0 && _loc6_ < 12)
                           {
                              _loc6_ = _loc6_ + 12;
                           }
                        }
                     }
                     else if(_loc7_ < 0)
                     {
                        _loc7_ = _loc24_;
                     }
                     else if(_loc8_ < 0)
                     {
                        _loc8_ = _loc24_;
                     }
                     else if(_loc9_ < 0)
                     {
                        _loc9_ = _loc24_;
                     }
                     else
                     {
                        break;
                     }
                  }
                  else if(_loc6_ >= 0 && _loc7_ < 0)
                  {
                     _loc7_ = _loc24_;
                  }
                  else if(_loc7_ >= 0 && _loc8_ < 0)
                  {
                     _loc8_ = _loc24_;
                  }
                  else if(_loc8_ >= 0 && _loc9_ < 0)
                  {
                     _loc9_ = _loc24_;
                  }
                  else if(_loc5_ < 0)
                  {
                     _loc5_ = _loc24_;
                  }
                  else if(_loc3_ < 0 && _loc4_ >= 0 && _loc5_ >= 0)
                  {
                     _loc3_ = 2000 + _loc24_;
                  }
                  else
                  {
                     break;
                  }
                  _loc11_ = 0;
               }
            }
         }
         if(_loc3_ < 0 || _loc4_ < 0 || _loc4_ > 11 || _loc5_ < 1 || _loc5_ > 31)
         {
            return null;
         }
         if(_loc9_ < 0)
         {
            _loc9_ = 0;
         }
         if(_loc8_ < 0)
         {
            _loc8_ = 0;
         }
         if(_loc7_ < 0)
         {
            _loc7_ = 0;
         }
         if(_loc6_ < 0)
         {
            _loc6_ = 0;
         }
         var _loc18_:Date = new Date(_loc3_,_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_);
         if(_loc5_ != _loc18_.getDate() || _loc4_ != _loc18_.getMonth())
         {
            return null;
         }
         return _loc18_;
      }
      
      public function get formatString() : String
      {
         return this._formatString;
      }
      
      public function set formatString(param1:String) : void
      {
         this.formatStringOverride = param1;
         this._formatString = param1 != null?param1:resourceManager.getString("SharedResources","dateFormat");
      }
      
      override protected function resourcesChanged() : void
      {
         super.resourcesChanged();
         this.formatString = this.formatStringOverride;
      }
      
      override public function format(param1:Object) : String
      {
         var _loc2_:String = null;
         if(error)
         {
            error = null;
         }
         if(!param1 || param1 is String && param1 == "")
         {
            error = defaultInvalidValueError;
            return "";
         }
         if(param1 is String)
         {
            param1 = DateFormatter.parseDateString(String(param1),this.formatString);
            if(!param1)
            {
               error = defaultInvalidValueError;
               return "";
            }
         }
         else if(!(param1 is Date))
         {
            error = defaultInvalidValueError;
            return "";
         }
         var _loc3_:int = 0;
         var _loc4_:String = "";
         var _loc5_:int = this.formatString.length;
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_)
         {
            _loc2_ = this.formatString.charAt(_loc6_);
            if(VALID_PATTERN_CHARS.indexOf(_loc2_) != -1 && _loc2_ != ",")
            {
               _loc3_++;
               if(_loc4_.indexOf(_loc2_) == -1)
               {
                  _loc4_ = _loc4_ + _loc2_;
               }
               else if(_loc2_ != this.formatString.charAt(Math.max(_loc6_ - 1,0)))
               {
                  error = defaultInvalidFormatError;
                  return "";
               }
            }
            _loc6_++;
         }
         if(_loc3_ < 1)
         {
            error = defaultInvalidFormatError;
            return "";
         }
         var _loc7_:StringFormatter = new StringFormatter(this.formatString,VALID_PATTERN_CHARS,DateBase.extractTokenDate);
         return _loc7_.formatValue(param1);
      }
   }
}
