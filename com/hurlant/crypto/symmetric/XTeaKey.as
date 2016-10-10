package com.hurlant.crypto.symmetric
{
   import flash.utils.ByteArray;
   import spark.components.DataGrid;
   import spark.components.GridColumnHeaderGroup;
   import spark.components.gridClasses.IGridVisualElement;
   import spark.components.gridClasses.GridColumn;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.DeferredInstanceFromFunction;
   import com.enfluid.ltp.util.Logger;
   import flash.utils.setTimeout;
   import com.hurlant.crypto.prng.Random;
   import flash.filesystem.FileStream;
   import flash.filesystem.File;
   import flash.filesystem.FileMode;
   import com.hurlant.util.Memory;
   
   public final class XTeaKey implements ISymmetricKey
   {
       
      
      private var k:Array;
      
      public const NUM_ROUNDS:uint = 64;
      
      public function XTeaKey(param1:ByteArray)
      {
         super();
         §§push(param1);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() * 44 - 1));
         }
         §§pop().position = §§pop();
         k = [param1.readUnsignedInt(),param1.readUnsignedInt(),param1.readUnsignedInt(),param1.readUnsignedInt()];
      }
      
      public static function parseKey(param1:String) : XTeaKey
      {
         var _loc2_:ByteArray = new ByteArray();
         §§push(_loc2_);
         §§push();
         §§push(param1);
         §§push(0);
         if(_loc4_)
         {
            §§push(-((§§pop() + 90) * 4) - 58 - 15);
         }
         §§push(§§pop().substr(§§pop(),8));
         §§push(16);
         if(_loc3_)
         {
            §§push(--(§§pop() - 1 - 1));
         }
         §§pop().writeUnsignedInt(§§pop().parseInt(§§pop(),§§pop()));
         §§push(_loc2_);
         §§push();
         §§push(param1);
         §§push(8);
         if(_loc4_)
         {
            §§push(-(-(-§§pop() + 1 - 41) - 14 - 113));
         }
         §§push(§§pop().substr(§§pop(),§§pop()));
         §§push(16);
         if(_loc4_)
         {
            §§push(-(§§pop() + 46 + 1 - 1 + 1 + 50) - 47);
         }
         §§pop().writeUnsignedInt(§§pop().parseInt(§§pop(),§§pop()));
         §§push(_loc2_);
         §§push();
         §§push(param1);
         §§push(16);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 55 + 9 + 1 - 1);
         }
         §§push(§§pop().substr(§§pop(),8));
         §§push(16);
         if(_loc3_)
         {
            §§push(----§§pop() - 1 - 31);
         }
         §§pop().writeUnsignedInt(§§pop().parseInt(§§pop(),§§pop()));
         §§push(_loc2_);
         §§push();
         §§push(param1);
         §§push(24);
         if(_loc3_)
         {
            §§push(((§§pop() - 1 + 1) * 11 - 109) * 96);
         }
         §§push(§§pop().substr(§§pop(),8));
         §§push(16);
         if(_loc4_)
         {
            §§push(-(§§pop() + 1) * 29 + 1 - 72 - 99 + 80);
         }
         §§pop().writeUnsignedInt(§§pop().parseInt(§§pop(),§§pop()));
         §§push(_loc2_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() + 1 + 1));
         }
         §§pop().position = §§pop();
         return new XTeaKey(_loc2_);
      }
      
      public function encrypt(param1:ByteArray, param2:uint = 0) : void
      {
         §§push(0);
         if(_loc8_)
         {
            §§push((§§pop() * 109 - 1 + 1) * 66 * 88 * 38);
         }
         var _loc5_:uint = §§pop();
         param1.position = param2;
         var _loc3_:uint = param1.readUnsignedInt();
         var _loc4_:uint = param1.readUnsignedInt();
         §§push(0);
         if(_loc8_)
         {
            §§push(§§pop() - 67 - 11 + 24 + 53 - 21 - 1);
         }
         var _loc6_:uint = §§pop();
         var _loc7_:uint = 2654435769;
         §§push(0);
         if(_loc8_)
         {
            §§push(-(-(§§pop() - 18) - 1) - 1 + 1);
         }
         _loc5_ = §§pop();
         while(_loc5_ < NUM_ROUNDS)
         {
            §§push(_loc3_);
            §§push(_loc4_);
            §§push(4);
            if(_loc8_)
            {
               §§push(-§§pop() - 116 + 83 - 17);
            }
            §§push(§§pop() << §§pop());
            §§push(_loc4_);
            §§push(5);
            if(_loc8_)
            {
               §§push(-(-(§§pop() + 109 - 79 - 1) - 1));
            }
            §§push((§§pop() ^ §§pop() >> §§pop()) + _loc4_);
            §§push(_loc6_);
            §§push(k);
            §§push(_loc6_);
            §§push(3);
            if(_loc9_)
            {
               §§push(§§pop() - 88 - 1 - 1);
            }
            _loc3_ = §§pop() + (§§pop() ^ §§pop() + §§pop()[§§pop() & §§pop()]);
            _loc6_ = _loc6_ + _loc7_;
            §§push(_loc4_);
            §§push(_loc3_);
            §§push(4);
            if(_loc8_)
            {
               §§push(-§§pop() + 102 - 42 + 1 + 106 - 4);
            }
            §§push(§§pop() << §§pop());
            §§push(_loc3_);
            §§push(5);
            if(_loc9_)
            {
               §§push((§§pop() - 87 + 25 - 50) * 29 - 1 - 24);
            }
            §§push((§§pop() ^ §§pop() >> §§pop()) + _loc3_);
            §§push(_loc6_);
            §§push(k);
            §§push(_loc6_);
            §§push(11);
            if(_loc8_)
            {
               §§push(§§pop() + 1 + 1 + 1);
            }
            §§push(§§pop() >> §§pop());
            §§push(3);
            if(_loc8_)
            {
               §§push(-(§§pop() - 109 + 109 - 1) * 52 - 1);
            }
            _loc4_ = §§pop() + (§§pop() ^ §§pop() + §§pop()[§§pop() & §§pop()]);
            _loc5_++;
         }
         §§push(param1);
         §§push(param1.position);
         §§push(8);
         if(_loc9_)
         {
            §§push(-(§§pop() + 1 - 8) - 1);
         }
         §§pop().position = §§pop() - §§pop();
         param1.writeUnsignedInt(_loc3_);
         param1.writeUnsignedInt(_loc4_);
      }
      
      public function decrypt(param1:ByteArray, param2:uint = 0) : void
      {
         §§push(0);
         if(_loc8_)
         {
            §§push(§§pop() * 27 + 1 + 0 - 1 + 1);
         }
         var _loc5_:uint = §§pop();
         param1.position = param2;
         var _loc3_:uint = param1.readUnsignedInt();
         var _loc4_:uint = param1.readUnsignedInt();
         var _loc6_:uint = 2654435769;
         var _loc7_:uint = _loc6_ * NUM_ROUNDS;
         §§push(0);
         if(_loc9_)
         {
            §§push(-(§§pop() - 52 - 1 + 1) - 1);
         }
         _loc5_ = §§pop();
         while(_loc5_ < NUM_ROUNDS)
         {
            §§push(_loc4_);
            §§push(_loc3_);
            §§push(4);
            if(_loc8_)
            {
               §§push(-(§§pop() + 1 - 75));
            }
            §§push(§§pop() << §§pop());
            §§push(_loc3_);
            §§push(5);
            if(_loc9_)
            {
               §§push((-((§§pop() + 1) * 71) - 1 - 33 - 15) * 46);
            }
            §§push((§§pop() ^ §§pop() >> §§pop()) + _loc3_);
            §§push(_loc7_);
            §§push(k);
            §§push(_loc7_);
            §§push(11);
            if(_loc9_)
            {
               §§push(§§pop() - 1 + 1 - 101);
            }
            §§push(§§pop() >> §§pop());
            §§push(3);
            if(_loc8_)
            {
               §§push((-§§pop() - 66 + 91 + 38) * 78 * 96 - 28);
            }
            _loc4_ = §§pop() - (§§pop() ^ §§pop() + §§pop()[§§pop() & §§pop()]);
            _loc7_ = _loc7_ - _loc6_;
            §§push(_loc3_);
            §§push(_loc4_);
            §§push(4);
            if(_loc9_)
            {
               §§push(§§pop() + 53 + 82 + 1 - 79 + 114);
            }
            §§push(§§pop() << §§pop());
            §§push(_loc4_);
            §§push(5);
            if(_loc9_)
            {
               §§push(-(--§§pop() - 1) - 102 + 1);
            }
            §§push((§§pop() ^ §§pop() >> §§pop()) + _loc4_);
            §§push(_loc7_);
            §§push(k);
            §§push(_loc7_);
            §§push(3);
            if(_loc9_)
            {
               §§push((§§pop() + 1) * 7 + 12 + 1 - 1 + 1);
            }
            _loc3_ = §§pop() - (§§pop() ^ §§pop() + §§pop()[§§pop() & §§pop()]);
            _loc5_++;
         }
         §§push(param1);
         §§push(param1.position);
         §§push(8);
         if(_loc8_)
         {
            §§push(§§pop() * 85 - 66 - 80);
         }
         §§pop().position = §§pop() - §§pop();
         param1.writeUnsignedInt(_loc3_);
         param1.writeUnsignedInt(_loc4_);
      }
      
      public function getBlockSize() : uint
      {
         §§push(8);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) * 25 + 1 - 1);
         }
         return §§pop();
      }
      
      public function toString() : String
      {
         return "xtea";
      }
      
      public function dispose() : void
      {
         var _loc1_:Random = new Random();
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() * 116 + 8 - 69 + 1);
         }
         var _loc2_:uint = §§pop();
         while(_loc2_ < k.length)
         {
            k[_loc2_] = _loc1_.nextByte();
            delete k[_loc2_];
            _loc2_++;
         }
         k = null;
         Memory.gc();
      }
   }
}
