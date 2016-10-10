package com.enfluid.ltp.controller.keywordresearch.keywordplanner
{
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   
   public final class SetIncludeKeywordsCommand extends KeywordPlannerCommand implements IPhotonCommand
   {
       
      
      private var seedKeyword:SeedKeywordVO;
      
      public function SetIncludeKeywordsCommand(param1:SeedKeywordVO)
      {
         this.seedKeyword = param1;
         super();
      }
      
      public function execute() : void
      {
         this.checkIfNeedsChanged();
      }
      
      private final function checkIfNeedsChanged() : void
      {
         if(!this.seedKeyword.includeKeywords && !scraper.hasTextOnPage(" terms: "))
         {
            done();
            return;
         }
         this.clickEditPencil();
         callDelayed(this.setText);
      }
      
      private final function cleanup() : void
      {
         var _loc1_:Boolean = clickSave();
         if(!_loc1_)
         {
            this.clickEditPencil();
         }
         callDelayed(done);
      }
      
      private final function clickEditPencil() : void
      {
         try
         {
            findAndClickEditPencilWithSectionTitle("Keywords to include");
            return;
         }
         catch(err:Error)
         {
            findAndClickEditPencilWithSectionTitle("Include keywords");
            return;
         }
      }
      
      private final function findTextAreaWithTextAbove(param1:String) : *
      {
         var _loc3_:* = undefined;
         var _loc2_:* = scraper.getElementByInnerText("div",param1,true);
         §§push(0);
         if(_loc8_)
         {
            §§push((§§pop() - 78 + 15) * 54 * 118 - 1);
         }
         for each(_loc3_ in _loc2_.parentElement.children)
         {
            try
            {
               if(_loc3_.firstChild.tagName == "TEXTAREA")
               {
                  return _loc3_.firstChild;
               }
            }
            catch(err:Error)
            {
               continue;
            }
         }
         throw new Error("SetIncludeKeywordsCommand: Could not find Text Area with this text above: " + param1);
      }
      
      private final function setText() : void
      {
         var _loc1_:* = this.findTextAreaWithTextAbove("Only include keywords containing the following terms:");
         scraper.insertText(this.seedKeyword.includeKeywords,_loc1_);
         callDelayed(this.cleanup);
      }
   }
}
