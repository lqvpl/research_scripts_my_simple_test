package com.enfluid.ltp.controller.rankchecker
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import hr.binaria.asx3m.Asx3mer;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.model.vo.KeywordColumnsVO;
   import com.enfluid.ltp.controller.filesystem.SaveXMLToDiskCommand;
   import flash.filesystem.File;
   import spark.layouts.VerticalLayout;
   
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
