package info.noirbizarre.airorm
{
   import flash.events.Event;
   import com.enfluid.ltp.util.Util;
   
   public final class ActiveRecordEvent extends Event
   {
      
      public static const SAVING:String = "saving";
      
      public static const SAVE:String = "save";
       
      
      public function ActiveRecordEvent(param1:String, param2:Boolean = false)
      {
         super(param1,false,param2);
      }
   }
}
