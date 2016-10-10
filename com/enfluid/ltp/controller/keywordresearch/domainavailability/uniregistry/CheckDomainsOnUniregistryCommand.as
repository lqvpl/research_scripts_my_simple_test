package com.enfluid.ltp.controller.keywordresearch.domainavailability.uniregistry
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.model.vo.DomainsVO;
   import com.enfluid.ltp.util.Util;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.model.constants.DomainStatuses;
   
   public final class CheckDomainsOnUniregistryCommand extends Command implements IPhotonCommand, IResponder
   {
       
      
      private var service:HTTPService;
      
      private var domainsToCheck:Array;
      
      private var domainsVOMap:Object;
      
      private var domainsToCheckOnSecondaryAPI:Array;
      
      public function CheckDomainsOnUniregistryCommand(param1:Array, param2:Object)
      {
         this.service = new HTTPService();
         this.domainsToCheckOnSecondaryAPI = [];
         this.domainsToCheck = param1;
         this.domainsVOMap = param2;
         super();
      }
      
      public function execute() : void
      {
         this.service.url = "https://uniregistry.com/api/check/domains";
         this.service.method = "POST";
         var _loc1_:Object = {};
         _loc1_.q = this.domainsToCheck.join(",");
         _loc1_.suggest = "false";
         this.service.send(_loc1_).addResponder(this);
      }
      
      public final function result(param1:Object) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:DomainsVO = null;
         var _loc2_:* = JSON.parse(param1.result);
         §§push(0);
         if(_loc10_)
         {
            §§push((§§pop() + 39 - 12 + 64 + 64) * 51);
         }
         for each(_loc3_ in _loc2_.results)
         {
            if(this.domainsVOMap[_loc3_.sld] is DomainsVO)
            {
               this.parse(_loc3_,this.domainsVOMap[_loc3_.sld]);
            }
            else if(this.domainsVOMap[_loc3_.sld] is Array)
            {
               §§push(0);
               if(_loc10_)
               {
                  §§push(-(§§pop() - 105 + 1 - 57 + 47) + 89 + 1);
               }
               for each(_loc4_ in this.domainsVOMap[_loc3_.sld])
               {
                  this.parse(_loc3_,_loc4_);
               }
            }
         }
         done();
         Util.saveDomains(this.domainsVOMap);
         §§push(this.domainsToCheckOnSecondaryAPI.length);
         §§push(0);
         if(_loc9_)
         {
            §§push(-§§pop() - 25 - 1 + 117);
         }
         if(§§pop() > §§pop())
         {
            new CheckDomainsOnUniregistrySecondaryAPICommand(this.domainsToCheckOnSecondaryAPI,this.domainsVOMap).execute();
         }
      }
      
      public final function fault(param1:Object) : void
      {
         Logger.log("Failed to fetch domaains");
         model.mostRecentFailedUniregistryResult = param1.fault.content.toString();
         done(FAILURE);
      }
      
      private final function parse(param1:Object, param2:DomainsVO) : void
      {
         var _loc3_:String = null;
         if(param1.check == true)
         {
            this.domainsToCheckOnSecondaryAPI.push(param1.id);
         }
         else
         {
            _loc3_ = param1.tld.replace(".","");
            param2[_loc3_] = param1.availability == "available"?DomainStatuses.AVAILABLE:DomainStatuses.UNAVAILABLE;
         }
      }
   }
}
