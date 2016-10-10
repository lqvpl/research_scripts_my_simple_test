package com.hurlant.crypto.prng
{
   import flash.text.Font;
   import flash.utils.ByteArray;
   import flash.system.System;
   import flash.system.Capabilities;
   import flash.utils.getTimer;
   import com.hurlant.util.Memory;
   
   public final class Random
   {
       
      
      private var ready:Boolean = false;
      
      private var pool:ByteArray;
      
      private var seeded:Boolean = false;
      
      private var psize:int;
      
      private var state:com.hurlant.crypto.prng.IPRNG;
      
      private var pptr:int;
      
      public function Random(param1:Class = null)
      {
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() - 24 - 73 - 1 - 103 - 60 + 1);
         }
         var _loc2_:uint = §§pop();
         super();
         if(param1 == null)
         {
            param1 = ARC4;
         }
         state = new param1() as com.hurlant.crypto.prng.IPRNG;
         psize = state.getPoolSize();
         pool = new ByteArray();
         §§push();
         §§push(0);
         if(_loc7_)
         {
            §§push(---§§pop() + 1 + 1);
         }
         §§pop().pptr = §§pop();
         while(pptr < psize)
         {
            §§push(65536);
            if(_loc8_)
            {
               §§push(§§pop() - 33 + 104 + 1 - 1);
            }
            _loc2_ = §§pop() * Math.random();
            §§push(pool);
            §§push(_loc3_);
            §§push(_loc2_);
            §§push(8);
            if(_loc8_)
            {
               §§push(-(§§pop() + 1 - 1) + 84 - 1);
            }
            §§pop()[§§pop()] = §§pop() >>> §§pop();
            §§push(pool);
            §§push(_loc4_);
            §§push(_loc2_);
            §§push(255);
            if(_loc7_)
            {
               §§push((-§§pop() + 1 - 7) * 24);
            }
            §§pop()[§§pop()] = §§pop() & §§pop();
         }
         §§push();
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() + 1 - 1 + 1 + 13 - 1);
         }
         §§pop().pptr = §§pop();
         seed();
      }
      
      public final function autoSeed() : void
      {
         var _loc3_:Font = null;
         var _loc1_:ByteArray = new ByteArray();
         _loc1_.writeUnsignedInt(System.totalMemory);
         _loc1_.writeUTF(Capabilities.serverString);
         _loc1_.writeUnsignedInt(getTimer());
         _loc1_.writeUnsignedInt(new Date().getTime());
         var _loc2_:Array = Font.enumerateFonts(true);
         §§push(0);
         if(_loc6_)
         {
            §§push((§§pop() + 98 - 1) * 96 - 117 + 1);
         }
         for each(_loc3_ in _loc2_)
         {
            _loc1_.writeUTF(_loc3_.fontName);
            _loc1_.writeUTF(_loc3_.fontStyle);
            _loc1_.writeUTF(_loc3_.fontType);
         }
         §§push(_loc1_);
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() - 80 + 14 + 1 - 0 - 100 + 1 + 1);
         }
         §§pop().position = §§pop();
         while(true)
         {
            §§push(_loc1_.bytesAvailable);
            §§push(4);
            if(_loc6_)
            {
               §§push(-(-(§§pop() - 44) - 1 + 1));
            }
            if(§§pop() < §§pop())
            {
               break;
            }
            seed(_loc1_.readUnsignedInt());
         }
      }
      
      public final function seed(param1:int = 0) : void
      {
         §§push(param1);
         §§push(0);
         if(_loc9_)
         {
            §§push(--§§pop() - 23 - 15 + 113);
         }
         if(§§pop() == §§pop())
         {
            param1 = new Date().getTime();
         }
         var _loc2_:* = pptr++;
         §§push(pool);
         §§push(_loc2_);
         §§push(pool[_loc2_]);
         §§push(param1);
         §§push(255);
         if(_loc8_)
         {
            §§push(-§§pop() * 28 + 1 + 86 - 63 + 1 + 91);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop() & §§pop();
         §§push(pool);
         §§push(_loc3_);
         §§push(pool[_loc3_]);
         §§push(param1);
         §§push(8);
         if(_loc8_)
         {
            §§push(-(§§pop() + 38 - 1 - 1 + 102 - 1 - 1));
         }
         §§push(§§pop() >> §§pop());
         §§push(255);
         if(_loc8_)
         {
            §§push(--(§§pop() * 13 - 1 + 29));
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop() & §§pop();
         §§push(pool);
         §§push(_loc4_);
         §§push(pool[_loc4_]);
         §§push(param1);
         §§push(16);
         if(_loc8_)
         {
            §§push((-§§pop() - 1 + 106 + 1 + 1 - 86) * 41);
         }
         §§push(§§pop() >> §§pop());
         §§push(255);
         if(_loc8_)
         {
            §§push((§§pop() - 6 + 29) * 91);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop() & §§pop();
         §§push(pool);
         §§push(_loc5_);
         §§push(pool[_loc5_]);
         §§push(param1);
         §§push(24);
         if(_loc9_)
         {
            §§push(-((-(§§pop() + 18 + 85) + 80) * 27));
         }
         §§push(§§pop() >> §§pop());
         §§push(255);
         if(_loc8_)
         {
            §§push(§§pop() - 1 - 0 - 1);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop() & §§pop();
         pptr = pptr % psize;
         seeded = true;
      }
      
      public final function toString() : String
      {
         return "random-" + state.toString();
      }
      
      public final function dispose() : void
      {
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() * 22 - 1 + 1 - 39 + 89 + 77 + 64);
         }
         var _loc1_:uint = §§pop();
         while(_loc1_ < pool.length)
         {
            §§push(pool);
            §§push(_loc1_);
            §§push(Math.random());
            §§push(256);
            if(_loc2_)
            {
               §§push((§§pop() + 1 - 69 - 68) * 48 - 1 - 73);
            }
            §§pop()[§§pop()] = §§pop() * §§pop();
            _loc1_++;
         }
         §§push(pool);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 78) * 39 - 1 + 1 + 78 - 1));
         }
         §§pop().length = §§pop();
         pool = null;
         state.dispose();
         state = null;
         §§push();
         §§push(0);
         if(_loc2_)
         {
            §§push(--§§pop() - 86);
         }
         §§pop().psize = §§pop();
         §§push();
         §§push(0);
         if(_loc2_)
         {
            §§push(---§§pop() + 1);
         }
         §§pop().pptr = §§pop();
         Memory.gc();
      }
      
      public final function nextBytes(param1:ByteArray, param2:int) : void
      {
         while(param2--)
         {
            param1.writeByte(nextByte());
         }
      }
      
      public final function nextByte() : int
      {
         if(!ready)
         {
            if(!seeded)
            {
               autoSeed();
            }
            state.init(pool);
            §§push(pool);
            §§push(0);
            if(_loc2_)
            {
               §§push(-(§§pop() * 111 - 99) - 41 + 66);
            }
            §§pop().length = §§pop();
            §§push();
            §§push(0);
            if(_loc2_)
            {
               §§push(--((§§pop() + 1) * 46 - 25 + 30 - 1));
            }
            §§pop().pptr = §§pop();
            ready = true;
         }
         return state.next();
      }
   }
}
