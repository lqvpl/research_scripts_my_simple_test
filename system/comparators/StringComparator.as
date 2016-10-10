package system.comparators
{
   import system.Comparator;
   import mx.graphics.SolidColor;
   import flash.events.MouseEvent;
   import mx.binding.BindingManager;
   import hr.binaria.asx3m.converters.IMarshallingContext;
   import hr.binaria.asx3m.io.IHierarchicalStreamWriter;
   import flash.utils.getDefinitionByName;
   import flash.utils.getQualifiedClassName;
   
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
               return (-(§§pop() * 93 - 4) + 1 - 1 + 1) * 74;
            }
         }
         if(param1.length == param2.length)
         {
            _loc4_ = param1.localeCompare(param2);
            §§push(_loc4_);
            §§push(0);
            if(_loc6_)
            {
               §§push(§§pop() + 110 - 1 + 43);
            }
            if(§§pop() == §§pop())
            {
               §§push(0);
               if(_loc6_)
               {
                  return -(§§pop() - 27 - 30);
               }
            }
            §§push(_loc4_);
            §§push(0);
            if(_loc5_)
            {
               §§push(((-(§§pop() - 48 + 1) - 110) * 25 + 1) * 61);
            }
            if(§§pop() < §§pop())
            {
               §§push(1);
               if(_loc5_)
               {
                  return (§§pop() - 1) * 35 + 58;
               }
            }
            §§push(-1);
            if(_loc5_)
            {
               return -(§§pop() + 1 - 74);
            }
         }
         if(param1.length > param2.length)
         {
            §§push(1);
            if(_loc5_)
            {
               return (-(§§pop() + 15) * 20 - 1 - 1) * 79;
            }
         }
         §§push(-1);
         if(_loc6_)
         {
            §§push(-(-(§§pop() * 90) + 1));
         }
         return §§pop();
      }
   }
}
