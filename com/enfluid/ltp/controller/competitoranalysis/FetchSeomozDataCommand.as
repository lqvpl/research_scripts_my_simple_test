package com.enfluid.ltp.controller.competitoranalysis
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.vo.SEOMozKey;
   import com.enfluid.ltp.model.constants.SEOMozKeys;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.util.KeywordUtil;
   import com.hurlant.crypto.Crypto;
   import com.hurlant.crypto.hash.HMAC;
   import com.hurlant.util.Hex;
   import flash.utils.ByteArray;
   import com.hurlant.util.Base64;
   import com.adobe.net.URI;
   import spark.components.CheckBox;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.model.constants.Values;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.util.Util;
   import spark.primitives.Rect;
   import mx.graphics.SolidColor;
   import spark.effects.Resize;
   import com.enfluid.ltp.util.ProgressBarUtil;
   
   public final class FetchSeomozDataCommand extends Command implements IPhotonCommand, IResponder
   {
      
      private static const NUM_RETRIES:int = 6;
       
      
      private var retryCount:int = 0;
      
      private var service:HTTPService;
      
      private var keyword:KeywordVO;
      
      private var seoMozKey:SEOMozKey;
      
      public function FetchSeomozDataCommand(param1:KeywordVO)
      {
         this.service = new HTTPService();
         this.keyword = param1;
         super();
      }
      
      public function execute() : void
      {
         if(waitInQueue)
         {
            return;
         }
         this.service.url = "https://lsapi.seomoz.com/linkscape/url-metrics/";
         this.service.useProxy = false;
         this.service.method = "POST";
         this.service.resultFormat = HTTPService.RESULT_FORMAT_TEXT;
         this.service.contentType = "application/json";
         this.seoMozKey = SEOMozKeys.getNextKey();
         this.addParams();
         var _loc1_:String = this.getUrlsJson();
         this.service.send(_loc1_).addResponder(this);
      }
      
      public final function getUrlsJson() : String
      {
         var _loc2_:CompetitorUrlVO = null;
         var _loc3_:String = null;
         var _loc1_:Array = [];
         §§push(0);
         if(_loc7_)
         {
            §§push(§§pop() + 83 + 1 - 71 - 1 + 24);
         }
         for each(_loc2_ in this.keyword.competitorURLs)
         {
            _loc3_ = _loc2_.url;
            _loc3_ = KeywordUtil.convertChars(_loc3_,"http://","");
            _loc3_ = KeywordUtil.convertChars(_loc3_,"https://","");
            _loc1_.push(_loc3_);
         }
         return JSON.stringify(_loc1_);
      }
      
      public final function calcSignature(param1:int) : String
      {
         var _loc2_:String = this.seoMozKey.accessID + "\n" + param1;
         var _loc3_:HMAC = Crypto.getHMAC("hmac-sha1");
         var _loc4_:ByteArray = Hex.toArray(Hex.fromString(this.seoMozKey.secretKey));
         var _loc5_:ByteArray = Hex.toArray(Hex.fromString(_loc2_));
         var _loc6_:ByteArray = _loc3_.compute(_loc4_,_loc5_);
         var _loc7_:String = Base64.encodeByteArray(_loc6_);
         _loc7_ = URI.escapeChars(_loc7_);
         return _loc7_;
      }
      
      public final function result(param1:Object) : void
      {
         var rawData:String = null;
         §§push(_loc2_);
         §§push(0);
         if(_loc5_)
         {
            §§push((-(§§pop() - 107 + 1 + 1) + 1) * 21 + 2);
         }
         var /*UnknownSlot*/:* = §§pop();
         §§push(_loc2_);
         §§push(0);
         if(_loc5_)
         {
            §§push((§§pop() + 1 - 1 + 84 - 1) * 38 * 47 - 1);
         }
         var /*UnknownSlot*/:* = §§pop();
         §§push(_loc2_);
         §§push(0);
         if(_loc5_)
         {
            §§push(-(§§pop() - 44 - 1 - 108 - 115 - 116) - 8);
         }
         var /*UnknownSlot*/:* = §§pop();
         var competitor:CompetitorUrlVO = null;
         var json:Object = null;
         var data:Object = param1;
         if(isCancelled)
         {
            return;
         }
         try
         {
            rawData = String(data.result);
            §§push(_loc2_);
            §§push(0);
            if(_loc6_)
            {
               §§push((§§pop() + 1) * 31 - 1 + 111);
            }
            var /*UnknownSlot*/:* = §§pop();
            var i:int = rawData.indexOf("\"");
            while(true)
            {
               §§push(i);
               §§push(-1);
               if(_loc5_)
               {
                  §§push(-§§pop() + 32 - 1 + 63 - 1 + 23);
               }
               if(§§pop() <= §§pop())
               {
                  break;
               }
               st++;
               §§push(st);
               §§push(1);
               if(_loc6_)
               {
                  §§push((§§pop() * 60 - 86 - 0 - 1) * 71);
               }
               if(§§pop() > §§pop() && §§pop() == §§pop())
               {
                  §§push(_loc2_);
                  §§push(0);
                  if(_loc6_)
                  {
                     §§push((-§§pop() - 1) * 82 + 1);
                  }
                  var /*UnknownSlot*/:* = §§pop();
               }
               else
               {
                  §§push(st);
                  §§push(1);
                  if(_loc5_)
                  {
                     §§push(§§pop() - 88 - 1 + 102 - 49 + 1);
                  }
                  if(§§pop() > §§pop())
                  {
                     §§push(_loc2_);
                     §§push(rawData);
                     §§push(0);
                     if(_loc6_)
                     {
                        §§push(-(§§pop() + 4 - 108) + 1 + 72 + 111 + 1);
                     }
                     §§push(§§pop().substr(§§pop(),i) + "\\\"");
                     §§push(rawData);
                     §§push(i);
                     §§push(1);
                     if(_loc5_)
                     {
                        §§push(§§pop() * 117 - 81 + 32);
                     }
                     var /*UnknownSlot*/:* = §§pop() + §§pop().substr(§§pop() + §§pop());
                     i++;
                  }
               }
               §§push(_loc2_);
               §§push(rawData);
               §§push("\"");
               §§push(i);
               §§push(1);
               if(_loc6_)
               {
                  §§push((§§pop() - 41 - 119) * 52 - 22 + 1 - 89);
               }
               var /*UnknownSlot*/:* = int(§§pop().indexOf(§§pop(),§§pop() + §§pop()));
            }
            try
            {
               json = JSON.parse(rawData);
            }
            catch(err:Error)
            {
               Logger.log("********************* Error Parsing Moz Data  ***************************");
               Logger.log(rawData);
               markAllAsErrors();
               done(FAILURE);
               return;
            }
            §§push(_loc2_);
            §§push(0);
            if(_loc5_)
            {
               §§push(((§§pop() + 1) * 91 + 1 + 1) * 96 - 1);
            }
            var /*UnknownSlot*/:* = §§pop();
            §§push(0);
            if(_loc6_)
            {
               §§push((§§pop() + 70) * 85 - 40 - 51);
            }
            for each(competitor in this.keyword.competitorURLs)
            {
               competitor.domainAuthority = Math.round(json[index].pda);
               competitor.pageAuthority = Math.round(json[index].upa);
               competitor.mozRank = this.round(json[index].umrp);
               competitor.juiceLinks = Number(json[index].ueid);
               competitor.seomozLinks = Number(json[index].uid);
               index++;
            }
            this.seoMozKey.numSucesses++;
         }
         catch(err:Error)
         {
            Logger.log("INVALID JSON RECEIVED WHEN FETCHING SEOMOZ DATA: " + data.result);
            markAllAsErrors();
            done(FAILURE);
            return;
         }
         this.done();
      }
      
      public final function markAllAsErrors() : void
      {
         var _loc1_:CompetitorUrlVO = null;
         §§push(0);
         if(_loc4_)
         {
            §§push(-§§pop() + 1 - 1);
         }
         for each(_loc1_ in this.keyword.competitorURLs)
         {
            _loc1_.domainAuthority = Values.ERROR;
            _loc1_.pageAuthority = Values.ERROR;
            _loc1_.mozRank = Values.ERROR;
            _loc1_.juiceLinks = Values.ERROR;
            _loc1_.seomozLinks = Values.ERROR;
         }
      }
      
      public final function fault(param1:Object) : void
      {
         this.seoMozKey.numFailures++;
         if(isCancelled)
         {
            return;
         }
         model.mostRecentFailedSEOMozREsult = param1.fault.content.toString();
         if(this.retryCount >= NUM_RETRIES)
         {
            this.markAllAsErrors();
            this.done(FAILURE);
            return;
         }
         this.retryCount++;
         §§push();
         §§push(this.execute);
         §§push(1000);
         if(_loc5_)
         {
            §§push(-(-§§pop() * 40 - 1) + 55 + 117 + 1);
         }
         §§pop().setTimeout(§§pop(),§§pop());
      }
      
      override protected function done(param1:String = "success") : void
      {
         if(param1 == SUCCESS)
         {
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("pageAuthority");
            §§push(1);
            if(_loc2_)
            {
               §§push(-(§§pop() + 10 + 1 - 96 + 85 - 1) - 1);
            }
            §§pop().pageAuthorityAvg = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("seomozLinks");
            §§push(0);
            if(_loc2_)
            {
               §§push(--§§pop() + 116);
            }
            §§pop().pageLinksAvg = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("juiceLinks");
            §§push(0);
            if(_loc2_)
            {
               §§push(-(§§pop() - 80 - 114 + 57) + 1 - 76 + 1);
            }
            §§pop().juiceLinksAvg = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("domainAuthority");
            §§push(1);
            if(_loc2_)
            {
               §§push(-(§§pop() + 1 + 1) * 106);
            }
            §§pop().domainAuthorityAvg = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("mozRank");
            §§push(1);
            if(_loc3_)
            {
               §§push(-(§§pop() - 1 + 1 + 59 + 119 + 63) * 56);
            }
            §§pop().mozRankAvg = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
         }
         else
         {
            this.keyword.competitorAnalysisAverages.pageAuthorityAvg = Values.ERROR;
            this.keyword.competitorAnalysisAverages.pageLinksAvg = Values.ERROR;
            this.keyword.competitorAnalysisAverages.juiceLinksAvg = Values.ERROR;
            this.keyword.competitorAnalysisAverages.domainAuthorityAvg = Values.ERROR;
            this.keyword.competitorAnalysisAverages.mozRankAvg = Values.ERROR;
         }
         super.done(param1);
      }
      
      private final function addParams() : void
      {
         this.service.url = this.service.url + "?";
         this.service.url = this.service.url + ("&AccessID=" + this.seoMozKey.accessID);
         var _loc1_:int = this.calcExpiresTimestamp();
         this.service.url = this.service.url + ("&Expires=" + _loc1_);
         this.service.url = this.service.url + ("&Signature=" + this.calcSignature(_loc1_));
         §§push(this.service);
         §§push(this.service.url);
         §§push("&Cols=");
         §§push(2048);
         if(_loc2_)
         {
            §§push((§§pop() + 25 - 54 + 77) * 61 * 50 - 33);
         }
         §§push(§§pop() + 32);
         §§push(16384);
         if(_loc3_)
         {
            §§push(§§pop() - 111 + 22 + 1 + 20 + 1 - 1 + 31);
         }
         §§pop().url = §§pop() + (§§pop() + (§§pop() + §§pop() + 34359738368 + 68719476736));
      }
      
      private final function calcExpiresTimestamp() : int
      {
         var _loc1_:Date = new Date();
         §§push(_loc1_);
         §§push(_loc1_.minutes);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 57) - 1));
         }
         §§pop().minutes = §§pop() + §§pop();
         §§push(_loc1_.time);
         §§push(1000);
         if(_loc2_)
         {
            §§push((§§pop() + 1 - 72 - 99) * 68 + 40 - 98);
         }
         return §§pop() / §§pop();
      }
      
      private final function round(param1:String) : Number
      {
         var _loc2_:Number = Number(param1);
         §§push(Math);
         §§push(_loc2_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 1 - 111 + 110));
         }
         §§push(§§pop().round(§§pop() * §§pop()));
         §§push(100);
         if(_loc4_)
         {
            §§push((§§pop() - 57 - 1) * 69 + 65 + 12);
         }
         return §§pop() / §§pop();
      }
   }
}
