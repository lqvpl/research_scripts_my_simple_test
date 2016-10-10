package system.errors
{
   public final class ConcurrencyError extends Error
   {
       
      
      public function ConcurrencyError(param1:String = "", param2:int = 0)
      {
         super(param1,param2);
         name = "ConcurrencyError";
      }
   }
}
