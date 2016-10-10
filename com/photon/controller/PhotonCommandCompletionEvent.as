package com.photon.controller
{
   import flash.events.Event;
   
   public final class PhotonCommandCompletionEvent extends Event
   {
      
      public static const COMMAND_COMPLETION:String = "commandCompletion";
       
      
      public var status:String;
      
      public function PhotonCommandCompletionEvent(param1:String)
      {
         this.status = param1;
         super(COMMAND_COMPLETION);
      }
   }
}
