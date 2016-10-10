package com.enfluid.ltp.controller.competitoranalysis
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.vo.SEOMozKey;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.model.constants.Constants;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import mx.rpc.Responder;
   import spark.components.Group;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import com.enfluid.ltp.model.constants.Times;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.model.constants.SEOMozKeys;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.util.KeywordUtil;
   import com.hurlant.crypto.Crypto;
   import com.hurlant.crypto.hash.HMAC;
   import com.hurlant.util.Hex;
   import flash.utils.ByteArray;
   import com.hurlant.util.Base64;
   import spark.effects.Move;
   import mx.graphics.SolidColorStroke;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.util.Util;
   import spark.components.Label;
   
   public final class FetchSeomozDataCommand extends Command implements IPhotonCommand, IResponder
   {
      
      private static const NUM_RETRIES:int = 6;
      
      private static var lastSEOMozCallTimestamp:Number = §§pop();
      
      {
         §§push();
         §§push(0);
         if(_loc1_)
         {
            §§push(--§§pop() - 1 + 61);
         }
      }
      
      private var retryCount:int = 0;
      
      private var service:HTTPService;
      
      private var keyword:KeywordVO;
      
      private var seoMozKey:SEOMozKey;
      
      private var initialKeyFailed:Boolean = false;
      
      private var cacheService:HTTPService;
      
      public function FetchSeomozDataCommand(param1:KeywordVO)
      {
         this.service = new HTTPService();
         this.cacheService = new HTTPService();
         this.keyword = param1;
         super();
      }
      
      public function execute() : void
      {
         if(waitInQueue)
         {
            return;
         }
         if(this.keyword.forceMozData || this.keyword.isExpanded)
         {
            Logger.log("Force data from MOZ " + this.keyword.keyword);
            this.keyword.forceMozData = false;
            this.retrieveFromMoz();
            return;
         }
         var _loc1_:String = Constants.CACHE_API_URL + "avg-kc/" + ProjectVO(this.keyword.project).country.code + "/" + ProjectVO(this.keyword.project).language.code + "/" + encodeURIComponent(this.keyword.keyword.toLowerCase());
         this.cacheService.url = _loc1_;
         this.cacheService.method = "GET";
         this.cacheService.resultFormat = HTTPService.RESULT_FORMAT_TEXT;
         this.cacheService.send().addResponder(new Responder(this.cacheResult,this.cacheFault));
      }
      
      public final function cacheResult(param1:Object) : void
      {
         if(isCancelled)
         {
            return;
         }
         var _loc2_:Object = JSON.parse(param1.result);
         §§push(200);
         if(_loc4_)
         {
            §§push(--(§§pop() * 4) + 1);
         }
         if(§§pop() == _loc2_.status_code && _loc2_.data.avg_kc)
         {
            new SetUserEvent("UserEvent.Keyword.fromCache",{"keyword":this.keyword.keyword}).execute();
            this.keyword.avgKC = _loc2_.data.avg_kc;
            this.keyword.isFromCache = true;
            this.keyword.save();
            this.done(SUCCESS);
         }
         else
         {
            this.retrieveFromMoz();
         }
      }
      
      public final function cacheFault(param1:Object) : void
      {
         this.retrieveFromMoz();
      }
      
      public final function retrieveFromMoz() : void
      {
         var _loc4_:Number = NaN;
         var _loc1_:Number = new Date().time;
         if(!this.initialKeyFailed)
         {
            if(model.isFetchingMissingAvgKC)
            {
               _loc4_ = _loc1_ - lastSEOMozCallTimestamp;
               if(_loc4_ < Times.TEN_SECONDS)
               {
                  §§push();
                  §§push(this.execute);
                  §§push(Times.TEN_SECONDS - _loc4_);
                  §§push(1000);
                  if(_loc5_)
                  {
                     §§push(-((§§pop() + 1 - 1 + 42) * 57 + 69) * 75);
                  }
                  §§pop().setTimeout(§§pop(),§§pop() + §§pop());
                  return;
               }
            }
            lastSEOMozCallTimestamp = _loc1_;
         }
         this.service.url = "https://lsapi.seomoz.com/linkscape/url-metrics/";
         this.service.useProxy = false;
         this.service.method = "POST";
         this.service.resultFormat = HTTPService.RESULT_FORMAT_TEXT;
         this.service.contentType = "application/json";
         var _loc2_:Boolean = this.initialKeyFailed;
         this.seoMozKey = SEOMozKeys.getNextKey(_loc2_);
         this.addParams();
         var _loc3_:String = this.getUrlsJson();
         this.service.send(_loc3_).addResponder(this);
      }
      
      public final function getUrlsJson() : String
      {
         var _loc2_:CompetitorUrlVO = null;
         var _loc3_:String = null;
         var _loc1_:Array = [];
         §§push(0);
         if(_loc6_)
         {
            §§push(((§§pop() + 1) * 14 + 1) * 68 + 92);
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
         _loc7_ = encodeURIComponent(_loc7_);
         return _loc7_;
      }
      
      public final function result(param1:Object) : void
      {
         var rawData:String = null;
         §§push(_loc2_);
         §§push(0);
         if(_loc6_)
         {
            §§push(-((§§pop() - 67) * 115) + 1 - 19 - 21);
         }
         var /*UnknownSlot*/:* = §§pop();
         §§push(_loc2_);
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() - 72 - 92 - 1 - 1) - 117);
         }
         var /*UnknownSlot*/:* = §§pop();
         §§push(_loc2_);
         §§push(0);
         if(_loc6_)
         {
            §§push(-((§§pop() - 1) * 26 + 110) - 7 - 1);
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
               §§push(-(-(§§pop() - 30) * 111) + 1 - 40);
            }
            var /*UnknownSlot*/:* = §§pop();
            var i:int = rawData.indexOf("\"");
            while(true)
            {
               §§push(i);
               §§push(-1);
               if(_loc6_)
               {
                  §§push(-(--§§pop() + 1) + 29);
               }
               if(§§pop() <= §§pop())
               {
                  break;
               }
               st++;
               §§push(st);
               §§push(1);
               if(_loc5_)
               {
                  §§push(--§§pop() + 1);
               }
               if(§§pop() > §§pop() && §§pop() == §§pop())
               {
                  §§push(_loc2_);
                  §§push(0);
                  if(_loc6_)
                  {
                     §§push(-(-(§§pop() + 45) - 1) - 1);
                  }
                  var /*UnknownSlot*/:* = §§pop();
               }
               else
               {
                  §§push(st);
                  §§push(1);
                  if(_loc5_)
                  {
                     §§push((§§pop() * 73 + 100) * 29);
                  }
                  if(§§pop() > §§pop())
                  {
                     §§push(_loc2_);
                     §§push(rawData);
                     §§push(0);
                     if(_loc5_)
                     {
                        §§push(-(§§pop() - 1) * 0);
                     }
                     §§push(§§pop().substr(§§pop(),i) + "\\\"");
                     §§push(rawData);
                     §§push(i);
                     §§push(1);
                     if(_loc6_)
                     {
                        §§push(§§pop() * 101 - 1 + 1);
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
                  §§push(-(§§pop() + 1) + 1 + 1 - 9 + 106);
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
               §§push(-§§pop() * 10 + 66 - 1 + 1 + 66 + 1);
            }
            var /*UnknownSlot*/:* = §§pop();
            §§push(0);
            if(_loc6_)
            {
               §§push(-(((§§pop() - 1) * 52 - 1) * 36) + 119);
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
         if(_loc5_)
         {
            §§push((§§pop() - 1 - 68 - 19 - 1) * 108 - 99);
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
         Logger.log("MOZ FAULT CONTENT: " + param1.fault.content.toString());
         Logger.log("MOZ FAULT MESSAGE: " + param1.fault.message.toString());
         if(this.retryCount >= NUM_RETRIES)
         {
            this.markAllAsErrors();
            this.done(FAILURE);
            return;
         }
         this.retryCount++;
         this.initialKeyFailed = true;
         §§push();
         §§push(this.execute);
         §§push(1000);
         if(_loc5_)
         {
            §§push(--(-(§§pop() * 47 - 58 + 37) + 1));
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
            §§push("domainAuthority");
            §§push(1);
            if(_loc2_)
            {
               §§push((§§pop() - 1 + 1 + 101 - 1 + 1) * 48 - 116);
            }
            §§pop().pageAuthorityAvg = §§pop().calcPageAuthorityAvg(§§pop(),§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("seomozLinks");
            §§push(0);
            if(_loc2_)
            {
               §§push((§§pop() + 1 + 1) * 55 * 100 + 1 + 54 + 1);
            }
            §§pop().pageLinksAvg = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("juiceLinks");
            §§push(0);
            if(_loc3_)
            {
               §§push(((§§pop() + 30) * 45 - 1 + 51 + 56) * 79);
            }
            §§pop().juiceLinksAvg = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("domainAuthority");
            §§push(1);
            if(_loc2_)
            {
               §§push(-§§pop() - 1 + 85);
            }
            §§pop().domainAuthorityAvg = §§pop().calcCompAnalysisAvg(§§pop(),§§pop(),§§pop());
            §§push(this.keyword.competitorAnalysisAverages);
            §§push(Util);
            §§push(this.keyword);
            §§push("mozRank");
            §§push(1);
            if(_loc2_)
            {
               §§push(-(-§§pop() * 17 * 16 + 66) * 86 + 1);
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
            §§push(-(§§pop() - 74) * 110 * 96);
         }
         §§push(§§pop() + 32);
         §§push(16384);
         if(_loc2_)
         {
            §§push(-(§§pop() - 74 - 1 - 1) - 1);
         }
         §§pop().url = §§pop() + (§§pop() + (§§pop() + §§pop() + 34359738368 + 68719476736));
      }
      
      private final function calcExpiresTimestamp() : int
      {
         var _loc1_:Date = new Date();
         §§push(_loc1_);
         §§push(_loc1_.minutes);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() * 89 + 1 - 1 + 87 - 1 - 1);
         }
         §§pop().minutes = §§pop() + §§pop();
         §§push(_loc1_.time);
         §§push(1000);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 34 - 31) * 16));
         }
         return §§pop() / §§pop();
      }
      
      private final function round(param1:String) : Number
      {
         var _loc2_:Number = Number(param1);
         §§push(Math);
         §§push(_loc2_);
         §§push(100);
         if(_loc4_)
         {
            §§push(--(§§pop() - 65 - 95) + 107);
         }
         §§push(§§pop().round(§§pop() * §§pop()));
         §§push(100);
         if(_loc4_)
         {
            §§push(-§§pop() * 17 - 1 - 1);
         }
         return §§pop() / §§pop();
      }
   }
}
