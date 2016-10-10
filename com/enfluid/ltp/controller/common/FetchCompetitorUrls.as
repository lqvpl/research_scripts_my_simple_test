package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import flash.events.Event;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.headers.target;
   import com.enfluid.ltp.view.renderers.headers.CustomHeaderRenderer;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.binding.Binding;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import mx.formatters.DateFormatter;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import com.enfluid.ltp.model.vo.CountryVO;
   import com.enfluid.ltp.model.vo.LanguageVO;
   import spark.components.Label;
   
   use namespace mx_internal;
   
   public final class FetchCompetitorUrls extends FetchGoogleSearchResultsCommand implements IPhotonCommand
   {
       
      
      private var keyword:KeywordVO;
      
      public function FetchCompetitorUrls(param1:KeywordVO, param2:CountryVO, param3:LanguageVO)
      {
         this.keyword = param1;
         this.results = param1.competitorURLs;
         this.keywordString = param1.strippedKeyword;
         this.country = param2;
         this.language = param3;
         super();
      }
      
      override public function execute() : void
      {
         this.keyword.avgKC = Values.CURRENTLY_FETCHING;
         if(this.keyword.isFromCache)
         {
            this.keyword.save();
            this.done();
         }
         else
         {
            super.execute();
         }
      }
      
      override protected function done(param1:String = "success") : void
      {
         var _loc2_:CompetitorUrlVO = null;
         if(model.isFetchingBatchMissingMajesticKC && !this.keyword.isFromCache)
         {
            this.keyword.avgKC = Values.COMPETITORS_BULK_FETCHING_DONE;
         }
         while(true)
         {
            §§push(results.length);
            §§push(10);
            if(_loc5_)
            {
               §§push(§§pop() + 1 - 1 + 113 + 118 - 1);
            }
            if(§§pop() <= §§pop())
            {
               break;
            }
            results.removeItemAt(results.length - 1);
         }
         §§push(0);
         if(_loc5_)
         {
            §§push(-((§§pop() - 1) * 21) + 51 + 119);
         }
         for each(_loc2_ in results)
         {
            _loc2_.keyword = this.keyword;
         }
         new SetUserEvent("UserEvent.Google.Fetch.Serp",{"pages":results.length}).execute();
         super.done(param1);
      }
   }
}
