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
         if(_loc8_)
         {
            §§push(§§pop() - 1 + 57 - 81 - 112 - 97);
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
            §§push((§§pop() - 54 + 111) * 63);
         }
         §§pop().pptr = §§pop();
         while(pptr < psize)
         {
            §§push(65536);
            if(_loc7_)
            {
               §§push((§§pop() - 15 - 1 + 1 + 116) * 93);
            }
            _loc2_ = §§pop() * Math.random();
            §§push(pool);
            §§push(_loc3_);
            §§push(_loc2_);
            §§push(8);
            if(_loc7_)
            {
               §§push((-§§pop() - 15 - 76 - 1 + 1) * 115 * 110);
            }
            §§pop()[§§pop()] = §§pop() >>> §§pop();
            §§push(pool);
            §§push(_loc4_);
            §§push(_loc2_);
            §§push(255);
            if(_loc7_)
            {
               §§push((§§pop() + 1) * 109 * 73 - 1);
            }
            §§pop()[§§pop()] = §§pop() & §§pop();
         }
         §§push();
         §§push(0);
         if(_loc7_)
         {
            §§push(-§§pop() + 1 + 21);
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
         if(_loc7_)
         {
            §§push(§§pop() + 37 + 2 + 78 + 5);
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
            §§push(-(-§§pop() + 83) + 1 + 1);
         }
         §§pop().position = §§pop();
         while(true)
         {
            §§push(_loc1_.bytesAvailable);
            §§push(4);
            if(_loc7_)
            {
               §§push(((§§pop() + 1) * 93 + 105 + 1) * 116);
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
            §§push((§§pop() * 77 - 35 + 48 + 37) * 22 + 1);
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
         if(_loc9_)
         {
            §§push(-(§§pop() + 91) - 2 + 1);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop() & §§pop();
         §§push(pool);
         §§push(_loc3_);
         §§push(pool[_loc3_]);
         §§push(param1);
         §§push(8);
         if(_loc9_)
         {
            §§push(-((§§pop() - 65) * 44 + 30) + 1);
         }
         §§push(§§pop() >> §§pop());
         §§push(255);
         if(_loc9_)
         {
            §§push(§§pop() * 80 * 31 - 1 - 1);
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop() & §§pop();
         §§push(pool);
         §§push(_loc4_);
         §§push(pool[_loc4_]);
         §§push(param1);
         §§push(16);
         if(_loc9_)
         {
            §§push(--(§§pop() - 99) * 108 * 102 + 1 + 23);
         }
         §§push(§§pop() >> §§pop());
         §§push(255);
         if(_loc8_)
         {
            §§push(---((§§pop() + 1) * 88 * 42 - 116));
         }
         §§pop()[§§pop()] = §§pop() ^ §§pop() & §§pop();
         §§push(pool);
         §§push(_loc5_);
         §§push(pool[_loc5_]);
         §§push(param1);
         §§push(24);
         if(_loc9_)
         {
            §§push(-((§§pop() * 17 - 14) * 86) - 1 - 90 + 1);
         }
         §§push(§§pop() >> §§pop());
         §§push(255);
         if(_loc8_)
         {
            §§push((§§pop() - 1) * 115 * 66 * 38 + 1 - 105 - 1);
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
         if(_loc3_)
         {
            §§push(-((-(§§pop() + 1 - 100) + 31) * 8) - 1);
         }
         var _loc1_:uint = §§pop();
         while(_loc1_ < pool.length)
         {
            §§push(pool);
            §§push(_loc1_);
            §§push(Math.random());
            §§push(256);
            if(_loc3_)
            {
               §§push(-(§§pop() - 42 - 31) + 50 - 1);
            }
            §§pop()[§§pop()] = §§pop() * §§pop();
            _loc1_++;
         }
         §§push(pool);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(((§§pop() + 39) * 31 + 1) * 28) * 41);
         }
         §§pop().length = §§pop();
         pool = null;
         state.dispose();
         state = null;
         §§push();
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-((§§pop() - 1) * 107 - 1) - 1));
         }
         §§pop().psize = §§pop();
         §§push();
         §§push(0);
         if(_loc2_)
         {
            §§push(((§§pop() + 27 + 11) * 21 - 1) * 70);
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
               §§push(-(§§pop() + 50 - 76) - 4 - 1);
            }
            §§pop().length = §§pop();
            §§push();
            §§push(0);
            if(_loc1_)
            {
               §§push((§§pop() + 72 + 1) * 13);
            }
            §§pop().pptr = §§pop();
            ready = true;
         }
         return state.next();
      }
   }
}
