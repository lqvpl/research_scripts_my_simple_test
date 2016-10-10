package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import com.enfluid.ltp.model.vo.ProxyVO;
   import mx.collections.ArrayCollection;
   import flash.utils.ByteArray;
   import com.adobe.utils.StringUtil;
   
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
