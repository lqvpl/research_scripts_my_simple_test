package com.enfluid.ltp.controller.keywordresearch.campaigns
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import flash.utils.ByteArray;
   import spark.layouts.HorizontalLayout;
   import mx.graphics.SolidColor;
   
   public final class CloneDefaultConfigCommand extends Command implements IPhotonCommand
   {
       
      
      private var source:ProjectVO;
      
      private var dest:ProjectVO;
      
      private var includeCountrySettings:Boolean;
      
      public function CloneDefaultConfigCommand(param1:ProjectVO, param2:ProjectVO, param3:Boolean = false)
      {
         this.source = param1;
         this.dest = param2;
         this.includeCountrySettings = param3;
         super();
      }
      
      public function execute() : void
      {
         if(this.includeCountrySettings)
         {
            this.dest.country = this.source.country;
            this.dest.language = this.source.language;
         }
         this.dest.localSearchesEnabled = this.source.localSearchesEnabled;
         this.dest.localSearchesFilterMin = this.source.localSearchesFilterMin;
         this.dest.localSearchesFilterMax = this.source.localSearchesFilterMax;
         this.dest.globalSearchesEnabled = this.source.globalSearchesEnabled;
         this.dest.globalSearchesFilterMin = this.source.globalSearchesFilterMin;
         this.dest.globalSearchesFilterMax = this.source.globalSearchesFilterMax;
         this.dest.suggestedBidEnabled = this.source.suggestedBidEnabled;
         this.dest.suggestedBidFilterMin = this.source.suggestedBidFilterMin;
         this.dest.suggestedBidFilterMax = this.source.suggestedBidFilterMax;
         this.dest.advertiserCompEnabled = this.source.advertiserCompEnabled;
         this.dest.advertiserCompFilterLow = this.source.advertiserCompFilterLow;
         this.dest.advertiserCompFilterMed = this.source.advertiserCompFilterMed;
         this.dest.advertiserCompFilterHigh = this.source.advertiserCompFilterHigh;
         this.dest.googleTitleCompEnabled = this.source.googleTitleCompEnabled;
         this.dest.googleTitleCompAvgDelay = this.source.googleTitleCompAvgDelay;
         this.dest.googleTitleCompFilterMin = this.source.googleTitleCompFilterMin;
         this.dest.googleTitleCompFilterMax = this.source.googleTitleCompFilterMax;
         this.dest.bingTitleCompEnabled = this.source.bingTitleCompEnabled;
         this.dest.bingTitleCompAvgDelay = this.source.bingTitleCompAvgDelay;
         this.dest.bingTitleCompFilterMin = this.source.bingTitleCompFilterMin;
         this.dest.bingTitleCompFilterMax = this.source.bingTitleCompFilterMax;
         this.dest.domainsEnabled = this.source.domainsEnabled;
         this.dest.domainsExactMatchExtensions.selectedExtensionsString = this.source.domainsExactMatchExtensionsString;
         this.dest.domainsHyphenatedExtensions.selectedExtensionsString = this.source.domainsHyphenatedExtensionsString;
         this.dest.numWordsEnabled = this.source.numWordsEnabled;
         this.dest.numWordsFilterMin = this.source.numWordsFilterMin;
         this.dest.numWordsFilterMax = this.source.numWordsFilterMax;
         done();
      }
   }
}
