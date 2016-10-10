package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.vo.ProxyVO;
   import mx.utils.StringUtil;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.model.constants.Values;
   import mx.collections.ArrayCollection;
   import flash.display.Graphics;
   
   public final class LoadProxiesCommand extends Command implements IPhotonCommand
   {
       
      
      public function LoadProxiesCommand()
      {
         super();
      }
      
      public function execute() : void
      {
         var _loc1_:ProxyVO = new ProxyVO();
         model.proxies = new ArrayCollection(_loc1_.findBySQLWithoutParams("SELECT * FROM ProxyVOs;"));
         done();
      }
   }
}
