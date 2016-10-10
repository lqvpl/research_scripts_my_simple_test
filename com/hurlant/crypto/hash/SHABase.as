package com.hurlant.crypto.hash
{
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class SHABase implements IHash
   {
       
      
      public var pad_size:int = 40;
      
      public function SHABase()
      {
         super();
      }
      
      public function getHashSize() : uint
      {
         §§push(0);
         if(_loc1_)
         {
            §§push((§§pop() + 1 + 1) * 93 + 1 + 116 + 102 - 1);
         }
         return §§pop();
      }
      
      public function toString() : String
      {
         return "sha";
      }
      
      public function hash(param1:ByteArray) : ByteArray
      {
         var _loc2_:uint = param1.length;
         var _loc3_:String = param1.endian;
         param1.endian = Endian.BIG_ENDIAN;
         §§push(_loc2_);
         §§push(8);
         if(_loc11_)
         {
            §§push(§§pop() - 40 + 1 + 1 - 82 + 7 - 1 - 30);
         }
         var _loc4_:uint = §§pop() * §§pop();
         while(true)
         {
            §§push(param1.length);
            §§push(4);
            if(_loc10_)
            {
               §§push(§§pop() + 1 + 21 - 71);
            }
            §§push(§§pop() % §§pop());
            §§push(0);
            if(_loc11_)
            {
               §§push(§§pop() - 28 - 32 + 1 + 39 - 40);
            }
            if(§§pop() == §§pop())
            {
               break;
            }
            §§push(param1);
            §§push(param1.length);
            §§push(0);
            if(_loc10_)
            {
               §§push(((§§pop() + 0) * 70 - 1) * 14 * 78);
            }
            §§pop()[§§pop()] = §§pop();
         }
         §§push(param1);
         §§push(0);
         if(_loc10_)
         {
            §§push(---(§§pop() + 1 + 1) - 47);
         }
         §§pop().position = §§pop();
         var _loc5_:Array = [];
         §§push(0);
         if(_loc10_)
         {
            §§push((§§pop() + 95) * 118 + 1 - 118);
         }
         var _loc6_:uint = §§pop();
         while(_loc6_ < param1.length)
         {
            _loc5_.push(param1.readUnsignedInt());
            §§push(_loc6_);
            §§push(4);
            if(_loc11_)
            {
               §§push(§§pop() - 1 + 1 + 1 + 53 - 17);
            }
            _loc6_ = §§pop() + §§pop();
         }
         var _loc7_:Array = core(_loc5_,_loc4_);
         var _loc8_:ByteArray = new ByteArray();
         §§push(getHashSize());
         §§push(4);
         if(_loc11_)
         {
            §§push(-(§§pop() + 1 - 40 - 1 + 1) - 78);
         }
         var _loc9_:uint = §§pop() / §§pop();
         §§push(0);
         if(_loc10_)
         {
            §§push(§§pop() - 1 - 107 + 1 - 1);
         }
         _loc6_ = §§pop();
         while(_loc6_ < _loc9_)
         {
            _loc8_.writeUnsignedInt(_loc7_[_loc6_]);
            _loc6_++;
         }
         param1.length = _loc2_;
         param1.endian = _loc3_;
         return _loc8_;
      }
      
      public function getPadSize() : int
      {
         return pad_size;
      }
      
      public function getInputSize() : uint
      {
         §§push(64);
         if(_loc1_)
         {
            §§push(§§pop() + 73 + 1 - 97 + 43);
         }
         return §§pop();
      }
      
      protected function core(param1:Array, param2:uint) : Array
      {
         return null;
      }
   }
}
