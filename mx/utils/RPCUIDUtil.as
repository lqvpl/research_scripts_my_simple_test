package mx.utils
{
   import mx.core.mx_internal;
   import flash.utils.ByteArray;
   
   use namespace mx_internal;
   
   public class RPCUIDUtil
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      private static const ALPHA_CHAR_CODES:Array = [48,49,50,51,52,53,54,55,56,57,65,66,67,68,69,70];
      
      private static const DASH:int = 45;
      
      private static const UIDBuffer:ByteArray = new ByteArray();
       
      
      public function RPCUIDUtil()
      {
         super();
      }
      
      public static function createUID() : String
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         UIDBuffer.position = 0;
         _loc1_ = 0;
         while(_loc1_ < 8)
         {
            UIDBuffer.writeByte(ALPHA_CHAR_CODES[int(Math.random() * 16)]);
            _loc1_++;
         }
         _loc1_ = 0;
         while(_loc1_ < 3)
         {
            UIDBuffer.writeByte(DASH);
            _loc2_ = 0;
            while(_loc2_ < 4)
            {
               UIDBuffer.writeByte(ALPHA_CHAR_CODES[int(Math.random() * 16)]);
               _loc2_++;
            }
            _loc1_++;
         }
         UIDBuffer.writeByte(DASH);
         var _loc3_:uint = new Date().getTime();
         var _loc4_:String = _loc3_.toString(16).toUpperCase();
         _loc1_ = 8;
         while(_loc1_ > _loc4_.length)
         {
            UIDBuffer.writeByte(48);
            _loc1_--;
         }
         UIDBuffer.writeUTFBytes(_loc4_);
         _loc1_ = 0;
         while(_loc1_ < 4)
         {
            UIDBuffer.writeByte(ALPHA_CHAR_CODES[int(Math.random() * 16)]);
            _loc1_++;
         }
         return UIDBuffer.toString();
      }
      
      public static function fromByteArray(param1:ByteArray) : String
      {
         var _loc2_:uint = 0;
         var _loc3_:uint = 0;
         var _loc4_:int = 0;
         if(param1 != null && param1.length >= 16 && param1.bytesAvailable >= 16)
         {
            UIDBuffer.position = 0;
            _loc2_ = 0;
            _loc3_ = 0;
            while(_loc3_ < 16)
            {
               if(_loc3_ == 4 || _loc3_ == 6 || _loc3_ == 8 || _loc3_ == 10)
               {
                  UIDBuffer.writeByte(DASH);
               }
               _loc4_ = param1.readByte();
               UIDBuffer.writeByte(ALPHA_CHAR_CODES[(_loc4_ & 240) >>> 4]);
               UIDBuffer.writeByte(ALPHA_CHAR_CODES[_loc4_ & 15]);
               _loc3_++;
            }
            return UIDBuffer.toString();
         }
         return null;
      }
      
      public static function isUID(param1:String) : Boolean
      {
         var _loc2_:uint = 0;
         var _loc3_:Number = NaN;
         if(param1 != null && param1.length == 36)
         {
            _loc2_ = 0;
            while(_loc2_ < 36)
            {
               _loc3_ = param1.charCodeAt(_loc2_);
               if(_loc2_ == 8 || _loc2_ == 13 || _loc2_ == 18 || _loc2_ == 23)
               {
                  if(_loc3_ != DASH)
                  {
                     return false;
                  }
               }
               else if(_loc3_ < 48 || _loc3_ > 70 || _loc3_ > 57 && _loc3_ < 65)
               {
                  return false;
               }
               _loc2_++;
            }
            return true;
         }
         return false;
      }
      
      public static function toByteArray(param1:String) : ByteArray
      {
         var _loc2_:ByteArray = null;
         var _loc3_:uint = 0;
         var _loc4_:String = null;
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         if(isUID(param1))
         {
            _loc2_ = new ByteArray();
            _loc3_ = 0;
            while(_loc3_ < param1.length)
            {
               _loc4_ = param1.charAt(_loc3_);
               if(_loc4_ != "-")
               {
                  _loc5_ = getDigit(_loc4_);
                  _loc3_++;
                  _loc6_ = getDigit(param1.charAt(_loc3_));
                  _loc2_.writeByte((_loc5_ << 4 | _loc6_) & 255);
               }
               _loc3_++;
            }
            _loc2_.position = 0;
            return _loc2_;
         }
         return null;
      }
      
      private static function getDigit(param1:String) : uint
      {
         switch(param1)
         {
            case "A":
            case "a":
               return 10;
            case "B":
            case "b":
               return 11;
            case "C":
            case "c":
               return 12;
            case "D":
            case "d":
               return 13;
            case "E":
            case "e":
               return 14;
            case "F":
            case "f":
               return 15;
            default:
               return new uint(param1);
         }
      }
   }
}
