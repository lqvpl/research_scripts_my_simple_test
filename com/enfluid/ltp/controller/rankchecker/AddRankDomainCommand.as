package com.enfluid.ltp.controller.rankchecker
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.states.Transition;
   import mx.collections.ArrayCollection;
   import flash.filesystem.File;
   import flash.filesystem.FileStream;
   import flash.filesystem.FileMode;
   import spark.components.Image;
   import mx.binding.BindingManager;
   import mx.utils.StringUtil;
   
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
         if(_loc6_)
         {
            §§push(-(-(§§pop() * 36) - 83 + 1));
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
