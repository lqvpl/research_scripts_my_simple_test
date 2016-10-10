package com.enfluid.ltp.controller.competitoranalysis
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import mx.binding.Binding;
   import flash.utils.Proxy;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import com.enfluid.ltp.view.containers.LockCollapsiblePanel;
   import com.enfluid.ltp.util.Scraper;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.util.KeywordUtil;
   import com.enfluid.ltp.model.constants.Values;
   import com.photon.controller.PhotonCommand;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   import mx.binding.BindingManager;
   import spark.components.Label;
   import flash.events.MouseEvent;
   
   public final class FetchSiteAgeCommand extends Command implements IPhotonCommand, IResponder
   {
       
      
      private var scraper:Scraper;
      
      private var service:HTTPService;
      
      private var competitorUrl:CompetitorUrlVO;
      
      public function FetchSiteAgeCommand(param1:CompetitorUrlVO)
      {
         this.scraper = new Scraper();
         this.service = new HTTPService();
         this.competitorUrl = param1;
         super();
      }
      
      public final function findMonth(param1:String) : int
      {
         §§push(param1.indexOf("Jan"));
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() + 1 + 1 + 1 - 1 - 70) * 9));
         }
         if(§§pop() >= §§pop())
         {
            §§push(0);
            if(_loc2_)
            {
               return (§§pop() * 30 - 1 - 1) * 69;
            }
         }
         §§push(param1.indexOf("Feb"));
         §§push(0);
         if(_loc3_)
         {
            §§push(((§§pop() - 1 - 1 + 103) * 109 + 1) * 6);
         }
         if(§§pop() >= §§pop())
         {
            §§push(1);
            if(_loc3_)
            {
               return -(§§pop() - 115 - 24) + 101 + 1;
            }
         }
         §§push(param1.indexOf("Mar"));
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 + 1 + 1 + 1);
         }
         if(§§pop() >= §§pop())
         {
            §§push(2);
            if(_loc2_)
            {
               return --(-§§pop() * 38) - 1 - 110 - 1;
            }
         }
         §§push(param1.indexOf("Apr"));
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() * 28 - 1 - 1));
         }
         if(§§pop() >= §§pop())
         {
            §§push(3);
            if(_loc2_)
            {
               return -((§§pop() - 109 - 1) * 108 - 98);
            }
         }
         §§push(param1.indexOf("May"));
         §§push(0);
         if(_loc3_)
         {
            §§push((-(§§pop() + 49) + 15 + 12) * 89);
         }
         if(§§pop() >= §§pop())
         {
            §§push(4);
            if(_loc2_)
            {
               return -(-§§pop() - 1) * 54;
            }
         }
         §§push(param1.indexOf("Jun"));
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 1 + 71) * 95 * 76 + 1);
         }
         if(§§pop() >= §§pop())
         {
            §§push(5);
            if(_loc3_)
            {
               return (-(§§pop() + 1 + 1) - 102 + 1 + 1) * 81;
            }
         }
         §§push(param1.indexOf("Jul"));
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 5 - 113 + 1);
         }
         if(§§pop() >= §§pop())
         {
            §§push(6);
            if(_loc3_)
            {
               return -(-(-(§§pop() * 20) + 114) - 60 + 1);
            }
         }
         §§push(param1.indexOf("Aug"));
         §§push(0);
         if(_loc3_)
         {
            §§push((-§§pop() - 1 - 110) * 61 * 52 * 115);
         }
         if(§§pop() >= §§pop())
         {
            §§push(7);
            if(_loc3_)
            {
               return -(--§§pop() + 1) - 1;
            }
         }
         §§push(param1.indexOf("Sep"));
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() - 100 + 51) * 30) + 1);
         }
         if(§§pop() >= §§pop())
         {
            §§push(8);
            if(_loc3_)
            {
               return -(§§pop() * 82 * 89) * 45 * 110 + 1;
            }
         }
         §§push(param1.indexOf("Oct"));
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1) * 35 * 115));
         }
         if(§§pop() >= §§pop())
         {
            §§push(9);
            if(_loc2_)
            {
               return (§§pop() - 1 - 17) * 52 + 75 + 1;
            }
         }
         §§push(param1.indexOf("Nov"));
         §§push(0);
         if(_loc3_)
         {
            §§push((-(§§pop() + 1) + 1) * 67);
         }
         if(§§pop() >= §§pop())
         {
            §§push(10);
            if(_loc2_)
            {
               return (§§pop() * 43 - 110) * 69 * 2 + 20 - 1;
            }
         }
         §§push(param1.indexOf("Dec"));
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 11 + 1);
         }
         if(§§pop() >= §§pop())
         {
            §§push(11);
            if(_loc3_)
            {
               return --(§§pop() * 79 - 82) * 95;
            }
         }
         §§push(5);
         if(_loc2_)
         {
            §§push(--§§pop() * 108);
         }
         return §§pop();
      }
      
      public function execute() : void
      {
         var _loc1_:String = KeywordUtil.extractFullDomain(this.competitorUrl.url);
         this.service.url = "http://web.archive.org/web/*/" + _loc1_;
         this.service.method = "GET";
         this.service.resultFormat = "text";
         this.service.send().addResponder(this);
      }
      
      public final function fault(param1:Object) : void
      {
         this.competitorUrl.siteCreationDate = Values.ERROR_DATE;
         done(PhotonCommand.FAILURE);
      }
      
      public final function onReady() : void
      {
         var div:* = undefined;
         var dateString:String = null;
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 1 - 79 - 1 + 1);
         }
         var /*UnknownSlot*/:* = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() + 1 - 15) * 50 + 1);
         }
         var /*UnknownSlot*/:* = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() - 75 - 1) + 1 - 92 - 51 - 75);
         }
         var /*UnknownSlot*/:* = §§pop();
         var array:Array = null;
         try
         {
            div = this.scraper.getElementById("wbMeta");
            §§push(_loc1_);
            §§push(div.children);
            §§push(1);
            if(_loc4_)
            {
               §§push(-(§§pop() * 40 - 1 + 87));
            }
            §§push(§§pop()[§§pop()].children);
            §§push(1);
            if(_loc3_)
            {
               §§push((§§pop() + 1 - 3) * 47);
            }
            var /*UnknownSlot*/:* = §§pop()[§§pop()].innerText;
            dateString = dateString.replace(",","");
            var month:int = this.findMonth(dateString);
            array = dateString.split(" ");
            §§push(dateString.indexOf("UTC"));
            §§push(0);
            if(_loc4_)
            {
               §§push(-(§§pop() + 1 + 0 - 98));
            }
            if(§§pop() >= §§pop())
            {
               §§push(_loc1_);
               §§push(array);
               §§push(2);
               if(_loc3_)
               {
                  §§push(§§pop() - 1 + 33 + 1 + 1);
               }
               var /*UnknownSlot*/:* = int(§§pop()[§§pop()]);
               §§push(_loc1_);
               §§push(array);
               §§push(5);
               if(_loc4_)
               {
                  §§push(--§§pop() * 56 - 1 - 101);
               }
               var /*UnknownSlot*/:* = int(§§pop()[§§pop()]);
            }
            else
            {
               §§push(_loc1_);
               §§push(array);
               §§push(1);
               if(_loc4_)
               {
                  §§push((§§pop() * 20 + 101 + 1) * 104 + 1);
               }
               var /*UnknownSlot*/:* = int(§§pop()[§§pop()]);
               §§push(_loc1_);
               §§push(array);
               §§push(2);
               if(_loc3_)
               {
                  §§push(-§§pop() - 1 - 1 - 1);
               }
               var /*UnknownSlot*/:* = int(§§pop()[§§pop()]);
            }
            this.competitorUrl.siteCreationDate = new Date(year,month,date);
         }
         catch(err:Error)
         {
            competitorUrl.siteCreationDate = Values.ERROR_DATE;
         }
         done();
      }
      
      public final function result(param1:Object) : void
      {
         if(isCancelled)
         {
            return;
         }
         this.scraper.setHtmlContent(param1.result,this.onReady);
      }
   }
}
