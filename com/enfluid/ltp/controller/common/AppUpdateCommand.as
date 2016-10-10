package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import flash.system.Capabilities;
   import air.update.ApplicationUpdaterUI;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.AnalyzeMajesticCompetitionCommand;
   import com.enfluid.ltp.controller.competitoranalysis.SetupFetchSiteAgeCommand;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.CalcAllMajesticCompetitorAverage;
   import com.enfluid.ltp.controller.competitoranalysis.CalcAllCompetitorAnalysisAverages;
   import com.enfluid.ltp.controller.competitoranalysis.AnalyzeCompetitionCommand;
   import com.enfluid.ltp.controller.competitoranalysis.SetupFetchPageRankCommand;
   import com.enfluid.ltp.model.constants.Constants;
   import air.update.events.UpdateEvent;
   import com.adobe.protocols.dict.events.ErrorEvent;
   import mx.graphics.SolidColor;
   import mx.controls.Alert;
   import mx.controls.Spacer;
   
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
            §§push(-(§§pop() - 1 - 1 + 1) * 110 + 1);
         }
         §§pop().buttonWidth = §§pop();
         §§push(Alert);
         §§push(30);
         if(_loc2_)
         {
            §§push((§§pop() + 38 - 1) * 92);
         }
         §§pop().buttonHeight = §§pop();
         Alert.show(param1.toString());
      }
   }
}
