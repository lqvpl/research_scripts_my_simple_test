package system.comparators
{
   import system.Comparator;
   import mx.states.Transition;
   
   public final class StringComparator implements Comparator
   {
      
      public static const ignoreCaseComparator:system.comparators.StringComparator = new system.comparators.StringComparator(true);
      
      public static const comparator:system.comparators.StringComparator = new system.comparators.StringComparator(false);
       
      
      public var ignoreCase:Boolean;
      
      public function StringComparator(param1:Boolean = false)
      {
         super();
         this.ignoreCase = param1;
      }
      
      public function compare(param1:*, param2:*, param3:* = null) : int
      {
         var _loc4_:Number = NaN;
         param1 = param1.toString();
         param2 = param2.toString();
         if(param3 is Boolean)
         {
            ignoreCase = param3;
         }
         if(ignoreCase)
         {
            param1 = param1.toLowerCase();
            param2 = param2.toLowerCase();
         }
         if(param1 == param2)
         {
            §§push(0);
            if(_loc5_)
            {
               return (§§pop() * 8 + 78) * 71 + 1 + 1;
            }
         }
         if(param1.length == param2.length)
         {
            _loc4_ = param1.localeCompare(param2);
            §§push(_loc4_);
            §§push(0);
            if(_loc6_)
            {
               §§push((§§pop() - 47 - 118) * 16 - 1 + 1);
            }
            if(§§pop() == §§pop())
            {
               §§push(0);
               if(_loc5_)
               {
                  return §§pop() + 1 - 1 - 1;
               }
            }
            §§push(_loc4_);
            §§push(0);
            if(_loc5_)
            {
               §§push(-(-§§pop() - 1 + 100));
            }
            if(§§pop() < §§pop())
            {
               §§push(1);
               if(_loc5_)
               {
                  return §§pop() - 85 + 1 + 1;
               }
            }
            §§push(-1);
            if(_loc5_)
            {
               return -(§§pop() * 103 + 48 + 21 - 80);
            }
         }
         if(param1.length > param2.length)
         {
            §§push(1);
            if(_loc5_)
            {
               return -(§§pop() - 1) + 1 + 1 - 1 - 8 - 100;
            }
         }
         §§push(-1);
         if(_loc5_)
         {
            §§push(§§pop() * 66 * 98 - 1 - 1 + 1 + 1 + 1);
         }
         return §§pop();
      }
   }
}
