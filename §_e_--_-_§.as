package
{
   import flash.utils.ByteArray;
   
   public class §_e_--_-_§
   {
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
      }
      
      private var §_e_-__--§:§_e_-_--_§;
      
      private var §_e_---__-§:§_e_-_---_§;
      
      public function §_e_--_-_§(param1:§_e_-_--_§, param2:§_e_-_---_§ = null)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            super();
            if(_loc3_)
            {
               this.§_e_-__--§ = param1;
               if(_loc4_)
               {
               }
               addr38:
               this.§_e_---__-§ = param2;
               addr41:
               return;
            }
         }
         if(param2 == null)
         {
            if(_loc3_)
            {
               param2 = new §_e_-_---_§(param1.§_e_-_____§());
               if(_loc4_)
               {
               }
               §§goto(addr41);
            }
         }
         else
         {
            param2.§_e_-____-§(param1.§_e_-_____§());
         }
         §§goto(addr38);
      }
      
      public function §_e_-_____§() : uint
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         return this.§_e_-__--§.§_e_-_____§();
      }
      
      public function §_e_-_--__§(param1:ByteArray) : void
      {
         if(_loc6_)
         {
            this.§_e_---__-§.§_e_--__§(param1);
            if(_loc7_)
            {
            }
            addr24:
            §§push(this.§_e_-__--§.§_e_-_____§());
            if(_loc6_)
            {
               §§push(uint(§§pop()));
            }
            §§push(0);
            if(_loc7_)
            {
               §§push(-(-(§§pop() - 64 - 1) * 64 + 1) * 54);
            }
            var _loc5_:* = uint(§§pop());
            if(_loc6_)
            {
               loop0:
               for(; _loc5_ < param1.length; if(_loc6_)
               {
               })
               {
                  if(_loc6_)
                  {
                  }
                  §§push(_loc3_);
                  §§push(0);
                  if(_loc7_)
                  {
                     §§push(--(-§§pop() * 55) + 1);
                  }
                  §§pop().length = §§pop();
                  if(_loc6_)
                  {
                     if(_loc7_)
                     {
                        loop1:
                        while(true)
                        {
                           _loc4_.writeBytes(_loc3_);
                           if(!_loc7_)
                           {
                              if(!_loc6_)
                              {
                                 addr114:
                                 while(true)
                                 {
                                    this.§_e_-__--§.§_e_-_--__§(_loc3_);
                                    if(!_loc7_)
                                    {
                                       if(_loc6_)
                                       {
                                          continue loop1;
                                       }
                                    }
                                    break;
                                 }
                                 continue loop0;
                              }
                              addr157:
                              §§push(_loc5_);
                              if(_loc6_)
                              {
                                 §§push(uint(§§pop() + _loc2_));
                              }
                              _loc5_ = §§pop();
                              continue loop0;
                           }
                           continue loop0;
                        }
                     }
                     while(true)
                     {
                        §§push(param1);
                        §§push(_loc3_);
                        §§push(0);
                        if(!_loc6_)
                        {
                           §§push(§§pop() - 1 - 2 + 32);
                        }
                        §§pop().readBytes(§§pop(),§§pop(),_loc2_);
                        if(!_loc6_)
                        {
                        }
                        continue loop0;
                     }
                  }
                  while(true)
                  {
                     if(!_loc7_)
                     {
                        §§goto(addr114);
                     }
                     §§goto(addr157);
                  }
               }
               if(!_loc7_)
               {
                  §§push(param1);
                  §§push(0);
                  if(_loc7_)
                  {
                     §§push(-(-(§§pop() - 12 - 8 - 1) + 118 - 1));
                  }
                  §§pop().length = §§pop();
                  if(!_loc6_)
                  {
                  }
               }
               return;
            }
            param1.writeBytes(_loc4_);
            §§goto(addr193);
         }
         §§push(param1);
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() + 22 + 1 - 1);
         }
         §§pop().position = §§pop();
         §§goto(addr24);
      }
      
      public function §_e_-____-_§(param1:ByteArray) : void
      {
         if(!_loc6_)
         {
            §§push(param1);
            §§push(0);
            if(!_loc7_)
            {
               §§push(§§pop() + 43 - 38 - 1 - 20);
            }
            §§pop().position = §§pop();
         }
         §§push(this.§_e_-__--§.§_e_-_____§());
         if(!_loc6_)
         {
            §§push(uint(§§pop()));
         }
         if(!_loc6_)
         {
            §§push(param1.length % _loc2_);
            §§push(0);
            if(_loc6_)
            {
               §§push(§§pop() * 102 * 44 * 90);
            }
            if(§§pop() != §§pop())
            {
               if(!_loc7_)
               {
               }
            }
            §§push(0);
            if(!_loc7_)
            {
               §§push(((§§pop() - 1) * 106 + 1) * 107);
            }
            if(!_loc6_)
            {
               loop0:
               for(; _loc5_ < param1.length; if(!_loc6_)
               {
               })
               {
                  if(!_loc7_)
                  {
                     loop1:
                     while(true)
                     {
                        this.§_e_-__--§.§_e_-____-_§(_loc3_);
                        if(!_loc6_)
                        {
                           if(_loc6_)
                           {
                              addr106:
                              while(true)
                              {
                                 §§push(param1);
                                 §§push(_loc3_);
                                 §§push(0);
                                 if(_loc6_)
                                 {
                                    §§push((§§pop() * 44 - 106) * 59);
                                 }
                                 §§pop().readBytes(§§pop(),§§pop(),_loc2_);
                                 if(_loc7_)
                                 {
                                    if(!_loc6_)
                                    {
                                       continue loop1;
                                    }
                                 }
                                 break;
                              }
                              continue loop0;
                           }
                           addr161:
                           _loc4_.writeBytes(_loc3_);
                           if(!_loc6_)
                           {
                              break;
                           }
                           continue loop0;
                        }
                        break;
                     }
                     if(!_loc6_)
                     {
                     }
                     §§push(_loc5_);
                     if(!_loc6_)
                     {
                        §§push(uint(§§pop() + _loc2_));
                     }
                     continue;
                  }
                  while(true)
                  {
                     §§push(_loc3_);
                     §§push(0);
                     if(_loc6_)
                     {
                        §§push(((§§pop() + 1 - 44 + 1) * 72 + 1) * 50);
                     }
                     §§pop().length = §§pop();
                     if(!_loc6_)
                     {
                        if(_loc7_)
                        {
                           §§goto(addr106);
                        }
                        §§goto(addr161);
                     }
                     continue loop0;
                  }
               }
               if(!_loc7_)
               {
               }
               loop4:
               while(_loc6_)
               {
                  while(true)
                  {
                     §§push(param1);
                     §§push(0);
                     if(!_loc7_)
                     {
                        §§push(§§pop() - 113 + 1 - 1);
                     }
                     §§pop().length = §§pop();
                     loop5:
                     while(true)
                     {
                        if(!_loc7_)
                        {
                           break loop4;
                        }
                        addr211:
                        while(true)
                        {
                           param1.writeBytes(_loc4_);
                           if(_loc7_)
                           {
                              break loop5;
                           }
                           continue loop5;
                        }
                     }
                     continue loop4;
                  }
               }
               return;
            }
            this.§_e_---__-§.§_e_-_-_§(_loc4_);
            if(_loc7_)
            {
               if(_loc6_)
               {
                  §§goto(addr211);
               }
               §§goto(addr229);
            }
            §§goto(addr218);
         }
         throw new Error("ECB " + _loc2_);
      }
      
      public function §_e_--§() : void
      {
         if(!_loc2_)
         {
            this.§_e_-__--§.§_e_--§();
            if(!_loc1_)
            {
            }
            loop0:
            while(_loc2_)
            {
               while(true)
               {
                  this.§_e_-__--§ = null;
                  loop1:
                  while(_loc1_)
                  {
                     while(true)
                     {
                        this.§_e_---__-§ = null;
                        if(_loc1_)
                        {
                           continue loop0;
                        }
                        continue loop1;
                     }
                  }
                  break loop0;
               }
            }
            return;
         }
         if(!_loc1_)
         {
            §§goto(addr25);
         }
         §§goto(addr42);
      }
   }
}
