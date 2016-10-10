package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import flash.utils.setTimeout;
   import air.update.ApplicationUpdaterUI;
   import com.hurlant.math.BigInteger;
   import flash.errors.IllegalOperationError;
   import com.enfluid.ltp.model.constants.Constants;
   import air.update.events.UpdateEvent;
   import com.adobe.protocols.dict.events.ErrorEvent;
   import mx.controls.Alert;
   
   public final class AppUpdateCommand extends Command implements IPhotonCommand
   {
       
      
      protected var appUpdater:ApplicationUpdaterUI;
      
      public function AppUpdateCommand()
      {
         this.appUpdater = new ApplicationUpdaterUI();
         super();
      }
      
      public function execute() : void
      {
         this.appUpdater.updateURL = Constants.APP_UPDATE_URL;
         this.appUpdater.addEventListener(UpdateEvent.INITIALIZED,this.onUpdate);
         this.appUpdater.addEventListener(ErrorEvent.ERROR,this.onUpdaterError);
         this.appUpdater.isCheckForUpdateVisible = false;
         this.appUpdater.initialize();
      }
      
      protected final function onUpdate(param1:UpdateEvent) : void
      {
         this.appUpdater.checkNow();
      }
      
      protected final function onUpdaterError(param1:ErrorEvent) : void
      {
         Alert.okLabel = "OK";
         §§push(Alert);
         §§push(130);
         if(_loc3_)
         {
            §§push(§§pop() - 90 - 54 - 1 + 1 + 8 - 1);
         }
         §§pop().buttonWidth = §§pop();
         §§push(Alert);
         §§push(30);
         if(_loc3_)
         {
            §§push((§§pop() - 78 + 1) * 27 * 26 - 1 - 1 - 14);
         }
         §§pop().buttonHeight = §§pop();
         Alert.show(param1.toString());
      }
   }
}
