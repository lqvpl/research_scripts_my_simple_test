package com.enfluid.ltp.util
{
   import spark.events.PopUpEvent;
   import spark.primitives.Rect;
   import mx.binding.BindingManager;
   
   public final class GooglePageRankUtil
   {
       
      
      public function GooglePageRankUtil()
      {
         super();
      }
      
      public static function CS(param1:String) : String
      {
         var _loc2_:String = null;
         §§push(0);
         if(_loc9_)
         {
            §§push(-§§pop() * 101 - 97);
         }
         var _loc6_:* = §§pop();
         var _loc3_:String = "Mining PageRank is AGAINST GOOGLE\'S TERMS OF SERVICE. Yes, I\'m talking to you, scammer.";
         §§push(16909125);
         if(_loc9_)
         {
            §§push(-(§§pop() - 74 - 18) * 62);
         }
         var _loc4_:uint = §§pop();
         var _loc5_:int = param1.length;
         §§push(0);
         if(_loc9_)
         {
            §§push(-§§pop() + 110 + 1 + 1);
         }
         var _loc7_:* = §§pop();
         while(_loc7_ < _loc5_)
         {
            _loc6_ = int(_loc3_.charCodeAt(_loc7_ % _loc3_.length));
            _loc4_ = _loc4_ ^ (_loc6_ ^ param1.charCodeAt(_loc7_));
            §§push();
            §§push(_loc4_);
            §§push(23);
            if(_loc9_)
            {
               §§push((-(§§pop() * 77) + 118) * 21);
            }
            §§push(§§pop().ZeroFill(§§pop(),§§pop()));
            §§push(_loc4_);
            §§push(9);
            if(_loc8_)
            {
               §§push(§§pop() + 1 - 1 - 1);
            }
            _loc4_ = §§pop() | §§pop() << §§pop();
            _loc7_++;
         }
         _loc2_ = "8" + HexEncode(_loc4_);
         return _loc2_;
      }
      
      public static function Hex8(param1:uint) : String
      {
         §§push(param1);
         §§push(16);
         if(_loc3_)
         {
            §§push(-(§§pop() - 80) + 1);
         }
         var _loc2_:String = §§pop().toString(§§pop());
         §§push(_loc2_.length);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 58 + 1 - 1 - 1 - 1 + 53) * 119);
         }
         if(§§pop() == §§pop())
         {
            _loc2_ = "0" + _loc2_;
         }
         return _loc2_;
      }
      
      public static function HexEncode(param1:uint) : String
      {
         var _loc2_:String = null;
         §§push();
         §§push();
         §§push(param1);
         §§push(24);
         if(_loc3_)
         {
            §§push(§§pop() - 96 + 17 + 31 - 1);
         }
         _loc2_ = §§pop().Hex8(§§pop().ZeroFill(§§pop(),§§pop()));
         §§push(_loc2_);
         §§push();
         §§push();
         §§push(param1);
         §§push(16);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 89 - 68);
         }
         §§push(§§pop().ZeroFill(§§pop(),§§pop()));
         §§push(255);
         if(_loc3_)
         {
            §§push(-§§pop() + 39 - 1 - 1);
         }
         _loc2_ = §§pop() + §§pop().Hex8(§§pop() & §§pop());
         §§push(_loc2_);
         §§push();
         §§push();
         §§push(param1);
         §§push(8);
         if(_loc3_)
         {
            §§push(-(---§§pop() * 95 + 97));
         }
         §§push(§§pop().ZeroFill(§§pop(),§§pop()));
         §§push(255);
         if(_loc3_)
         {
            §§push((-§§pop() - 99) * 22 - 45);
         }
         _loc2_ = §§pop() + §§pop().Hex8(§§pop() & §§pop());
         §§push(_loc2_);
         §§push();
         §§push(param1);
         §§push(255);
         if(_loc3_)
         {
            §§push((§§pop() + 10 + 1 + 1) * 48);
         }
         _loc2_ = §§pop() + §§pop().Hex8(§§pop() & §§pop());
         return _loc2_;
      }
      
      public static function ZeroFill(param1:uint, param2:uint) : uint
      {
         var _loc3_:uint = 2147483648;
         if(_loc3_ & param1)
         {
            §§push(param1);
            §§push(1);
            if(_loc5_)
            {
               §§push(-(§§pop() * 117 + 61 - 32));
            }
            param1 = §§pop() >> §§pop();
            param1 = param1 & ~_loc3_;
            §§push(param1);
            §§push(1073741824);
            if(_loc5_)
            {
               §§push((§§pop() - 1) * 79 - 37);
            }
            param1 = §§pop() | §§pop();
            param1 = param1 >> param2 - 1;
         }
         else
         {
            param1 = param1 >> param2;
         }
         return param1;
      }
      
      public static function getCheckSum(param1:String) : String
      {
         return CS(param1);
      }
   }
}
