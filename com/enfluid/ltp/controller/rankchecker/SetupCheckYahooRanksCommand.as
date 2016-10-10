package com.enfluid.ltp.controller.rankchecker
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.skins.FlatUIComponents.HeaderRenderer.target;
   import com.enfluid.ltp.view.skins.FlatUIComponents.HeaderRenderer.FlatDeleteColumnHeaderRenderer;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   import com.enfluid.ltp.model.DataModel;
   
   use namespace mx_internal;
   
   public final class SetupCheckYahooRanksCommand extends PhotonComplexCommand implements IPhotonCommand
   {
       
      
      public function SetupCheckYahooRanksCommand()
      {
         var _loc1_:RankCheckItemVO = null;
         super();
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() * 16 - 1 + 42 + 1 - 12 - 39 + 24);
         }
         for each(_loc1_ in DataModel.instance.rankCheckItems)
         {
            addCommand(new CheckYahooRankCommand(_loc1_));
         }
      }
   }
}
