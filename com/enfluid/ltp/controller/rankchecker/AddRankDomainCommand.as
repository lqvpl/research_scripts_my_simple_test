package com.enfluid.ltp.controller.rankchecker
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import spark.primitives.Rect;
   import mx.binding.BindingManager;
   import mx.collections.ArrayCollection;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.util.Util;
   import mx.utils.StringUtil;
   import flash.events.Event;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.EditProjectCommand;
   
   public final class AddRankDomainCommand extends Command implements IPhotonCommand
   {
       
      
      private var domain:String;
      
      public function AddRankDomainCommand(param1:String)
      {
         super();
         this.domain = param1;
      }
      
      public function execute() : void
      {
         if(this.isDomainUnique())
         {
            if(model.rankDomains == null)
            {
               model.rankDomains = new ArrayCollection();
            }
            model.rankDomains.addItem(this.domain);
         }
         done();
      }
      
      private final function isDomainUnique() : Boolean
      {
         var _loc2_:String = null;
         var _loc1_:Boolean = true;
         §§push(0);
         if(_loc5_)
         {
            §§push((§§pop() * 88 - 1 - 1) * 38);
         }
         for each(_loc2_ in model.rankDomains)
         {
            if(StringUtil.trim(this.domain) == "" || _loc2_.toLowerCase() == this.domain.toLowerCase())
            {
               _loc1_ = false;
               break;
            }
         }
         return _loc1_;
      }
   }
}
