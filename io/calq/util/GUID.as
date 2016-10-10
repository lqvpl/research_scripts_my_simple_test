package io.calq.util
{
   import spark.components.HGroup;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.ViewModel;
   import mx.states.State;
   import mx.states.SetProperty;
   
   public final class GUID
   {
      
      protected static const chars:Array = new §§pop().Array(§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),§§pop(),70);
      
      protected static const separator:uint = 45;
      
      protected static const template:Array = new §§pop().Array(§§pop(),§§pop(),§§pop(),§§pop(),§§pop());
      
      {
         §§push();
         §§push(48);
         if(_loc1_)
         {
            §§push((§§pop() + 1) * 56 - 39 - 23 + 1 - 84 + 84);
         }
         §§push(49);
         §§push(50);
         if(_loc1_)
         {
            §§push((§§pop() + 1 - 54) * 5 + 1 - 1);
         }
         §§push(51);
         §§push(52);
         if(_loc1_)
         {
            §§push(§§pop() * 103 * 0 + 104 - 1 - 1 + 84);
         }
         §§push(53);
         §§push(54);
         if(_loc2_)
         {
            §§push(-(§§pop() + 50 + 3) - 1);
         }
         §§push(55);
         §§push(56);
         if(_loc1_)
         {
            §§push(-§§pop() + 5 + 86 - 13);
         }
         §§push(57);
         §§push(65);
         if(_loc1_)
         {
            §§push(-(§§pop() + 1 + 80));
         }
         §§push(66);
         §§push(67);
         if(_loc2_)
         {
            §§push(((-(§§pop() + 1) - 109) * 86 - 91 + 10) * 98);
         }
         §§push(68);
         §§push(69);
         if(_loc1_)
         {
            §§push(§§pop() * 5 - 1 - 1 + 1);
         }
         §§push();
         §§push(8);
         if(_loc1_)
         {
            §§push(--§§pop() + 12 + 77 - 1 + 1);
         }
         §§push(4);
         §§push(4);
         §§push(4);
         §§push(12);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) - 50 - 116 - 106);
         }
      }
      
      protected var uid:Array;
      
      public function GUID()
      {
         super();
         uid = [];
         generateSoft();
      }
      
      protected final function generateSoft() : void
      {
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-((§§pop() + 1 - 4) * 85 * 16) - 108));
         }
         var _loc2_:* = §§pop();
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() * 45 + 97 - 40 - 11 + 1);
         }
         var _loc1_:* = §§pop();
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() + 1 + 30 + 1 + 1);
         }
         _loc2_ = uint(§§pop());
         while(_loc2_ < template.length)
         {
            §§push(0);
            if(_loc3_)
            {
               §§push(-(-§§pop() * 53 + 83 + 1 - 103) - 72);
            }
            _loc1_ = uint(§§pop());
            while(_loc1_ < template[_loc2_])
            {
               uid.push(chars[Math.floor(Math.random() * chars.length)]);
               _loc1_++;
            }
            if(_loc2_ < template.length - 1)
            {
               §§push(uid);
               §§push(45);
               if(_loc3_)
               {
                  §§push((-((§§pop() * 19 + 1) * 6) + 1) * 54);
               }
               §§pop().push(§§pop());
            }
            _loc2_++;
         }
      }
      
      public final function toString() : String
      {
         return String.fromCharCode.apply(null,uid);
      }
   }
}
