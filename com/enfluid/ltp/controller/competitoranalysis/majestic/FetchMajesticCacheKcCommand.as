package com.enfluid.ltp.controller.competitoranalysis.majestic
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import mx.rpc.http.HTTPService;
   import hr.binaria.asx3m.mapper.IMapper;
   import com.enfluid.ltp.model.vo.CountryVO;
   import com.enfluid.ltp.model.vo.LanguageVO;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import com.enfluid.ltp.model.constants.Values;
   import mx.controls.Alert;
   import mx.collections.ArrayCollection;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.DeleteCompetitorUrlsCommand;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import flash.utils.setTimeout;
   import flash.events.Event;
   
   public final class FetchMajesticCacheKcCommand extends Command implements IPhotonCommand, IResponder
   {
       
      
      private var keyword:KeywordVO;
      
      private var isBatch:Boolean;
      
      private var service:HTTPService;
      
      public function FetchMajesticCacheKcCommand(param1:KeywordVO, param2:Boolean = false)
      {
         this.keyword = param1;
         this.isBatch = param2;
         this.service = new HTTPService();
         super();
      }
      
      public function execute() : void
      {
         var _loc1_:CountryVO = null;
         var _loc2_:LanguageVO = null;
         var _loc3_:ProjectVO = null;
         this.keyword.avgKC = Values.CURRENTLY_FETCHING;
         if(!viewModel.selectedKeywordsTab.isFavoritesTab && !viewModel.selectedKeywordsTab.isTrashTab)
         {
            _loc1_ = model.selectedProject.country;
            _loc2_ = model.selectedProject.language;
         }
         else
         {
            _loc3_ = this.keyword.project;
            if(_loc3_)
            {
               _loc1_ = _loc3_.country;
               _loc2_ = _loc3_.language;
            }
            else
            {
               Alert.show("Yikes!  It looks like the project for this keyword no longer exits.  We need a project so we can fetch Google search results for the correct country and language.\n\nTip: Just re-add this keyword to the project of your choice using \'Quick Add & Analyze\'.","No Project");
               this.keyword.avgKC = Values.NOT_FETCHED;
               this.done();
               return;
            }
         }
         this.keyword.avgKC = Values.COMPETITORS_BULK_FETCHING_DONE;
         this.done();
      }
      
      public final function result(param1:Object) : void
      {
         var results:ArrayCollection = null;
         §§push(_loc2_);
         §§push(0);
         if(_loc6_)
         {
            §§push(-((§§pop() + 10 - 1) * 34) + 1);
         }
         var /*UnknownSlot*/:* = §§pop();
         §§push(_loc2_);
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() + 11) + 17 - 62 - 1 - 91);
         }
         var /*UnknownSlot*/:* = §§pop();
         var page:Object = null;
         var competitor:CompetitorUrlVO = null;
         var data:Object = param1;
         var response:Object = JSON.parse(data.result);
         §§push(response.status_code);
         §§push(200);
         if(_loc5_)
         {
            §§push((§§pop() - 9 - 96) * 74 + 1);
         }
         if(§§pop() != §§pop())
         {
            if(!this.isBatch)
            {
               new AnalyzeMajesticCompetitionCommand(this.keyword).execute();
            }
            else
            {
               this.keyword.avgKC = Values.COMPETITORS_BULK_FETCHING_DONE;
            }
            this.done();
            return;
         }
         if(response.data)
         {
            results = this.keyword.competitorURLs;
            §§push(_loc2_);
            §§push(0);
            if(_loc6_)
            {
               §§push(§§pop() + 68 - 1 - 80);
            }
            var /*UnknownSlot*/:* = §§pop();
            §§push(_loc2_);
            §§push(0);
            if(_loc6_)
            {
               §§push(-(§§pop() + 77 - 1));
            }
            var /*UnknownSlot*/:* = §§pop();
            new DeleteCompetitorUrlsCommand(this.keyword.competitorURLs,this.keyword).execute();
            §§push(0);
            if(_loc6_)
            {
               §§push((§§pop() - 1) * 30 - 74);
            }
            for each(page in response.data)
            {
               competitor = new CompetitorUrlVO();
               page = this.checkForNullValues(page);
               competitor.url = page.url;
               competitor.title = page.title;
               competitor.boldedTitle = page.title;
               competitor.rankOnPage = page.rank_on_page;
               competitor.majestic_kc = page.majestic_kc;
               competitor.trust_flow = page.trustflow;
               competitor.citation_flow = page.citationflow;
               competitor.referring_domains = page.ref_domains;
               competitor.referring_ips = page.ref_ips;
               competitor.external_backlinks = page.ext_backlinks;
               competitor.internal_links = page.outlinks_internal;
               §§push(competitor);
               §§push(Math);
               §§push(page.trustflow / page.citationflow);
               §§push(100);
               if(_loc6_)
               {
                  §§push((-(§§pop() - 1) * 22 - 19) * 47 + 25);
               }
               §§pop().spam_score = §§pop().round(§§pop() * §§pop());
               §§push(competitor);
               §§push(page.indexed_urls);
               §§push(0);
               if(_loc6_)
               {
                  §§push((§§pop() * 20 * 67 - 1) * 98);
               }
               if(§§pop() < §§pop())
               {
                  §§push(0);
                  if(_loc5_)
                  {
                     §§push(§§pop() + 1 - 27 + 84 + 1 - 1);
                  }
               }
               else
               {
                  §§push(int(page.indexed_urls));
               }
               §§pop().indexed_urls = §§pop();
               competitor.referring_edu_gov = page.ref_domains_edu + page.ref_domains_gov;
               competitor.external_edu_gov = page.ext_backlinks_edu + page.ext_backlinks_gov;
               competitor.description = page.description;
               competitor.outbound_links = page.outlinks_external;
               competitor.domain_citation = page.domain_citationflow;
               competitor.domain_trust = page.domain_trustflow;
               competitor.keyword = this.keyword;
               competitor.save();
               results.addItem(competitor);
               var totalKc:int = totalKc + int(page.majestic_kc);
               totalPages++;
            }
            §§push(totalPages);
            §§push(6);
            if(_loc6_)
            {
               §§push(-(-(§§pop() * 72 - 1) + 27 + 72));
            }
            if(§§pop() <= §§pop() || §§pop() < §§pop())
            {
               if(!this.isBatch)
               {
                  new AnalyzeMajesticCompetitionCommand(this.keyword).execute();
                  this.done(FAILURE);
                  return;
               }
            }
            new SetUserEvent("UserEvent.Keyword.fromMajesticCache").execute();
            this.keyword.isFromCache = this.isBatch;
            this.keyword.avgKC = Math.round(totalKc / totalPages);
            new CalcAllMajesticCompetitorAverage(this.keyword).execute();
            this.keyword.save();
         }
         §§push();
         §§push(function():void
         {
            done();
         });
         §§push(1000);
         if(_loc5_)
         {
            §§push(§§pop() * 75 + 49 + 1 + 1 - 105 + 1);
         }
         §§pop().setTimeout(§§pop(),§§pop());
      }
      
      protected final function checkForNullValues(param1:Object) : Object
      {
         var _loc2_:* = null;
         §§push(0);
         if(_loc6_)
         {
            §§push(-((§§pop() * 109 - 50 + 116 - 1) * 45) - 1);
         }
         for(_loc2_ in param1)
         {
            if(param1[_loc2_] == null)
            {
               param1[_loc2_] = Values.CACHE_NULL_VALUE;
            }
         }
         return param1;
      }
      
      public final function fault(param1:Object) : void
      {
         if(!this.isBatch)
         {
            new AnalyzeMajesticCompetitionCommand(this.keyword).execute();
         }
         this.done();
      }
      
      override protected function done(param1:String = "success") : void
      {
         dispatchEvent(new Event("MajesticCacheDone"));
         super.done(param1);
      }
   }
}
