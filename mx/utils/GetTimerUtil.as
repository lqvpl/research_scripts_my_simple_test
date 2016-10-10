package mx.utils
{
   import mx.core.mx_internal;
   import flash.utils.getTimer;
   
   use namespace mx_internal;
   
   public class GetTimerUtil
   {
      
      mx_internal static var fakeTimeValue = undefined;
       
      
      public function GetTimerUtil()
      {
         super();
      }
      
      mx_internal static function getTimer() : int
      {
         if(fakeTimeValue !== undefined)
         {
            return fakeTimeValue;
         }
         return getTimer();
      }
   }
}
