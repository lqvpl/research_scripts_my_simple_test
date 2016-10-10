package com.enfluid.ltp.controller.rankchecker
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.headers.CompetitorAnalysisHeaderRenderer;
   import hr.binaria.asx3m.Asx3mer;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import com.enfluid.ltp.controller.filesystem.SaveXMLToDiskCommand;
   import flash.filesystem.File;
   
   public final class SaveRankItemsCommand extends Command implements IPhotonCommand
   {
       
      
      public function SaveRankItemsCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         var _loc1_:XML = Asx3mer.instance.toXML(model.rankCheckItems);
         new SaveXMLToDiskCommand(_loc1_,File.applicationStorageDirectory.nativePath + "/ranks.xml").execute();
         done();
      }
   }
}
