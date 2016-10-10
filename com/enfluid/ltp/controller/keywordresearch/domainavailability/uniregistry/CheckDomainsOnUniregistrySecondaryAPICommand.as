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
   
   public final class CheckDomainsOnUniregistrySecondaryAPICommand extends Command implements IPhotonCommand, IResponder
   {
       
      
      private var service:HTTPService;
      
      private var domainsToCheck:Array;
      
      private var domainsVOMap:Object;
      
      public function CheckDomainsOnUniregistrySecondaryAPICommand(param1:Array, param2:Object)
      {
         this.service = new HTTPService();
         this.domainsToCheck = param1;
         this.domainsVOMap = param2;
         super();
      }
      
      public function execute() : void
      {
         this.service.url = "https://uniregistry.com/api/check/domains/secondary";
         this.service.method = "POST";
         this.service.resultFormat = HTTPService.RESULT_FORMAT_TEXT;
         this.service.contentType = "application/json";
         var _loc1_:Object = {};
         _loc1_.domain_names = this.domainsToCheck;
         this.service.send(JSON.stringify(_loc1_)).addResponder(this);
      }
      
      public final function result(param1:Object) : void
      {
         var _loc3_:* = null;
         var _loc4_:* = undefined;
         var _loc5_:String = null;
         var _loc6_:DomainsVO = null;
         var _loc2_:* = JSON.parse(param1.result);
         §§push(0);
         if(_loc12_)
         {
            §§push((§§pop() - 1) * 113 - 86 + 1 + 25 + 1);
         }
         for(_loc3_ in _loc2_)
         {
            _loc4_ = _loc2_[_loc3_];
            §§push(_loc3_);
            §§push(0);
            if(_loc11_)
            {
               §§push(-(-§§pop() - 74) + 78 - 1);
            }
            _loc5_ = §§pop().substr(§§pop(),_loc3_.indexOf("."));
            if(this.domainsVOMap[_loc5_] is DomainsVO)
            {
               this.parse(_loc3_,_loc4_,this.domainsVOMap[_loc5_]);
            }
            else if(this.domainsVOMap[_loc4_.sld] is Array)
            {
               §§push(0);
               if(_loc12_)
               {
                  §§push(-(§§pop() - 18 + 1));
               }
               for each(_loc6_ in this.domainsVOMap[_loc5_])
               {
                  this.parse(_loc3_,_loc4_,_loc6_);
               }
            }
         }
         done();
         Util.saveDomains(this.domainsVOMap);
      }
      
      public final function fault(param1:Object) : void
      {
         Logger.log("Call to Domains Secondary API failed");
      }
      
      private final function parse(param1:String, param2:Object, param3:DomainsVO) : void
      {
         §§push(param1);
         §§push(param1.indexOf("."));
         §§push(1);
         if(_loc6_)
         {
            §§push(-§§pop() + 1 - 6 - 1);
         }
         var _loc4_:String = §§pop().substr(§§pop() + §§pop());
         _loc4_ = _loc4_.replace(".","");
         param3[_loc4_] = param2.availability == "available"?DomainStatuses.AVAILABLE:DomainStatuses.UNAVAILABLE;
      }
   }
}
