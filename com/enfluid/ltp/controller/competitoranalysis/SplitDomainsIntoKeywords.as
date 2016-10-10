package com.enfluid.ltp.controller.competitoranalysis
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import mx.rpc.http.HTTPService;
   import mx.collections.ArrayCollection;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import mx.rpc.AsyncToken;
   import com.enfluid.ltp.util.BlowFishUtil;
   import flash.utils.getTimer;
   import com.enfluid.ltp.util.KeywordUtil;
   import com.enfluid.ltp.util.Logger;
   import com.photon.controller.PhotonCommand;
   
   public final class SplitDomainsIntoKeywords extends Command implements IPhotonCommand, IResponder
   {
       
      
      private var service:HTTPService;
      
      private var time:int;
      
      private var competitorUrls:ArrayCollection;
      
      public function SplitDomainsIntoKeywords(param1:ArrayCollection)
      {
         this.service = new HTTPService();
         this.competitorUrls = param1;
         super();
      }
      
      public function execute() : void
      {
         var _loc2_:CompetitorUrlVO = null;
         var _loc3_:AsyncToken = null;
         var _loc1_:* = "http://longtailpro.com/ftp1/domainplex-relay.php?x=" + BlowFishUtil.encrypt(String(getTimer()),"blahkey") + "&a=get&d=parser&multi_language=1&xml_standard=1&data=";
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() - 1 + 1 - 86);
         }
         for each(_loc2_ in this.competitorUrls)
         {
            _loc1_ = _loc1_ + KeywordUtil.extractMainDomain(_loc2_.url);
            if(this.competitorUrls.getItemIndex(_loc2_) < this.competitorUrls.length - 1)
            {
               _loc1_ = _loc1_ + ">>";
            }
         }
         this.service.url = _loc1_;
         this.service.method = "POST";
         this.service.useProxy = false;
         this.service.resultFormat = "e4x";
         _loc3_ = this.service.send();
         _loc3_.addResponder(this);
         this.time = getTimer();
      }
      
      public final function fault(param1:Object) : void
      {
         Logger.log("KEYWORD SPLITTER FAILED: " + param1.fault.faultDetail);
         done(PhotonCommand.FAILURE);
      }
      
      public final function result(param1:Object) : void
      {
         var _loc4_:XML = null;
         if(isCancelled)
         {
            return;
         }
         var _loc2_:XMLList = XML(param1.result).term;
         §§push(_loc2_.length());
         §§push(0);
         if(_loc7_)
         {
            §§push((§§pop() + 1) * 18 - 26);
         }
         if(§§pop() == §§pop())
         {
            Logger.log("KEYWORD SPLITTER FAILED: " + param1.result);
            done(PhotonCommand.FAILURE);
            return;
         }
         §§push(0);
         if(_loc7_)
         {
            §§push(-(-§§pop() + 57 + 1));
         }
         var _loc3_:* = §§pop();
         §§push(0);
         if(_loc8_)
         {
            §§push((-§§pop() + 67 + 89 + 10) * 48 - 1 - 24);
         }
         for each(_loc4_ in _loc2_)
         {
            CompetitorUrlVO(this.competitorUrls.getItemAt(_loc3_)).urlAsKeywords = _loc4_.@words;
            _loc3_++;
         }
         done();
      }
   }
}
