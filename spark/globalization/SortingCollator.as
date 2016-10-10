package spark.globalization
{
   import spark.globalization.supportClasses.CollatorBase;
   import mx.core.mx_internal;
   import flash.globalization.CollatorMode;
   
   use namespace mx_internal;
   
   public class SortingCollator extends CollatorBase
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      public function SortingCollator()
      {
         super(CollatorMode.SORTING);
      }
   }
}
