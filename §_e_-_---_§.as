package
{
   import flash.utils.ByteArray;
   
   public class §_e_-_---_§
   {
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
      }
      
      private var §_e_-_---§:uint;
      
      public function §_e_-_---_§(param1:uint = 0)
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            if(!_loc3_)
            {
            }
            addr17:
            return;
         }
         this.§_e_-_---§ = param1;
         §§goto(addr17);
      }
      
      public function §_e_--__§(param1:ByteArray) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§_e_-_---§);
         if(_loc4_)
         {
            §§push(uint(§§pop() - param1.length % this.§_e_-_---§));
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(!_loc4_)
         {
            §§push((-§§pop() - 1 - 109 + 13) * 45);
         }
         var _loc3_:* = uint(§§pop());
         if(!_loc5_)
         {
            while(_loc3_ < _loc2_)
            {
               param1[param1.length] = _loc2_;
               if(!_loc5_)
               {
                  §§push(_loc3_);
                  if(!_loc5_)
                  {
                     §§push(uint(§§pop() + 1));
                  }
                  _loc3_ = §§pop();
               }
            }
         }
      }
      
      public function §_e_-_-_§(param1:ByteArray) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         §§push(0);
         if(_loc7_)
         {
            §§push((§§pop() - 75 + 1 - 1) * 85 + 1 + 111);
         }
         var _loc4_:* = uint(§§pop());
         var _loc2_:* = uint(param1.length % this.§_e_-_---§);
         if(_loc8_)
         {
            §§push(_loc2_);
            if(_loc8_)
            {
               §§push(0);
               if(_loc7_)
               {
                  §§push((§§pop() - 1 + 1 - 1) * 102 - 104);
               }
               if(§§pop() != §§pop())
               {
                  if(!_loc7_)
                  {
                     throw new Error("PKCS#5::unpad: ByteArray.length isn\'t a multiple of the blockSize");
                  }
               }
               else
               {
                  §§push(uint(param1[param1.length - 1]));
                  if(_loc7_)
                  {
                  }
               }
               addr68:
               var _loc3_:* = §§pop();
               if(!_loc7_)
               {
                  while(true)
                  {
                     §§push(_loc3_);
                     §§push(0);
                     if(!_loc8_)
                     {
                        §§push((§§pop() + 79 + 105 - 1 + 1) * 87 - 1);
                     }
                     if(§§pop() > §§pop())
                     {
                        §§push(uint(param1[param1.length - 1]));
                        if(_loc8_)
                        {
                           _loc4_ = §§pop();
                           if(!_loc7_)
                           {
                              if(_loc8_)
                              {
                                 _loc5_.length = _loc6_;
                              }
                              if(!_loc7_)
                              {
                                 §§push(_loc2_);
                                 if(_loc8_)
                                 {
                                    if(§§pop() != _loc4_)
                                    {
                                       if(_loc8_)
                                       {
                                          break;
                                       }
                                    }
                                 }
                                 continue;
                              }
                              break;
                           }
                           §§push(_loc3_);
                           if(!_loc7_)
                           {
                              continue;
                              §§push(uint(§§pop() - 1));
                           }
                           continue;
                        }
                        continue;
                     }
                  }
                  throw new Error("PKCS#5:unpad: Invalid padding value. expected [" + _loc2_ + "], found [" + _loc4_ + "]");
               }
               return;
            }
            _loc2_ = §§pop();
         }
         §§push(_loc2_);
         if(!_loc7_)
         {
            §§push(uint(§§pop()));
         }
         §§goto(addr68);
      }
      
      public function §_e_-____-§(param1:uint) : void
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§_e_-_---§ = param1;
         }
      }
   }
}
