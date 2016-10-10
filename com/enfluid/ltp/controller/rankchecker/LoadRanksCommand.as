package com.enfluid.ltp.controller.rankchecker
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import com.adobe.utils.StringUtil;
   
   public final class LoadRanksCommand extends PhotonComplexCommand implements IPhotonCommand
   {
       
      
      public function LoadRanksCommand()
      {
         super();
         addCommand(new ReadRanksXMLCommand());
      }
   }
}
