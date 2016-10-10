package info.noirbizarre.airorm
{
   import flash.events.Event;
   import mx.controls.Spacer;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.view.AddYourOwnKeywordsSection;
   import system.data.lists.ArrayList;
   
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
