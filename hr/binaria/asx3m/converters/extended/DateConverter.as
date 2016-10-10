package hr.binaria.asx3m.converters.extended
{
   import hr.binaria.asx3m.converters.basic.AbstractSingleValueConverter;
   import spark.components.Label;
   import mx.binding.BindingManager;
   
   public final class DateConverter extends AbstractSingleValueConverter
   {
       
      
      public function DateConverter()
      {
         super();
      }
      
      override public function canConvert(param1:Class) : Boolean
      {
         return new param1() is Date;
      }
      
      private final function addLeadingZero(param1:Number) : String
      {
         §§push(param1.toString().length);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 1) + 1 - 93));
         }
         return §§pop() == §§pop()?param1.toString():"0" + param1.toString();
      }
      
      override public function fromString(param1:String) : Object
      {
         var _loc2_:Date = new Date();
         §§push(_loc2_);
         §§push();
         §§push(param1);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() + 53 - 59 + 1);
         }
         §§push(§§pop().Number(§§pop().substr(§§pop(),4)));
         §§push();
         §§push(param1);
         §§push(5);
         if(_loc4_)
         {
            §§push((§§pop() + 1 - 1 - 24 + 63) * 70 - 1);
         }
         §§push(§§pop().Number(§§pop().substr(§§pop(),2)) - 1);
         §§push();
         §§push(param1);
         §§push(8);
         if(_loc4_)
         {
            §§push(-((§§pop() + 50) * 4 + 53 + 42 - 45) - 1);
         }
         §§pop().setFullYear(§§pop(),§§pop(),§§pop().Number(§§pop().substr(§§pop(),2)));
         §§push(_loc2_);
         §§push();
         §§push(param1);
         §§push(11);
         if(_loc4_)
         {
            §§push(-§§pop() + 89 - 61);
         }
         §§push(§§pop().Number(§§pop().substr(§§pop(),2)));
         §§push();
         §§push(param1);
         §§push(14);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 + 119 - 1 - 1 + 95 + 1));
         }
         §§push(§§pop().Number(§§pop().substr(§§pop(),2)));
         §§push();
         §§push(param1);
         §§push(17);
         if(_loc4_)
         {
            §§push(-((§§pop() + 56) * 46));
         }
         §§push(§§pop().Number(§§pop().substr(§§pop(),2)));
         §§push();
         §§push(param1);
         §§push(20);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) + 99 + 1);
         }
         §§pop().setHours(§§pop(),§§pop(),§§pop(),§§pop().Number(§§pop().substr(§§pop(),3)));
         return _loc2_;
      }
      
      override public function toString(param1:Object) : String
      {
         var _loc2_:Date = null;
         if(param1 != null)
         {
            _loc2_ = param1 as Date;
            §§push();
            §§push(_loc2_.fullYear + "-");
            §§push();
            §§push(_loc2_.month);
            §§push(1);
            if(_loc3_)
            {
               §§push(-((§§pop() * 116 - 73 + 82) * 69) + 1);
            }
            return §§pop().String(§§pop() + §§pop().addLeadingZero(§§pop() + §§pop()) + "-" + addLeadingZero(_loc2_.date) + " " + addLeadingZero(_loc2_.hours) + ":" + addLeadingZero(_loc2_.minutes) + ":" + addLeadingZero(_loc2_.seconds) + "." + _loc2_.milliseconds);
         }
         return null;
      }
   }
}
