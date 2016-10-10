package com.enfluid.ltp.util
{
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.dataandfilters.target;
   import mx.core.DeferredInstanceFromFunction;
   import mx.binding.Binding;
   import spark.components.CheckBox;
   import mx.binding.BindingManager;
   import hr.binaria.asx3m.annotations.Annotation;
   import system.data.Iterator;
   
   use namespace mx_internal;
   
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
            §§push((§§pop() - 119) * 62 + 10 + 1 - 78);
         }
         var _loc6_:* = §§pop();
         var _loc3_:String = "Mining PageRank is AGAINST GOOGLE\'S TERMS OF SERVICE. Yes, I\'m talking to you, scammer.";
         §§push(16909125);
         if(_loc8_)
         {
            §§push((§§pop() * 4 * 30 + 113) * 33);
         }
         var _loc4_:uint = §§pop();
         var _loc5_:int = param1.length;
         §§push(0);
         if(_loc9_)
         {
            §§push((-(§§pop() * 105 - 1 + 32) + 47) * 52);
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
               §§push(((-§§pop() - 1) * 87 + 45) * 83 + 41 - 64);
            }
            §§push(§§pop().ZeroFill(§§pop(),§§pop()));
            §§push(_loc4_);
            §§push(9);
            if(_loc8_)
            {
               §§push(§§pop() - 1 - 1 + 74 + 1 + 63);
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
            §§push(--(§§pop() * 32 - 8) + 1 - 1 - 1);
         }
         var _loc2_:String = §§pop().toString(§§pop());
         §§push(_loc2_.length);
         §§push(1);
         if(_loc4_)
         {
            §§push((§§pop() - 119 - 1) * 87);
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
            §§push(§§pop() + 1 - 63 + 54 + 1);
         }
         _loc2_ = §§pop().Hex8(§§pop().ZeroFill(§§pop(),§§pop()));
         §§push(_loc2_);
         §§push();
         §§push();
         §§push(param1);
         §§push(16);
         if(_loc3_)
         {
            §§push((-(§§pop() + 103 - 1) - 84) * 81);
         }
         §§push(§§pop().ZeroFill(§§pop(),§§pop()));
         §§push(255);
         if(_loc4_)
         {
            §§push(-(-(§§pop() + 1) + 1 - 52 + 1 - 1));
         }
         _loc2_ = §§pop() + §§pop().Hex8(§§pop() & §§pop());
         §§push(_loc2_);
         §§push();
         §§push();
         §§push(param1);
         §§push(8);
         if(_loc3_)
         {
            §§push((§§pop() - 118 - 93 + 113 - 1) * 34);
         }
         §§push(§§pop().ZeroFill(§§pop(),§§pop()));
         §§push(255);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 1));
         }
         _loc2_ = §§pop() + §§pop().Hex8(§§pop() & §§pop());
         §§push(_loc2_);
         §§push();
         §§push(param1);
         §§push(255);
         if(_loc3_)
         {
            §§push(-(-§§pop() - 1 - 1 - 1) - 1);
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
               §§push((§§pop() + 41 - 1 + 1 + 103) * 14 - 104 + 1);
            }
            param1 = §§pop() >> §§pop();
            param1 = param1 & ~_loc3_;
            §§push(param1);
            §§push(1073741824);
            if(_loc4_)
            {
               §§push(-(§§pop() + 1 + 1) * 65 + 25 - 1);
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
