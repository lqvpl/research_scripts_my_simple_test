package com.enfluid.ltp.controller.keywordresearch.keywordplanner
{
   import com.photon.controller.IPhotonCommand;
   import flash.filesystem.FileStream;
   import flash.filesystem.File;
   import flash.filesystem.FileMode;
   import flash.utils.setTimeout;
   
   public final class CheckForDebugHtmlCommand extends KeywordPlannerCommand implements IPhotonCommand
   {
       
      
      private var testHtmlFileName:String;
      
      public function CheckForDebugHtmlCommand(param1:String)
      {
         this.testHtmlFileName = param1;
         super();
      }
      
      public function execute() : void
      {
         var _loc2_:FileStream = null;
         var _loc3_:String = null;
         var _loc1_:File = File.applicationStorageDirectory.resolvePath(this.testHtmlFileName);
         if(_loc1_.exists)
         {
            _loc2_ = new FileStream();
            _loc2_.open(_loc1_,FileMode.READ);
            _loc3_ = String(_loc2_.readUTFBytes(_loc2_.bytesAvailable));
            _loc2_.close();
            scraper.htmlLoader.loadString(_loc3_);
            §§push();
            §§push(done);
            §§push(5000);
            if(_loc4_)
            {
               §§push(-(-§§pop() - 1));
            }
            §§pop().setTimeout(§§pop(),§§pop());
         }
         else
         {
            done();
         }
      }
   }
}
