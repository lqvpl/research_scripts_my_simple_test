package com.enfluid.ltp.controller.keywordresearch.keywordplanner
{
   import com.photon.controller.IPhotonCommand;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.common.SaveGoogleCredentialsCommand;
   import flash.html.HTMLLoader;
   
   public final class CheckSaveGoogleLoginDetails extends KeywordPlannerCommand implements IPhotonCommand
   {
       
      
      private var email:String;
      
      private var event:Event;
      
      private var pwd:String;
      
      public function CheckSaveGoogleLoginDetails(param1:Event, param2:HTMLLoader)
      {
         this.event = param1;
         super();
         this.scraper.htmlLoader = param2;
      }
      
      public function execute() : void
      {
         try
         {
            scraper.htmlLoader.removeEventListener(Event.COMPLETE,this.onComplete);
         }
         catch(err:Error)
         {
         }
         if(isLoginPage && (this.event is KeyboardEvent && KeyboardEvent(this.event).keyCode == Keyboard.ENTER || this.event is MouseEvent))
         {
            try
            {
               try
               {
                  this.email = scraper.getElementById("Email").value;
               }
               catch(err:Error)
               {
                  email = scraper.getElementById("email-display").value;
               }
               this.pwd = scraper.getElementById("Passwd").value;
               scraper.htmlLoader.addEventListener(Event.COMPLETE,this.onComplete);
               return;
            }
            catch(err:Error)
            {
               return;
            }
         }
      }
      
      private final function onComplete(param1:Event) : void
      {
         scraper.htmlLoader.removeEventListener(Event.COMPLETE,this.onComplete);
         if(!isLoginPage)
         {
            if(model.autoLoginGoogle && this.email && this.pwd)
            {
               model.gUserName = this.email;
               model.gPassword = this.pwd;
               model.autoLoginGoogle = true;
               new SaveGoogleCredentialsCommand().execute();
            }
         }
      }
   }
}
