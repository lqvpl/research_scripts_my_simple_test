package com.adobe.net
{
   import flash.utils.ByteArray;
   import flash.events.MouseEvent;
   
   public final class URIEncodingBitmap extends ByteArray
   {
       
      
      public function URIEncodingBitmap(param1:String)
      {
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() + 106 - 52 + 1 - 1);
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(_loc6_)
         {
            §§push((§§pop() - 1) * 86 + 105);
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(_loc6_)
         {
            §§push((--§§pop() - 1 - 37 + 1) * 52);
         }
         var _loc5_:* = §§pop();
         super();
         var _loc3_:ByteArray = new ByteArray();
         §§push(0);
         if(_loc7_)
         {
            §§push((§§pop() + 1 + 1 - 109 - 45 - 1 - 10) * 2);
         }
         _loc2_ = §§pop();
         while(true)
         {
            §§push(_loc2_);
            §§push(16);
            if(_loc6_)
            {
               §§push(-§§pop() + 1 - 15 + 49);
            }
            if(§§pop() >= §§pop())
            {
               break;
            }
            §§push(this);
            §§push(0);
            if(_loc7_)
            {
               §§push(§§pop() * 42 + 1 - 105);
            }
            §§pop().writeByte(§§pop());
            _loc2_++;
         }
         _loc3_.writeUTFBytes(param1);
         §§push(_loc3_);
         §§push(0);
         if(_loc7_)
         {
            §§push(-§§pop() + 104 - 111);
         }
         §§pop().position = §§pop();
         while(_loc3_.bytesAvailable)
         {
            _loc4_ = int(_loc3_.readByte());
            §§push(_loc4_);
            §§push(127);
            if(_loc6_)
            {
               §§push(-(-§§pop() - 1 + 117) - 71 - 1 + 85);
            }
            if(§§pop() <= §§pop())
            {
               §§push(this);
               §§push(_loc4_);
               §§push(3);
               if(_loc6_)
               {
                  §§push(--(§§pop() - 1 + 42) * 50);
               }
               §§pop().position = §§pop() >> §§pop();
               _loc5_ = int(this.readByte());
               §§push(_loc5_);
               §§push(1);
               if(_loc7_)
               {
                  §§push(-((§§pop() + 101) * 93 * 115) - 1);
               }
               §§push(_loc4_);
               §§push(7);
               if(_loc6_)
               {
                  §§push(§§pop() - 1 - 36 - 113 + 1);
               }
               _loc5_ = §§pop() | §§pop() << (§§pop() & §§pop());
               §§push(this);
               §§push(_loc4_);
               §§push(3);
               if(_loc7_)
               {
                  §§push(§§pop() - 1 - 44 + 1 + 1 - 1 - 14 - 1);
               }
               §§pop().position = §§pop() >> §§pop();
               this.writeByte(_loc5_);
            }
         }
      }
      
      public final function ShouldEscape(param1:String) : int
      {
         §§push(0);
         if(_loc5_)
         {
            §§push(--§§pop() + 12 + 77 - 1 + 1);
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() + 1) - 50 - 116 - 106);
         }
         var _loc4_:* = §§pop();
         var _loc2_:ByteArray = new ByteArray();
         _loc2_.writeUTFBytes(param1);
         §§push(_loc2_);
         §§push(0);
         if(_loc5_)
         {
            §§push(--§§pop() + 1);
         }
         §§pop().position = §§pop();
         _loc3_ = int(_loc2_.readByte());
         §§push(_loc3_);
         §§push(128);
         if(_loc6_)
         {
            §§push(§§pop() + 85 + 1 + 1);
         }
         if(§§pop() & §§pop())
         {
            §§push(0);
            if(_loc5_)
            {
               return (§§pop() - 109) * 8 + 1;
            }
         }
         §§push(_loc3_);
         §§push(31);
         if(_loc5_)
         {
            §§push(--(§§pop() + 1 + 1));
         }
         if(§§pop() < §§pop() || §§pop() == §§pop())
         {
            return _loc3_;
         }
         §§push(this);
         §§push(_loc3_);
         §§push(3);
         if(_loc5_)
         {
            §§push((-§§pop() - 1 + 1 - 1) * 25);
         }
         §§pop().position = §§pop() >> §§pop();
         _loc4_ = int(this.readByte());
         §§push(_loc4_);
         §§push(1);
         if(_loc6_)
         {
            §§push((-(§§pop() * 90 + 1) - 1) * 25 + 114 - 62);
         }
         §§push(_loc3_);
         §§push(7);
         if(_loc5_)
         {
            §§push(-(§§pop() + 1 - 1));
         }
         if(§§pop() & §§pop() << (§§pop() & §§pop()))
         {
            return _loc3_;
         }
         §§push(0);
         if(_loc6_)
         {
            §§push(§§pop() + 1 - 1 - 1 + 1 + 1);
         }
         return §§pop();
      }
   }
}
