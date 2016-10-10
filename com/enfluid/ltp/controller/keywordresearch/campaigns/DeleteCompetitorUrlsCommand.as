package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import mx.collections.ArrayCollection;
   import mx.graphics.SolidColor;
   import mx.binding.BindingManager;
   
   public final class DeleteCompetitorUrlsCommand extends Command implements IPhotonCommand
   {
       
      
      private var toDelete;
      
      private var keyword:KeywordVO;
      
      private var removeFromCollections:Boolean;
      
      public function DeleteCompetitorUrlsCommand(param1:*, param2:KeywordVO, param3:Boolean = true)
      {
         this.toDelete = param1;
         this.keyword = param2;
         this.removeFromCollections = param3;
         super();
         this.doDelete();
      }
      
      public final function doDelete() : void
      {
         var _loc1_:Array = null;
         var _loc3_:CompetitorUrlVO = null;
         var _loc4_:* = null;
         if(this.toDelete is CompetitorUrlVO)
         {
            _loc1_ = [this.toDelete];
         }
         else if(this.toDelete is ArrayCollection)
         {
            _loc1_ = ArrayCollection(this.toDelete).source.slice();
         }
         else if(this.toDelete is Array)
         {
            _loc1_ = (this.toDelete as Array).slice();
         }
         else
         {
            throw new Error("Must pass in a CompetitorUrlVO, or an Array or ArrayCollection of CompetitorUrlVOs");
         }
         §§push(_loc1_.length);
         §§push(0);
         if(_loc8_)
         {
            §§push((-§§pop() - 37) * 46 * 99 * 37 + 1);
         }
         if(§§pop() == §§pop())
         {
            return;
         }
         var _loc2_:Array = [];
         §§push(0);
         if(_loc8_)
         {
            §§push(-((-(-§§pop() * 101) * 46 - 57) * 44));
         }
         for each(_loc3_ in _loc1_)
         {
            _loc2_.push(_loc3_.id);
            if(this.removeFromCollections)
            {
               this.keyword.competitorURLs.removeItem(_loc3_);
            }
         }
         _loc4_ = "DELETE FROM CompetitorUrlVOs WHERE id IN (" + _loc2_.join(", ") + ")";
         _loc3_.query(_loc4_);
      }
      
      public function execute() : void
      {
         done();
      }
   }
}
