package com.enfluid.ltp.controller.keywordresearch
{
   import com.enfluid.ltp.controller.common.Command;
   import com.photon.controller.IPhotonCommand;
   import mx.rpc.IResponder;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import mx.rpc.http.HTTPService;
   import mx.collections.ArrayCollection;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import com.enfluid.ltp.util.KeywordUtil;
   import flash.net.URLRequest;
   import flash.events.Event;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import com.enfluid.ltp.model.constants.Constants;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import spark.effects.easing.Power;
   import mx.binding.BindingManager;
   import mx.graphics.SolidColor;
   
   public final class SaveTopTenToServerCommand extends Command implements IPhotonCommand, IResponder
   {
       
      
      protected var keyword:KeywordVO;
      
      protected var service:HTTPService;
      
      protected var rawResults:ArrayCollection;
      
      public function SaveTopTenToServerCommand(param1:KeywordVO, param2:ArrayCollection = null)
      {
         this.keyword = param1;
         this.service = new HTTPService();
         if(param2 !== null)
         {
            this.rawResults = param2;
         }
         super();
      }
      
      public function execute() : void
      {
         var _loc1_:Object = {};
         _loc1_["keyword"] = this.keyword.keyword;
         _loc1_["country"] = ProjectVO(this.keyword.project).country.code;
         _loc1_["lang"] = ProjectVO(this.keyword.project).language.code;
         _loc1_["pages"] = this.rawResults === null?this.getKeywordPages():this.getKeywordPages(true);
         var _loc2_:String = JSON.stringify(_loc1_);
         this.service.url = Constants.CACHE_API_URL + "pages/topten";
         this.service.method = "POST";
         this.service.resultFormat = HTTPService.RESULT_FORMAT_TEXT;
         this.service.contentType = "application/json";
         this.service.send(_loc2_).addResponder(this);
      }
      
      public final function result(param1:Object) : void
      {
         super.done();
      }
      
      public final function fault(param1:Object) : void
      {
         super.done(FAILURE);
      }
      
      private final function getKeywordPages(param1:Boolean = false) : Array
      {
         var _loc4_:CompetitorUrlVO = null;
         var _loc5_:Object = null;
         var _loc2_:Array = [];
         var _loc3_:ArrayCollection = !param1?this.keyword.competitorURLs:this.rawResults;
         §§push(0);
         if(_loc8_)
         {
            §§push(§§pop() + 20 - 1 + 105 - 1);
         }
         for each(_loc4_ in _loc3_)
         {
            _loc5_ = {};
            _loc5_.title = _loc4_.title;
            _loc5_.url = _loc4_.url;
            _loc5_.domain_authority = _loc4_.domainAuthority;
            _loc5_.juice_links = _loc4_.juiceLinks;
            _loc5_.moz_rank = _loc4_.mozRank;
            _loc5_.page_authority = _loc4_.pageAuthority;
            _loc5_.rank_on_page = _loc4_.rankOnPage;
            _loc5_.seo_moz_links = _loc4_.seomozLinks;
            _loc5_.avg_kc = _loc4_.keywordCompetitiveness;
            _loc5_.site_age = _loc4_.siteAge;
            _loc5_.page_rank = _loc4_.pageRank;
            _loc5_.facebook = _loc4_.facebook;
            _loc5_.twitter = _loc4_.twitter;
            _loc5_.google = _loc4_.google;
            _loc5_.linkedin = _loc4_.linkedin;
            _loc5_.pinterest = _loc4_.pinterest;
            _loc5_.reddit = _loc4_.reddit;
            _loc5_.ref_domains = _loc4_.referring_domains;
            _loc5_.ext_backlinks = _loc4_.external_backlinks;
            _loc5_.ref_ips = _loc4_.referring_ips;
            _loc5_.ref_domains_edu = _loc4_.ref_domains_edu;
            _loc5_.ext_backlinks_edu = _loc4_.ext_backlinks_edu;
            _loc5_.ref_domains_gov = _loc4_.ref_domains_gov;
            _loc5_.ext_backlinks_gov = _loc4_.ext_backlinks_gov;
            _loc5_.outlinks_external = _loc4_.outlinks_external;
            _loc5_.outlinks_internal = _loc4_.outlinks_internal;
            _loc5_.trustflow = _loc4_.trust_flow;
            _loc5_.citationflow = _loc4_.citation_flow;
            _loc5_.topical_trust_topic_0 = _loc4_.topical_trust_topic_0;
            _loc5_.topical_trust_value_0 = _loc4_.topical_trust_value_0;
            _loc5_.topical_trust_topic_1 = _loc4_.topical_trust_topic_1;
            _loc5_.topical_trust_value_1 = _loc4_.topical_trust_value_1;
            _loc5_.topical_trust_topic_2 = _loc4_.topical_trust_topic_2;
            _loc5_.topical_trust_value_2 = _loc4_.topical_trust_value_2;
            _loc5_.indexed_urls = _loc4_.indexed_urls;
            _loc5_.majestic_kc = _loc4_.majestic_kc;
            _loc5_.title_targeting = _loc4_.title_targeting;
            _loc5_.url_targeting = _loc4_.url_targeting;
            _loc5_.page_base_kc = _loc4_.page_base_kc;
            _loc5_.domain_base_kc = _loc4_.domain_base_kc;
            _loc2_.push(_loc5_);
         }
         return _loc2_;
      }
   }
}
