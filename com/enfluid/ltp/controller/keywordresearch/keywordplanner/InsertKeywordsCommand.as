package com.enfluid.ltp.controller.keywordresearch.keywordplanner
{
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.util.ProgressBarUtil;
   
   public final class InsertKeywordsCommand extends KeywordPlannerCommand implements IPhotonCommand
   {
       
      
      private var textToInsert:String;
      
      public function InsertKeywordsCommand(param1:String)
      {
         this.textToInsert = param1;
         super();
      }
      
      public function execute() : void
      {
         var _loc2_:Object = null;
         ProgressBarUtil.incrementCurrentCount("Inserting Keywords on Page");
         var _loc1_:Object = scraper.getElementsByTagName("textarea");
         §§push(0);
         if(_loc7_)
         {
            §§push((§§pop() + 1 - 1) * 66);
         }
         for each(_loc2_ in _loc1_)
         {
            try
            {
               scraper.insertText(this.textToInsert,_loc2_);
            }
            catch(e:Error)
            {
               continue;
            }
         }
         callDelayed(done);
      }
   }
}
