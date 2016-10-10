package
{
   import flash.display.Sprite;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public class §_e_-----_§ extends Sprite
   {
      
      private static var §_e_-_----§:Class;
      
      private static var §_e_---_--§:Class;
      
      private static var §_e_---§:Class;
      
      private static var §_e_----_-§:Array;
      
      private static var §_e_-____§:Array;
      
      private static var §_e_--__-§:Boolean = false;
      
      private static var §_e_-__---§:int;
      
      {
         if(!_loc2_)
         {
            §_e_-_----§ = §_e_--_-§;
            if(_loc1_)
            {
               if(!_loc1_)
               {
                  addr24:
                  while(true)
                  {
                     §_e_---§ = §_e_-_-_--§;
                     if(!_loc2_)
                     {
                        if(_loc2_)
                        {
                           addr42:
                           while(true)
                           {
                              §_e_--__-§ = false;
                              if(_loc2_)
                              {
                              }
                           }
                        }
                        addr60:
                        while(true)
                        {
                           §_e_----_-§ = new Array();
                           if(_loc1_)
                           {
                              if(!_loc2_)
                              {
                                 if(_loc1_)
                                 {
                                 }
                                 §_e_-____§ = new Array();
                              }
                              break;
                           }
                        }
                     }
                     while(!_loc1_)
                     {
                        §§goto(addr60);
                     }
                     return;
                  }
               }
               addr96:
               while(true)
               {
                  §_e_---_--§ = §_e_-----§;
               }
            }
            while(true)
            {
               if(_loc2_)
               {
                  §§goto(addr96);
               }
               §§goto(addr42);
            }
         }
         while(true)
         {
            if(_loc1_)
            {
               §§goto(addr24);
            }
            §§goto(addr110);
         }
      }
      
      public function §_e_-----_§()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            super();
         }
      }
      
      private static function §_e_-_-__§() : void
      {
         var _loc1_:ByteArray = new §_e_-_----§() as ByteArray;
         if(!_loc7_)
         {
            _loc3_.endian = Endian.LITTLE_ENDIAN;
            if(_loc8_)
            {
               §_e_-__---§ = _loc3_.readInt();
            }
         }
         §§push(0);
         if(_loc7_)
         {
            §§push((§§pop() - 1) * 94 + 1 - 1 + 1);
         }
         var _loc5_:* = §§pop();
         if(!_loc7_)
         {
            while(true)
            {
               §§push(_loc5_);
               if(_loc8_)
               {
                  if(§§pop() >= _loc4_)
                  {
                     if(_loc8_)
                     {
                        §§push(int(_loc1_.readInt()));
                        if(_loc8_)
                        {
                           break;
                        }
                        addr89:
                        if(_loc8_)
                        {
                           loop1:
                           while(_loc6_ < _loc4_)
                           {
                              if(!_loc8_)
                              {
                                 loop2:
                                 while(true)
                                 {
                                    _loc6_++;
                                    if(_loc8_)
                                    {
                                       if(_loc8_)
                                       {
                                          continue loop1;
                                       }
                                    }
                                    addr130:
                                    while(true)
                                    {
                                       if(_loc7_)
                                       {
                                          break loop2;
                                       }
                                       continue loop2;
                                    }
                                 }
                                 continue;
                              }
                              while(true)
                              {
                                 §_e_-___--_§(_loc1_,§_e_-____§[_loc6_ % §_e_-____§.length]);
                                 §§goto(addr130);
                              }
                           }
                           if(!_loc7_)
                           {
                              if(!_loc7_)
                              {
                              }
                              §_e_--__-§ = true;
                           }
                        }
                        return;
                     }
                  }
                  else
                  {
                     §_e_--___§(_loc2_);
                     if(!_loc7_)
                     {
                        _loc5_++;
                     }
                     continue;
                  }
               }
               break;
            }
         }
         §§push(0);
         if(_loc7_)
         {
            §§push((§§pop() - 1) * 94 - 109 - 1 - 15);
         }
         §§goto(addr89);
      }
      
      private static function §_e_-___--_§(param1:ByteArray, param2:ByteArray) : void
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc3_:int = param1.readInt();
         var _loc4_:ByteArray = new ByteArray();
         if(!_loc7_)
         {
            §§push(param1);
            §§push(_loc4_);
            §§push(0);
            if(_loc7_)
            {
               §§push(-(§§pop() * 17) - 1 + 1);
            }
            §§pop().readBytes(§§pop(),§§pop(),_loc3_);
         }
         var _loc5_:§_e_--_-_§ = new §_e_--_-_§(new §_e_-_--_§(param2));
         _loc5_.§_e_-____-_§(_loc4_);
         if(!_loc7_)
         {
            §§push(_loc4_);
            §§push(0);
            if(!_loc6_)
            {
               §§push(-(§§pop() - 51 - 108 - 1 - 84) - 1 + 1);
            }
            §§pop().position = §§pop();
            if(!_loc6_)
            {
            }
            addr66:
            return;
         }
         §_e_----_-§.push(_loc4_.readUTFBytes(_loc4_.length));
         §§goto(addr66);
      }
      
      private static function §_e_--___§(param1:ByteArray) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(param1);
            §§push(_loc2_);
            §§push(0);
            if(_loc3_)
            {
               §§push(§§pop() + 86 + 1 - 1 - 25 + 1);
            }
            §§pop().readBytes(§§pop(),§§pop(),16);
            if(_loc4_)
            {
               if(_loc3_)
               {
                  addr41:
                  while(true)
                  {
                     §_e_-____§.push(_loc2_);
                     if(!_loc4_)
                     {
                     }
                  }
               }
               addr59:
               while(true)
               {
                  §§push(_loc2_);
                  §§push(0);
                  if(!_loc4_)
                  {
                     §§push(§§pop() + 60 + 54 - 1);
                  }
                  §§pop().position = §§pop();
               }
            }
            while(!_loc4_)
            {
               §§goto(addr59);
            }
            return;
         }
         while(true)
         {
            if(_loc4_)
            {
               §§goto(addr41);
            }
            §§goto(addr80);
         }
      }
      
      public static function §_e_-_-__-§(param1:int) : String
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            if(!§_e_--__-§)
            {
               if(_loc3_)
               {
                  §_e_-_-__§();
               }
            }
         }
         §§push(§_e_----_-§);
         §§push(param1);
         if(!_loc2_)
         {
            §§push(§§pop() ^ §_e_-__---§);
         }
         return §§pop()[§§pop()];
      }
   }
}
