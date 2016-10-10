package mx.core
{
   import flash.display.Shape;
   import mx.utils.NameUtil;
   
   use namespace mx_internal;
   
   public class FlexShape extends Shape
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      public function FlexShape()
      {
         super();
         try
         {
            name = NameUtil.createUniqueName(this);
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      override public function toString() : String
      {
         return NameUtil.displayObjectToString(this);
      }
   }
}
