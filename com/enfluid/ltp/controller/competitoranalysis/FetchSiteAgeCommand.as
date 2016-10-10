package com.enfluid.ltp.controller.competitoranalysis
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import com.enfluid.ltp.util.Scraper;
   import mx.rpc.http.HTTPService;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.util.KeywordUtil;
   import com.enfluid.ltp.model.constants.Values;
   import com.photon.controller.PhotonCommand;
   import mx.binding.Binding;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import spark.components.DataGroup;
   import mx.binding.BindingManager;
   
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
            §§push(--((§§pop() - 1 + 1 - 1) * 23));
         }
         if(§§pop() >= §§pop())
         {
            §§push(0);
            if(_loc2_)
            {
               return (§§pop() + 1) * 17 * 75;
            }
         }
         §§push(param1.indexOf("Feb"));
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 113) - 1);
         }
         if(§§pop() >= §§pop())
         {
            §§push(1);
            if(_loc2_)
            {
               return -(-(§§pop() + 66 - 1) * 52 + 27);
            }
         }
         §§push(param1.indexOf("Mar"));
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 + 87);
         }
         if(§§pop() >= §§pop())
         {
            §§push(2);
            if(_loc3_)
            {
               return (-((§§pop() + 55) * 114) * 34 + 104 - 1) * 94;
            }
         }
         §§push(param1.indexOf("Apr"));
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 21));
         }
         if(§§pop() >= §§pop())
         {
            §§push(3);
            if(_loc2_)
            {
               return -§§pop() + 69 + 1;
            }
         }
         §§push(param1.indexOf("May"));
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 17 - 53);
         }
         if(§§pop() >= §§pop())
         {
            §§push(4);
            if(_loc2_)
            {
               return §§pop() * 119 * 29 - 44 + 28 - 3 + 1;
            }
         }
         §§push(param1.indexOf("Jun"));
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 21 - 1 + 110);
         }
         if(§§pop() >= §§pop())
         {
            §§push(5);
            if(_loc3_)
            {
               return -(§§pop() - 116 - 1 + 113) * 41;
            }
         }
         §§push(param1.indexOf("Jul"));
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 - 86 - 1);
         }
         if(§§pop() >= §§pop())
         {
            §§push(6);
            if(_loc3_)
            {
               return §§pop() + 94 + 1 + 1;
            }
         }
         §§push(param1.indexOf("Aug"));
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() * 0 + 1) * 8 * 33);
         }
         if(§§pop() >= §§pop())
         {
            §§push(7);
            if(_loc2_)
            {
               return §§pop() - 5 - 20 + 1 - 1 + 31 + 1 - 1;
            }
         }
         §§push(param1.indexOf("Sep"));
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1) * 100 + 1 - 107));
         }
         if(§§pop() >= §§pop())
         {
            §§push(8);
            if(_loc2_)
            {
               return --(§§pop() * 47 + 98 - 81 - 1);
            }
         }
         §§push(param1.indexOf("Oct"));
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() - 67) * 86 * 109 - 1 + 100 + 82));
         }
         if(§§pop() >= §§pop())
         {
            §§push(9);
            if(_loc3_)
            {
               return -(§§pop() + 16 - 40 + 1 - 7 - 1);
            }
         }
         §§push(param1.indexOf("Nov"));
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 26) * 0 - 1 + 1);
         }
         if(§§pop() >= §§pop())
         {
            §§push(10);
            if(_loc3_)
            {
               return -(§§pop() * 14 - 1 + 23) - 1 - 1 - 80;
            }
         }
         §§push(param1.indexOf("Dec"));
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 91 + 114 + 1) + 1);
         }
         if(§§pop() >= §§pop())
         {
            §§push(11);
            if(_loc2_)
            {
               return -(-(§§pop() - 1) - 1) + 1;
            }
         }
         §§push(5);
         if(_loc3_)
         {
            §§push(--(§§pop() + 94));
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
         if(_loc4_)
         {
            §§push((§§pop() + 1 - 100 - 69 + 1) * 1 + 8);
         }
         var /*UnknownSlot*/:* = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-((§§pop() + 1) * 52) + 42);
         }
         var /*UnknownSlot*/:* = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(--(-(§§pop() - 68) + 1 + 1) - 116);
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
               §§push(-((§§pop() + 20) * 9 - 1 - 1 + 89 + 36));
            }
            §§push(§§pop()[§§pop()].children);
            §§push(1);
            if(_loc4_)
            {
               §§push(-((§§pop() + 5) * 40));
            }
            var /*UnknownSlot*/:* = §§pop()[§§pop()].innerText;
            dateString = dateString.replace(",","");
            var month:int = this.findMonth(dateString);
            array = dateString.split(" ");
            §§push(dateString.indexOf("UTC"));
            §§push(0);
            if(_loc4_)
            {
               §§push((§§pop() - 1 - 118 - 1 - 1) * 50 + 1);
            }
            if(§§pop() >= §§pop())
            {
               §§push(_loc1_);
               §§push(array);
               §§push(2);
               if(_loc3_)
               {
                  §§push(-(§§pop() + 1) + 1);
               }
               var /*UnknownSlot*/:* = int(§§pop()[§§pop()]);
               §§push(_loc1_);
               §§push(array);
               §§push(5);
               if(_loc3_)
               {
                  §§push(-(§§pop() * 53 + 108) - 1);
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
                  §§push((-(§§pop() + 1) - 89 - 1) * 111);
               }
               var /*UnknownSlot*/:* = int(§§pop()[§§pop()]);
               §§push(_loc1_);
               §§push(array);
               §§push(2);
               if(_loc4_)
               {
                  §§push((--§§pop() * 98 - 25) * 93 + 71);
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
