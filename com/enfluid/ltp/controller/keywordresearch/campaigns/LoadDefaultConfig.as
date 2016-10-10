package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.collections.IList;
   import com.enfluid.ltp.model.constants.CurrencyAndNumberFormatter;
   import mx.states.State;
   import mx.states.SetProperty;
   import com.enfluid.ltp.model.vo.DefaultConfigVO;
   import mx.graphics.SolidColorStroke;
   import mx.binding.BindingManager;
   
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
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 + 82 - 28 + 1 - 48);
         }
         _loc1_ = §§pop().find(§§pop()) as DefaultConfigVO;
         model.defaultConfiguration = _loc1_;
         done();
      }
   }
}
