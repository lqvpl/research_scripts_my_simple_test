package com.enfluid.ltp.util
{
   import flash.filesystem.File;
   import flash.filesystem.FileStream;
   import flash.system.System;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.headers.CompetitorAnalysisHeaderRenderer;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import com.enfluid.ltp.controller.keywordresearch.keywordplanner.SubmitAndScrapeKeywordPlannerCommand;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.AnalyzeMajesticCompetitionCommand;
   import com.enfluid.ltp.controller.competitoranalysis.AnalyzeCompetitionCommand;
   import flash.filesystem.FileMode;
   import mx.controls.Alert;
   
   public final class Logger
   {
      
      private static var file:File;
      
      private static var fileStream:FileStream;
      
      private static var myLog:String = "";
       
      
      public function Logger()
      {
         super();
      }
      
      public static function copyLogToClipBoard() : void
      {
         System.setClipboard(myLog);
      }
      
      public static function log(param1:String) : void
      {
         param1 = new Date().toLocaleString() + "  --   " + param1;
         myLog = myLog + (param1 + "\n");
         DataModel.instance.logText = myLog;
      }
      
      public static function saveToDesktop(param1:Boolean = true) : void
      {
         var _loc2_:String = myLog;
         file = File.desktopDirectory.resolvePath("ltp-log.txt");
         if(!fileStream)
         {
            fileStream = new FileStream();
         }
         fileStream.open(file,FileMode.WRITE);
         _loc2_ = _loc2_.replace(/\n/g,File.lineEnding);
         fileStream.writeUTFBytes(_loc2_);
         fileStream.close();
         if(param1)
         {
            Alert.okLabel = "OK";
            §§push(Alert);
            §§push(130);
            if(_loc3_)
            {
               §§push(-((-§§pop() - 1 + 46 + 34 - 116) * 9));
            }
            §§pop().buttonWidth = §§pop();
            §§push(Alert);
            §§push(30);
            if(_loc3_)
            {
               §§push(§§pop() + 45 + 92 - 1 + 1 + 1);
            }
            §§pop().buttonHeight = §§pop();
            Alert.show("The log as been saved to your desktop in a file named ltp-log.txt");
         }
      }
      
      public static function getLog() : String
      {
         return myLog;
      }
   }
}
