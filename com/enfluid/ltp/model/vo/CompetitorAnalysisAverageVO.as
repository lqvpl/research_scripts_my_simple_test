package com.enfluid.ltp.model.vo
{
   import flash.events.IEventDispatcher;
   import mx.graphics.GradientEntry;
   import mx.events.PropertyChangeEvent;
   import flash.events.EventDispatcher;
   import flash.events.Event;
   import spark.components.Label;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.util.CSVStringUtils;
   import com.enfluid.ltp.view.components.CompetitorAnalysisContentComponent;
   import flash.utils.ByteArray;
   
   public final class CompetitorAnalysisAverageVO implements IEventDispatcher
   {
       
      
      private var _1023830699keywordCompetitivenessAvg:Number = -3;
      
      private var _158897986pageAuthorityAvg:Number = -3;
      
      private var _603835384pageLinksAvg:Number = -3;
      
      private var _1699024423juiceLinksAvg:Number = -3;
      
      private var _986461043domainAuthorityAvg:Number = -3;
      
      private var _1808104654mozRankAvg:Number = -3;
      
      private var _188334729pageRankAvg:Number = -3;
      
      private var _223187078siteAgeAvg:Number = -3;
      
      private var _457867219majestic_kc:Number;
      
      private var _1066159435trust_flow:Number;
      
      private var _414292090citation_flow:Number;
      
      private var _579719584referring_domains:Number;
      
      private var _1337784803referring_ips:Number;
      
      private var _902062146external_backlinks:Number;
      
      private var _1159629302referring_edu_gov:Number;
      
      private var _810650641external_edu_gov:Number;
      
      private var _635911708spam_score:Number;
      
      private var _1313490802indexed_urls:Number;
      
      private var _287746474outbound_links:Number;
      
      private var _785168311internal_links:Number;
      
      private var _968655874domain_citation:Number;
      
      private var _1061235939domain_trust:Number;
      
      private var _bindingEventDispatcher:EventDispatcher;
      
      public function CompetitorAnalysisAverageVO()
      {
         this._bindingEventDispatcher = new EventDispatcher(IEventDispatcher(this));
         super();
      }
      
      [Bindable(event="propertyChange")]
      public function get keywordCompetitivenessAvg() : Number
      {
         return this._1023830699keywordCompetitivenessAvg;
      }
      
      public function set keywordCompetitivenessAvg(param1:Number) : void
      {
         var _loc2_:Object = this._1023830699keywordCompetitivenessAvg;
         if(_loc2_ !== param1)
         {
            this._1023830699keywordCompetitivenessAvg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keywordCompetitivenessAvg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageAuthorityAvg() : Number
      {
         return this._158897986pageAuthorityAvg;
      }
      
      public function set pageAuthorityAvg(param1:Number) : void
      {
         var _loc2_:Object = this._158897986pageAuthorityAvg;
         if(_loc2_ !== param1)
         {
            this._158897986pageAuthorityAvg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageAuthorityAvg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageLinksAvg() : Number
      {
         return this._603835384pageLinksAvg;
      }
      
      public function set pageLinksAvg(param1:Number) : void
      {
         var _loc2_:Object = this._603835384pageLinksAvg;
         if(_loc2_ !== param1)
         {
            this._603835384pageLinksAvg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageLinksAvg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get juiceLinksAvg() : Number
      {
         return this._1699024423juiceLinksAvg;
      }
      
      public function set juiceLinksAvg(param1:Number) : void
      {
         var _loc2_:Object = this._1699024423juiceLinksAvg;
         if(_loc2_ !== param1)
         {
            this._1699024423juiceLinksAvg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"juiceLinksAvg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainAuthorityAvg() : Number
      {
         return this._986461043domainAuthorityAvg;
      }
      
      public function set domainAuthorityAvg(param1:Number) : void
      {
         var _loc2_:Object = this._986461043domainAuthorityAvg;
         if(_loc2_ !== param1)
         {
            this._986461043domainAuthorityAvg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainAuthorityAvg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mozRankAvg() : Number
      {
         return this._1808104654mozRankAvg;
      }
      
      public function set mozRankAvg(param1:Number) : void
      {
         var _loc2_:Object = this._1808104654mozRankAvg;
         if(_loc2_ !== param1)
         {
            this._1808104654mozRankAvg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mozRankAvg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageRankAvg() : Number
      {
         return this._188334729pageRankAvg;
      }
      
      public function set pageRankAvg(param1:Number) : void
      {
         var _loc2_:Object = this._188334729pageRankAvg;
         if(_loc2_ !== param1)
         {
            this._188334729pageRankAvg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageRankAvg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get siteAgeAvg() : Number
      {
         return this._223187078siteAgeAvg;
      }
      
      public function set siteAgeAvg(param1:Number) : void
      {
         var _loc2_:Object = this._223187078siteAgeAvg;
         if(_loc2_ !== param1)
         {
            this._223187078siteAgeAvg = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"siteAgeAvg",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get majestic_kc() : Number
      {
         return this._457867219majestic_kc;
      }
      
      public function set majestic_kc(param1:Number) : void
      {
         var _loc2_:Object = this._457867219majestic_kc;
         if(_loc2_ !== param1)
         {
            this._457867219majestic_kc = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"majestic_kc",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get trust_flow() : Number
      {
         return this._1066159435trust_flow;
      }
      
      public function set trust_flow(param1:Number) : void
      {
         var _loc2_:Object = this._1066159435trust_flow;
         if(_loc2_ !== param1)
         {
            this._1066159435trust_flow = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"trust_flow",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get citation_flow() : Number
      {
         return this._414292090citation_flow;
      }
      
      public function set citation_flow(param1:Number) : void
      {
         var _loc2_:Object = this._414292090citation_flow;
         if(_loc2_ !== param1)
         {
            this._414292090citation_flow = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"citation_flow",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get referring_domains() : Number
      {
         return this._579719584referring_domains;
      }
      
      public function set referring_domains(param1:Number) : void
      {
         var _loc2_:Object = this._579719584referring_domains;
         if(_loc2_ !== param1)
         {
            this._579719584referring_domains = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"referring_domains",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get referring_ips() : Number
      {
         return this._1337784803referring_ips;
      }
      
      public function set referring_ips(param1:Number) : void
      {
         var _loc2_:Object = this._1337784803referring_ips;
         if(_loc2_ !== param1)
         {
            this._1337784803referring_ips = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"referring_ips",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get external_backlinks() : Number
      {
         return this._902062146external_backlinks;
      }
      
      public function set external_backlinks(param1:Number) : void
      {
         var _loc2_:Object = this._902062146external_backlinks;
         if(_loc2_ !== param1)
         {
            this._902062146external_backlinks = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"external_backlinks",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get referring_edu_gov() : Number
      {
         return this._1159629302referring_edu_gov;
      }
      
      public function set referring_edu_gov(param1:Number) : void
      {
         var _loc2_:Object = this._1159629302referring_edu_gov;
         if(_loc2_ !== param1)
         {
            this._1159629302referring_edu_gov = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"referring_edu_gov",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get external_edu_gov() : Number
      {
         return this._810650641external_edu_gov;
      }
      
      public function set external_edu_gov(param1:Number) : void
      {
         var _loc2_:Object = this._810650641external_edu_gov;
         if(_loc2_ !== param1)
         {
            this._810650641external_edu_gov = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"external_edu_gov",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get spam_score() : Number
      {
         return this._635911708spam_score;
      }
      
      public function set spam_score(param1:Number) : void
      {
         var _loc2_:Object = this._635911708spam_score;
         if(_loc2_ !== param1)
         {
            this._635911708spam_score = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spam_score",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get indexed_urls() : Number
      {
         return this._1313490802indexed_urls;
      }
      
      public function set indexed_urls(param1:Number) : void
      {
         var _loc2_:Object = this._1313490802indexed_urls;
         if(_loc2_ !== param1)
         {
            this._1313490802indexed_urls = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"indexed_urls",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get outbound_links() : Number
      {
         return this._287746474outbound_links;
      }
      
      public function set outbound_links(param1:Number) : void
      {
         var _loc2_:Object = this._287746474outbound_links;
         if(_loc2_ !== param1)
         {
            this._287746474outbound_links = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outbound_links",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get internal_links() : Number
      {
         return this._785168311internal_links;
      }
      
      public function set internal_links(param1:Number) : void
      {
         var _loc2_:Object = this._785168311internal_links;
         if(_loc2_ !== param1)
         {
            this._785168311internal_links = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"internal_links",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domain_citation() : Number
      {
         return this._968655874domain_citation;
      }
      
      public function set domain_citation(param1:Number) : void
      {
         var _loc2_:Object = this._968655874domain_citation;
         if(_loc2_ !== param1)
         {
            this._968655874domain_citation = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domain_citation",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domain_trust() : Number
      {
         return this._1061235939domain_trust;
      }
      
      public function set domain_trust(param1:Number) : void
      {
         var _loc2_:Object = this._1061235939domain_trust;
         if(_loc2_ !== param1)
         {
            this._1061235939domain_trust = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domain_trust",_loc2_,param1));
            }
         }
      }
      
      public final function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         this._bindingEventDispatcher.addEventListener(param1,param2,param3,param4,param5);
      }
      
      public final function dispatchEvent(param1:Event) : Boolean
      {
         return this._bindingEventDispatcher.dispatchEvent(param1);
      }
      
      public final function hasEventListener(param1:String) : Boolean
      {
         return this._bindingEventDispatcher.hasEventListener(param1);
      }
      
      public final function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         this._bindingEventDispatcher.removeEventListener(param1,param2,param3);
      }
      
      public final function willTrigger(param1:String) : Boolean
      {
         return this._bindingEventDispatcher.willTrigger(param1);
      }
   }
}
