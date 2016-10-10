package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import flash.filesystem.File;
   import com.enfluid.ltp.model.vo.DefaultConfigVO;
   import spark.components.Image;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.view.components.WarningInformationLabel;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.constants.Values;
   
   public final class LoadDefaultConfig extends Command implements IPhotonCommand
   {
       
      
      public function LoadDefaultConfig()
      {
         super();
      }
      
      public function execute() : void
      {
         var _loc1_:DefaultConfigVO = new DefaultConfigVO();
         §§push(_loc1_);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 5) * 21 + 72 + 100 - 66);
         }
         _loc1_ = §§pop().find(§§pop()) as DefaultConfigVO;
         model.defaultConfiguration = _loc1_;
         done();
      }
   }
}
