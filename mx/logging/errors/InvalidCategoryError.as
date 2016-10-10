package mx.logging.errors
{
   import mx.core.mx_internal;
   
   use namespace mx_internal;
   
   public class InvalidCategoryError extends Error
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
       
      
      public function InvalidCategoryError(param1:String)
      {
         super(param1);
      }
      
      public function toString() : String
      {
         return String(message);
      }
   }
}
