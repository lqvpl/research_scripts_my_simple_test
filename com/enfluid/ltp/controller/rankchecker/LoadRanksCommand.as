package com.enfluid.ltp.controller.rankchecker
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import spark.primitives.Rect;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.headers.target;
   import com.enfluid.ltp.view.renderers.headers.SelectColumnsHeaderRenderer;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.binding.Binding;
   
   use namespace mx_internal;
   
   public final class LoadRanksCommand extends PhotonComplexCommand implements IPhotonCommand
   {
       
      
      public function LoadRanksCommand()
      {
         super();
         addCommand(new ReadRanksXMLCommand());
      }
   }
}
