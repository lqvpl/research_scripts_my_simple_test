package mx.formatters
{
   import mx.core.mx_internal;
   import mx.resources.IResourceManager;
   import mx.resources.ResourceManager;
   import flash.events.Event;
   
   use namespace mx_internal;
   
   public class DateBase
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      private static var initialized:Boolean = false;
      
      private static var _resourceManager:IResourceManager;
      
      private static var _dayNamesLong:Array;
      
      private static var dayNamesLongOverride:Array;
      
      private static var _dayNamesShort:Array;
      
      private static var dayNamesShortOverride:Array;
      
      private static var _monthNamesLong:Array;
      
      private static var monthNamesLongOverride:Array;
      
      private static var _monthNamesShort:Array;
      
      private static var monthNamesShortOverride:Array;
      
      private static var _timeOfDay:Array;
      
      private static var timeOfDayOverride:Array;
      
      private static var _timezoneName:String = "GMT";
      
      private static var _timezoneHourMinuteSeperator:String = ":";
       
      
      public function DateBase()
      {
         super();
      }
      
      private static function get resourceManager() : IResourceManager
      {
         if(!_resourceManager)
         {
            _resourceManager = ResourceManager.getInstance();
         }
         return _resourceManager;
      }
      
      public static function get dayNamesLong() : Array
      {
         initialize();
         return _dayNamesLong;
      }
      
      public static function set dayNamesLong(param1:Array) : void
      {
         dayNamesLongOverride = param1;
         _dayNamesLong = param1 != null?param1:resourceManager.getStringArray("SharedResources","dayNames");
      }
      
      public static function get dayNamesShort() : Array
      {
         initialize();
         return _dayNamesShort;
      }
      
      public static function set dayNamesShort(param1:Array) : void
      {
         dayNamesShortOverride = param1;
         _dayNamesShort = param1 != null?param1:resourceManager.getStringArray("formatters","dayNamesShort");
      }
      
      mx_internal static function get defaultStringKey() : Array
      {
         initialize();
         return monthNamesLong.concat(timeOfDay);
      }
      
      public static function get monthNamesLong() : Array
      {
         initialize();
         return _monthNamesLong;
      }
      
      public static function set monthNamesLong(param1:Array) : void
      {
         var _loc2_:String = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         monthNamesLongOverride = param1;
         _monthNamesLong = param1 != null?param1:resourceManager.getStringArray("SharedResources","monthNames");
         if(param1 == null)
         {
            _loc2_ = resourceManager.getString("SharedResources","monthSymbol");
            if(_loc2_ != " ")
            {
               _loc3_ = !!_monthNamesLong?int(_monthNamesLong.length):0;
               _loc4_ = 0;
               while(_loc4_ < _loc3_)
               {
                  _monthNamesLong[_loc4_] = _monthNamesLong[_loc4_] + _loc2_;
                  _loc4_++;
               }
            }
         }
      }
      
      public static function get monthNamesShort() : Array
      {
         initialize();
         return _monthNamesShort;
      }
      
      public static function set monthNamesShort(param1:Array) : void
      {
         var _loc2_:String = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         monthNamesShortOverride = param1;
         _monthNamesShort = param1 != null?param1:resourceManager.getStringArray("formatters","monthNamesShort");
         if(param1 == null)
         {
            _loc2_ = resourceManager.getString("SharedResources","monthSymbol");
            if(_loc2_ != " ")
            {
               _loc3_ = !!_monthNamesShort?int(_monthNamesShort.length):0;
               _loc4_ = 0;
               while(_loc4_ < _loc3_)
               {
                  _monthNamesShort[_loc4_] = _monthNamesShort[_loc4_] + _loc2_;
                  _loc4_++;
               }
            }
         }
      }
      
      public static function get timeOfDay() : Array
      {
         initialize();
         return _timeOfDay;
      }
      
      public static function set timeOfDay(param1:Array) : void
      {
         timeOfDayOverride = param1;
         var _loc2_:String = resourceManager.getString("formatters","am");
         var _loc3_:String = resourceManager.getString("formatters","pm");
         _timeOfDay = param1 != null?param1:[_loc2_,_loc3_];
      }
      
      public static function get timezoneName() : String
      {
         return _timezoneName;
      }
      
      public static function set timezoneName(param1:String) : void
      {
         _timezoneName = param1;
      }
      
      public static function get timezoneHourMinuteSeperator() : String
      {
         return _timezoneHourMinuteSeperator;
      }
      
      public static function set timezoneHourMinuteSeperator(param1:String) : void
      {
         _timezoneHourMinuteSeperator = param1;
      }
      
      private static function initialize() : void
      {
         if(!initialized)
         {
            resourceManager.addEventListener(Event.CHANGE,static_resourceManager_changeHandler,false,0,true);
            static_resourcesChanged();
            initialized = true;
         }
      }
      
      private static function static_resourcesChanged() : void
      {
         dayNamesLong = dayNamesLongOverride;
         dayNamesShort = dayNamesShortOverride;
         monthNamesLong = monthNamesLongOverride;
         monthNamesShort = monthNamesShortOverride;
         timeOfDay = timeOfDayOverride;
      }
      
      mx_internal static function extractTokenDate(param1:Date, param2:Object) : String
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:String = null;
         var _loc8_:int = 0;
         var _loc9_:int = 0;
         var _loc10_:int = 0;
         var _loc11_:int = 0;
         var _loc12_:int = 0;
         var _loc13_:String = null;
         initialize();
         var _loc3_:String = "";
         var _loc4_:int = int(param2.end) - int(param2.begin);
         switch(param2.token)
         {
            case "Y":
               _loc7_ = param1.getFullYear().toString();
               if(_loc4_ < 3)
               {
                  return _loc7_.substr(2);
               }
               if(_loc4_ > 4)
               {
                  return setValue(Number(_loc7_),_loc4_);
               }
               return _loc7_;
            case "M":
               _loc8_ = int(param1.getMonth());
               if(_loc4_ < 3)
               {
                  _loc8_++;
                  _loc3_ = _loc3_ + setValue(_loc8_,_loc4_);
                  return _loc3_;
               }
               if(_loc4_ == 3)
               {
                  return monthNamesShort[_loc8_];
               }
               return monthNamesLong[_loc8_];
            case "D":
               _loc5_ = int(param1.getDate());
               _loc3_ = _loc3_ + setValue(_loc5_,_loc4_);
               return _loc3_;
            case "E":
               _loc5_ = int(param1.getDay());
               if(_loc4_ < 3)
               {
                  _loc3_ = _loc3_ + setValue(_loc5_,_loc4_);
                  return _loc3_;
               }
               if(_loc4_ == 3)
               {
                  return dayNamesShort[_loc5_];
               }
               return dayNamesLong[_loc5_];
            case "A":
               _loc6_ = int(param1.getHours());
               if(_loc6_ < 12)
               {
                  return timeOfDay[0];
               }
               return timeOfDay[1];
            case "H":
               _loc6_ = int(param1.getHours());
               if(_loc6_ == 0)
               {
                  _loc6_ = 24;
               }
               _loc3_ = _loc3_ + setValue(_loc6_,_loc4_);
               return _loc3_;
            case "J":
               _loc6_ = int(param1.getHours());
               _loc3_ = _loc3_ + setValue(_loc6_,_loc4_);
               return _loc3_;
            case "K":
               _loc6_ = int(param1.getHours());
               if(_loc6_ >= 12)
               {
                  _loc6_ = _loc6_ - 12;
               }
               _loc3_ = _loc3_ + setValue(_loc6_,_loc4_);
               return _loc3_;
            case "L":
               _loc6_ = int(param1.getHours());
               if(_loc6_ == 0)
               {
                  _loc6_ = 12;
               }
               else if(_loc6_ > 12)
               {
                  _loc6_ = _loc6_ - 12;
               }
               _loc3_ = _loc3_ + setValue(_loc6_,_loc4_);
               return _loc3_;
            case "N":
               _loc9_ = int(param1.getMinutes());
               _loc3_ = _loc3_ + setValue(_loc9_,_loc4_);
               return _loc3_;
            case "S":
               _loc10_ = int(param1.getSeconds());
               _loc3_ = _loc3_ + setValue(_loc10_,_loc4_);
               return _loc3_;
            case "Q":
               _loc11_ = int(param1.getMilliseconds());
               _loc3_ = _loc3_ + setValue(_loc11_,_loc4_);
               return _loc3_;
            case "Z":
               _loc3_ = _loc3_ + timezoneName;
               return _loc3_;
            case "O":
               _loc12_ = -1 * int(param1.timezoneOffset);
               _loc6_ = _loc12_ / 60;
               _loc9_ = _loc12_ - _loc6_ * 60;
               _loc13_ = "";
               if(_loc4_ <= 2 && _loc9_ == 0)
               {
                  _loc13_ = _loc13_ + setValue(_loc6_,_loc4_);
               }
               else
               {
                  _loc13_ = _loc13_ + (setValue(_loc6_,_loc4_ - 2) + timezoneHourMinuteSeperator + setValue(_loc9_,2));
               }
               if(_loc12_ >= 0)
               {
                  _loc13_ = "+" + _loc13_;
               }
               _loc3_ = _loc3_ + _loc13_;
               return _loc3_;
            default:
               return _loc3_;
         }
      }
      
      private static function setValue(param1:Object, param2:int) : String
      {
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc3_:* = "";
         var _loc4_:int = param1.toString().length;
         if(_loc4_ < param2)
         {
            _loc5_ = param2 - _loc4_;
            _loc6_ = 0;
            while(_loc6_ < _loc5_)
            {
               _loc3_ = _loc3_ + "0";
               _loc6_++;
            }
         }
         _loc3_ = _loc3_ + param1.toString();
         return _loc3_;
      }
      
      private static function static_resourceManager_changeHandler(param1:Event) : void
      {
         static_resourcesChanged();
      }
   }
}
