package com.enfluid.ltp.controller.keywordresearch.keywordplanner
{
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import com.enfluid.ltp.util.ProgressBarUtil;
   
   public final class SetNegativeKeywordsCommand extends KeywordPlannerCommand implements IPhotonCommand
   {
       
      
      private var _editPencil;
      
      private var seedKeyword:SeedKeywordVO;
      
      public function SetNegativeKeywordsCommand(param1:SeedKeywordVO)
      {
         super();
         this.seedKeyword = param1;
      }
      
      public function execute() : void
      {
         ProgressBarUtil.incrementCurrentCount("Setting Negative Keywords");
         this.checkIfNeedsChanged();
      }
      
      private final function checkIfNeedsChanged() : void
      {
         var _loc1_:Boolean = Boolean(scraper.getElementByInnerText("div","Negative keywords",true));
         if(_loc1_ && (!this.seedKeyword || !this.seedKeyword.excludeKeywords))
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
         var _loc1_:* = undefined;
         var _loc2_:* = undefined;
         if(!this._editPencil)
         {
            _loc1_ = scraper.getElementsByTagName("div");
            §§push(0);
            if(_loc7_)
            {
               §§push(((§§pop() + 8) * 75 * 37 + 1) * 93 + 52);
            }
            for each(_loc2_ in _loc1_)
            {
               try
               {
                  §§push(_loc2_.innerHTML.indexOf("Negative keywords"));
                  §§push(0);
                  if(_loc6_)
                  {
                     §§push(-§§pop() + 54 + 79);
                  }
                  if(§§pop() == §§pop())
                  {
                     this._editPencil = _loc2_.previousSibling;
                     break;
                  }
               }
               catch(err:Error)
               {
                  continue;
               }
            }
         }
         scraper.click(this._editPencil);
      }
      
      private final function setText() : void
      {
         var _loc1_:* = scraper.getElementByInnerText("div","Edit negative keywords",true);
         if(!_loc1_)
         {
            _loc1_ = scraper.getElementByInnerText("div","Enter negative keywords",true);
         }
         §§push(_loc1_.parentElement.children);
         §§push(2);
         if(_loc5_)
         {
            §§push(§§pop() - 73 - 100 - 80 + 63);
         }
         §§push(§§pop()[§§pop()].children);
         §§push(0);
         if(_loc5_)
         {
            §§push(((§§pop() - 95) * 108 - 1) * 97 * 110 + 1 - 1);
         }
         var _loc2_:* = §§pop()[§§pop()];
         var _loc3_:String = "";
         if(this.seedKeyword && this.seedKeyword.excludeKeywords)
         {
            _loc3_ = this.seedKeyword.excludeKeywords;
         }
         scraper.insertText(_loc3_,_loc2_);
         callDelayed(this.cleanup);
      }
   }
}
