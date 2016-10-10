package com.enfluid.ltp.model.vo
{
   import info.noirbizarre.airorm.ActiveRecord;
   import flash.events.TimerEvent;
   import com.enfluid.ltp.model.constants.Values;
   import flash.events.Event;
   import mx.events.PropertyChangeEvent;
   import com.enfluid.ltp.util.ProgressBarUtil;
   
   [BelongsTo("keyword",className="KeywordVO")]
   public dynamic class CompetitorUrlVO extends ActiveRecord
   {
       
      
      private var _1117865050rankOnPage:int = -1;
      
      private var _116079url:String;
      
      private var _110371416title:String;
      
      private var _1724546052description:String;
      
      private var _523149226keywords:String;
      
      private var _1106106307keywordCompetitiveness:int = -1;
      
      private var _1543910772pageAuthority:int = -1;
      
      private var _1935313186seomozLinks:int = -1;
      
      private var _1429358023juiceLinks:int = -1;
      
      private var _1505455839domainAuthority:int = -1;
      
      private var _1246698340mozRank:Number = -1;
      
      private var _859390811pageRank:int = -1;
      
      private var _497130182facebook:int = -1;
      
      private var _916346253twitter:int = -1;
      
      private var _1240244679google:int = -1;
      
      private var _1194692862linkedin:int = -1;
      
      private var _934889890reddit:int = -1;
      
      private var _1034342pinterest:int = -1;
      
      private var _579719584referring_domains:int = -1;
      
      private var _902062146external_backlinks:int = -1;
      
      private var _1337784803referring_ips:int = -1;
      
      private var _178167290ref_domains_edu:int = -1;
      
      private var _1611030645ext_backlinks_edu:int = -1;
      
      private var _178169554ref_domains_gov:int = -1;
      
      private var _1611028381ext_backlinks_gov:int = -1;
      
      private var _975915937outlinks_external:int = -1;
      
      private var _1415255889outlinks_internal:int = -1;
      
      private var _1313490802indexed_urls:int = -1;
      
      private var _1066159435trust_flow:int = -1;
      
      private var _414292090citation_flow:int = -1;
      
      private var _1159629302referring_edu_gov:int = -1;
      
      private var _810650641external_edu_gov:int = -1;
      
      private var _635911708spam_score:int = -1;
      
      private var _287746474outbound_links:int = -1;
      
      private var _785168311internal_links:int = -1;
      
      private var _463954860topical_trust_topic_0:String = "";
      
      private var _906909718topical_trust_value_0:int = -1;
      
      private var _463954859topical_trust_topic_1:String = "";
      
      private var _906909719topical_trust_value_1:int = -1;
      
      private var _463954858topical_trust_topic_2:String = "";
      
      private var _906909720topical_trust_value_2:int = -1;
      
      private var _968655874domain_citation:int = -1;
      
      private var _1061235939domain_trust:int = -1;
      
      private var _1243560076domain_url:String = "";
      
      private var _457867219majestic_kc:int = -1;
      
      private var _493650038title_targeting:int = -1;
      
      private var _1239584287url_targeting:int = -1;
      
      private var _162052054page_base_kc:int = -1;
      
      private var _1224661749domain_base_kc:int = -1;
      
      private var _siteCreationDate:Date = null;
      
      private var _2099972152siteAge:Number = -1;
      
      private var _1163730709titleStemmed:String;
      
      private var _65380555urlAsKeywords:String;
      
      private var _831599848urlAsKeywordsStemmed:String;
      
      private var _1702623532boldedTitle:String;
      
      public function CompetitorUrlVO()
      {
         super();
      }
      
      [Bindable(event="siteCreationDateChange")]
      public function get siteCreationDate() : Date
      {
         return this._siteCreationDate;
      }
      
      public function set siteCreationDate(param1:Date) : void
      {
         var _loc2_:Date = null;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         if(this._siteCreationDate !== param1)
         {
            this._siteCreationDate = param1;
            if(this._siteCreationDate.time == Values.ERROR_DATE.time)
            {
               this.siteAge = Values.ERROR;
            }
            else if(this._siteCreationDate == Values.NOT_FETCHED_DATE)
            {
               this.siteAge = Values.NOT_FETCHED;
            }
            else
            {
               _loc2_ = new Date();
               _loc3_ = _loc2_.time - this._siteCreationDate.time;
               _loc4_ = _loc3_ / 31557600000;
               this.siteAge = Math.round(_loc4_ * 10) / 10;
            }
            dispatchEvent(new Event("siteCreationDateChange"));
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rankOnPage() : int
      {
         return this._1117865050rankOnPage;
      }
      
      public function set rankOnPage(param1:int) : void
      {
         var _loc2_:Object = this._1117865050rankOnPage;
         if(_loc2_ !== param1)
         {
            this._1117865050rankOnPage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rankOnPage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get url() : String
      {
         return this._116079url;
      }
      
      public function set url(param1:String) : void
      {
         var _loc2_:Object = this._116079url;
         if(_loc2_ !== param1)
         {
            this._116079url = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"url",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get title() : String
      {
         return this._110371416title;
      }
      
      public function set title(param1:String) : void
      {
         var _loc2_:Object = this._110371416title;
         if(_loc2_ !== param1)
         {
            this._110371416title = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get description() : String
      {
         return this._1724546052description;
      }
      
      public function set description(param1:String) : void
      {
         var _loc2_:Object = this._1724546052description;
         if(_loc2_ !== param1)
         {
            this._1724546052description = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"description",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keywords() : String
      {
         return this._523149226keywords;
      }
      
      public function set keywords(param1:String) : void
      {
         var _loc2_:Object = this._523149226keywords;
         if(_loc2_ !== param1)
         {
            this._523149226keywords = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keywords",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keywordCompetitiveness() : int
      {
         return this._1106106307keywordCompetitiveness;
      }
      
      public function set keywordCompetitiveness(param1:int) : void
      {
         var _loc2_:Object = this._1106106307keywordCompetitiveness;
         if(_loc2_ !== param1)
         {
            this._1106106307keywordCompetitiveness = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keywordCompetitiveness",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageAuthority() : int
      {
         return this._1543910772pageAuthority;
      }
      
      public function set pageAuthority(param1:int) : void
      {
         var _loc2_:Object = this._1543910772pageAuthority;
         if(_loc2_ !== param1)
         {
            this._1543910772pageAuthority = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageAuthority",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get seomozLinks() : int
      {
         return this._1935313186seomozLinks;
      }
      
      public function set seomozLinks(param1:int) : void
      {
         var _loc2_:Object = this._1935313186seomozLinks;
         if(_loc2_ !== param1)
         {
            this._1935313186seomozLinks = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"seomozLinks",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get juiceLinks() : int
      {
         return this._1429358023juiceLinks;
      }
      
      public function set juiceLinks(param1:int) : void
      {
         var _loc2_:Object = this._1429358023juiceLinks;
         if(_loc2_ !== param1)
         {
            this._1429358023juiceLinks = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"juiceLinks",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainAuthority() : int
      {
         return this._1505455839domainAuthority;
      }
      
      public function set domainAuthority(param1:int) : void
      {
         var _loc2_:Object = this._1505455839domainAuthority;
         if(_loc2_ !== param1)
         {
            this._1505455839domainAuthority = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainAuthority",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mozRank() : Number
      {
         return this._1246698340mozRank;
      }
      
      public function set mozRank(param1:Number) : void
      {
         var _loc2_:Object = this._1246698340mozRank;
         if(_loc2_ !== param1)
         {
            this._1246698340mozRank = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mozRank",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pageRank() : int
      {
         return this._859390811pageRank;
      }
      
      public function set pageRank(param1:int) : void
      {
         var _loc2_:Object = this._859390811pageRank;
         if(_loc2_ !== param1)
         {
            this._859390811pageRank = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pageRank",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get facebook() : int
      {
         return this._497130182facebook;
      }
      
      public function set facebook(param1:int) : void
      {
         var _loc2_:Object = this._497130182facebook;
         if(_loc2_ !== param1)
         {
            this._497130182facebook = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"facebook",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get twitter() : int
      {
         return this._916346253twitter;
      }
      
      public function set twitter(param1:int) : void
      {
         var _loc2_:Object = this._916346253twitter;
         if(_loc2_ !== param1)
         {
            this._916346253twitter = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"twitter",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get google() : int
      {
         return this._1240244679google;
      }
      
      public function set google(param1:int) : void
      {
         var _loc2_:Object = this._1240244679google;
         if(_loc2_ !== param1)
         {
            this._1240244679google = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"google",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get linkedin() : int
      {
         return this._1194692862linkedin;
      }
      
      public function set linkedin(param1:int) : void
      {
         var _loc2_:Object = this._1194692862linkedin;
         if(_loc2_ !== param1)
         {
            this._1194692862linkedin = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"linkedin",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get reddit() : int
      {
         return this._934889890reddit;
      }
      
      public function set reddit(param1:int) : void
      {
         var _loc2_:Object = this._934889890reddit;
         if(_loc2_ !== param1)
         {
            this._934889890reddit = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"reddit",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pinterest() : int
      {
         return this._1034342pinterest;
      }
      
      public function set pinterest(param1:int) : void
      {
         var _loc2_:Object = this._1034342pinterest;
         if(_loc2_ !== param1)
         {
            this._1034342pinterest = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pinterest",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get referring_domains() : int
      {
         return this._579719584referring_domains;
      }
      
      public function set referring_domains(param1:int) : void
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
      public function get external_backlinks() : int
      {
         return this._902062146external_backlinks;
      }
      
      public function set external_backlinks(param1:int) : void
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
      public function get referring_ips() : int
      {
         return this._1337784803referring_ips;
      }
      
      public function set referring_ips(param1:int) : void
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
      public function get ref_domains_edu() : int
      {
         return this._178167290ref_domains_edu;
      }
      
      public function set ref_domains_edu(param1:int) : void
      {
         var _loc2_:Object = this._178167290ref_domains_edu;
         if(_loc2_ !== param1)
         {
            this._178167290ref_domains_edu = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ref_domains_edu",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ext_backlinks_edu() : int
      {
         return this._1611030645ext_backlinks_edu;
      }
      
      public function set ext_backlinks_edu(param1:int) : void
      {
         var _loc2_:Object = this._1611030645ext_backlinks_edu;
         if(_loc2_ !== param1)
         {
            this._1611030645ext_backlinks_edu = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ext_backlinks_edu",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ref_domains_gov() : int
      {
         return this._178169554ref_domains_gov;
      }
      
      public function set ref_domains_gov(param1:int) : void
      {
         var _loc2_:Object = this._178169554ref_domains_gov;
         if(_loc2_ !== param1)
         {
            this._178169554ref_domains_gov = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ref_domains_gov",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ext_backlinks_gov() : int
      {
         return this._1611028381ext_backlinks_gov;
      }
      
      public function set ext_backlinks_gov(param1:int) : void
      {
         var _loc2_:Object = this._1611028381ext_backlinks_gov;
         if(_loc2_ !== param1)
         {
            this._1611028381ext_backlinks_gov = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ext_backlinks_gov",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get outlinks_external() : int
      {
         return this._975915937outlinks_external;
      }
      
      public function set outlinks_external(param1:int) : void
      {
         var _loc2_:Object = this._975915937outlinks_external;
         if(_loc2_ !== param1)
         {
            this._975915937outlinks_external = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outlinks_external",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get outlinks_internal() : int
      {
         return this._1415255889outlinks_internal;
      }
      
      public function set outlinks_internal(param1:int) : void
      {
         var _loc2_:Object = this._1415255889outlinks_internal;
         if(_loc2_ !== param1)
         {
            this._1415255889outlinks_internal = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outlinks_internal",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get indexed_urls() : int
      {
         return this._1313490802indexed_urls;
      }
      
      public function set indexed_urls(param1:int) : void
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
      public function get trust_flow() : int
      {
         return this._1066159435trust_flow;
      }
      
      public function set trust_flow(param1:int) : void
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
      public function get citation_flow() : int
      {
         return this._414292090citation_flow;
      }
      
      public function set citation_flow(param1:int) : void
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
      public function get referring_edu_gov() : int
      {
         return this._1159629302referring_edu_gov;
      }
      
      public function set referring_edu_gov(param1:int) : void
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
      public function get external_edu_gov() : int
      {
         return this._810650641external_edu_gov;
      }
      
      public function set external_edu_gov(param1:int) : void
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
      public function get spam_score() : int
      {
         return this._635911708spam_score;
      }
      
      public function set spam_score(param1:int) : void
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
      public function get outbound_links() : int
      {
         return this._287746474outbound_links;
      }
      
      public function set outbound_links(param1:int) : void
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
      public function get internal_links() : int
      {
         return this._785168311internal_links;
      }
      
      public function set internal_links(param1:int) : void
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
      public function get topical_trust_topic_0() : String
      {
         return this._463954860topical_trust_topic_0;
      }
      
      public function set topical_trust_topic_0(param1:String) : void
      {
         var _loc2_:Object = this._463954860topical_trust_topic_0;
         if(_loc2_ !== param1)
         {
            this._463954860topical_trust_topic_0 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topical_trust_topic_0",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get topical_trust_value_0() : int
      {
         return this._906909718topical_trust_value_0;
      }
      
      public function set topical_trust_value_0(param1:int) : void
      {
         var _loc2_:Object = this._906909718topical_trust_value_0;
         if(_loc2_ !== param1)
         {
            this._906909718topical_trust_value_0 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topical_trust_value_0",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get topical_trust_topic_1() : String
      {
         return this._463954859topical_trust_topic_1;
      }
      
      public function set topical_trust_topic_1(param1:String) : void
      {
         var _loc2_:Object = this._463954859topical_trust_topic_1;
         if(_loc2_ !== param1)
         {
            this._463954859topical_trust_topic_1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topical_trust_topic_1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get topical_trust_value_1() : int
      {
         return this._906909719topical_trust_value_1;
      }
      
      public function set topical_trust_value_1(param1:int) : void
      {
         var _loc2_:Object = this._906909719topical_trust_value_1;
         if(_loc2_ !== param1)
         {
            this._906909719topical_trust_value_1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topical_trust_value_1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get topical_trust_topic_2() : String
      {
         return this._463954858topical_trust_topic_2;
      }
      
      public function set topical_trust_topic_2(param1:String) : void
      {
         var _loc2_:Object = this._463954858topical_trust_topic_2;
         if(_loc2_ !== param1)
         {
            this._463954858topical_trust_topic_2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topical_trust_topic_2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get topical_trust_value_2() : int
      {
         return this._906909720topical_trust_value_2;
      }
      
      public function set topical_trust_value_2(param1:int) : void
      {
         var _loc2_:Object = this._906909720topical_trust_value_2;
         if(_loc2_ !== param1)
         {
            this._906909720topical_trust_value_2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"topical_trust_value_2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domain_citation() : int
      {
         return this._968655874domain_citation;
      }
      
      public function set domain_citation(param1:int) : void
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
      public function get domain_trust() : int
      {
         return this._1061235939domain_trust;
      }
      
      public function set domain_trust(param1:int) : void
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
      
      [Bindable(event="propertyChange")]
      public function get domain_url() : String
      {
         return this._1243560076domain_url;
      }
      
      public function set domain_url(param1:String) : void
      {
         var _loc2_:Object = this._1243560076domain_url;
         if(_loc2_ !== param1)
         {
            this._1243560076domain_url = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domain_url",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get majestic_kc() : int
      {
         return this._457867219majestic_kc;
      }
      
      public function set majestic_kc(param1:int) : void
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
      public function get title_targeting() : int
      {
         return this._493650038title_targeting;
      }
      
      public function set title_targeting(param1:int) : void
      {
         var _loc2_:Object = this._493650038title_targeting;
         if(_loc2_ !== param1)
         {
            this._493650038title_targeting = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"title_targeting",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get url_targeting() : int
      {
         return this._1239584287url_targeting;
      }
      
      public function set url_targeting(param1:int) : void
      {
         var _loc2_:Object = this._1239584287url_targeting;
         if(_loc2_ !== param1)
         {
            this._1239584287url_targeting = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"url_targeting",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get page_base_kc() : int
      {
         return this._162052054page_base_kc;
      }
      
      public function set page_base_kc(param1:int) : void
      {
         var _loc2_:Object = this._162052054page_base_kc;
         if(_loc2_ !== param1)
         {
            this._162052054page_base_kc = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"page_base_kc",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domain_base_kc() : int
      {
         return this._1224661749domain_base_kc;
      }
      
      public function set domain_base_kc(param1:int) : void
      {
         var _loc2_:Object = this._1224661749domain_base_kc;
         if(_loc2_ !== param1)
         {
            this._1224661749domain_base_kc = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domain_base_kc",_loc2_,param1));
            }
         }
      }
      
      [NotPersisted]
      [Bindable(event="propertyChange")]
      public function get siteAge() : Number
      {
         return this._2099972152siteAge;
      }
      
      public function set siteAge(param1:Number) : void
      {
         var _loc2_:Object = this._2099972152siteAge;
         if(_loc2_ !== param1)
         {
            this._2099972152siteAge = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"siteAge",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get titleStemmed() : String
      {
         return this._1163730709titleStemmed;
      }
      
      public function set titleStemmed(param1:String) : void
      {
         var _loc2_:Object = this._1163730709titleStemmed;
         if(_loc2_ !== param1)
         {
            this._1163730709titleStemmed = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"titleStemmed",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get urlAsKeywords() : String
      {
         return this._65380555urlAsKeywords;
      }
      
      public function set urlAsKeywords(param1:String) : void
      {
         var _loc2_:Object = this._65380555urlAsKeywords;
         if(_loc2_ !== param1)
         {
            this._65380555urlAsKeywords = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"urlAsKeywords",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get urlAsKeywordsStemmed() : String
      {
         return this._831599848urlAsKeywordsStemmed;
      }
      
      public function set urlAsKeywordsStemmed(param1:String) : void
      {
         var _loc2_:Object = this._831599848urlAsKeywordsStemmed;
         if(_loc2_ !== param1)
         {
            this._831599848urlAsKeywordsStemmed = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"urlAsKeywordsStemmed",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get boldedTitle() : String
      {
         return this._1702623532boldedTitle;
      }
      
      public function set boldedTitle(param1:String) : void
      {
         var _loc2_:Object = this._1702623532boldedTitle;
         if(_loc2_ !== param1)
         {
            this._1702623532boldedTitle = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"boldedTitle",_loc2_,param1));
            }
         }
      }
   }
}
