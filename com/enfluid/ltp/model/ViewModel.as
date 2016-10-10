package com.enfluid.ltp.model
{
   import com.photon.model.PhotonModel;
   import flash.events.EventDispatcher;
   import flash.events.IEventDispatcher;
   import spark.components.HGroup;
   import mx.controls.HTML;
   import spark.components.NavigatorContent;
   import spark.components.DataGrid;
   import com.enfluid.ltp.view.renderers.TabRenderer;
   import com.enfluid.ltp.view.components.LTPProgressBar;
   import com.enfluid.ltp.model.vo.KeywordColumnsVO;
   import com.enfluid.ltp.view.components.KeywordsDataGridHeader;
   import com.enfluid.ltp.model.vo.CompetitorColumnsVO;
   import spark.components.Image;
   import spark.components.Label;
   import spark.components.Button;
   import mx.events.PropertyChangeEvent;
   
   public final class ViewModel extends PhotonModel
   {
      
      private static var _staticBindingEventDispatcher:EventDispatcher = new EventDispatcher();
       
      
      private var _116660749appInitialized:Boolean = false;
      
      private var _414033559versionDetermined:Boolean = false;
      
      private var _897354422startupText:String;
      
      private var _1554253136application;
      
      private var _74961234captchaImageUrl:String;
      
      private var _989627235conversionText:String;
      
      private var _1393586239domainCommandsCompleted:int;
      
      private var _173194592domainCommandsToComplete:int;
      
      private var _2039167869domizeHTML:HTML;
      
      private var _1994260092isProjectEditMode:Boolean = false;
      
      private var _524102836isLoadingProjects:Boolean = false;
      
      private var _1520998100keywordPlannerHTML:HTML;
      
      private var _1645726keywordPlannerHTMLParent:NavigatorContent;
      
      private var _878159790competitorAnalysisGrid:DataGrid;
      
      private var _1892677913showDomainCaptcha:Boolean = false;
      
      private var _1068092203showGoogleResultsHTML:Boolean = false;
      
      private var _1744606057showKeywordPlannerLoginPopup:Boolean = false;
      
      private var _503665461showManageGoogleCredentialsPopup:Boolean = false;
      
      private var _556742049showNotificationMessage:Boolean = false;
      
      private var _610753872showNotificationTitle:Boolean = true;
      
      private var _7795892showSEOMozPopup:Boolean = false;
      
      private var _384067386showUpgradeToPlatinumPopup:Boolean = false;
      
      private var _1173062148headerState:String = "normalHeader";
      
      private var _1087317488selectedKeywordsTab:TabRenderer;
      
      private var _642659618showConvertingDBPopup:Boolean;
      
      private var _1778034222dataToConvert:int = 1;
      
      private var _2139928840dataConverted:int = 0;
      
      private var _1989607293dataFiltersChanged:Boolean = false;
      
      private var _1131509414progressBar:LTPProgressBar;
      
      private var _2093369780keywordColumns:KeywordColumnsVO;
      
      private var _1412918503keywordDataGrid:KeywordsDataGridHeader;
      
      private var _1274954357competitorAnalysisColumns:CompetitorColumnsVO;
      
      private var _1154076534lastSelectedImage:Image;
      
      private var _1151662557lastSelectedLabel:Label;
      
      private var _1702579824showCreateProjectCallout:Boolean = false;
      
      private var _890826548showGenerateKeywordsCallout:Boolean = false;
      
      private var _1061350960showSettingsCallout:Boolean = false;
      
      private var _846772261ownKeywordsTab:TabRenderer;
      
      private var _1991041238allKeywordsTab:TabRenderer;
      
      private var _668561584resetKeywordScrollPosition:Boolean = false;
      
      private var _214964360showLicensePopup:Boolean = false;
      
      private var _26600662showEULAPopup:Boolean = false;
      
      private var _2083725192showReConvertingMessage:Boolean = false;
      
      private var _506784349runtimeErrorText:String = "";
      
      private var _2029437585hasSubscribeToPlatinumError:Boolean = false;
      
      private var _1910334305showProxiesCallout:Boolean = false;
      
      private var _1088468093missingAvgKCIcon:Button;
      
      private var _1355309668isFetchingBulk:Boolean;
      
      private var _639457829showMigrationPopup:Boolean;
      
      private var _154738003doingMajesticMigration:Boolean;
      
      private var _1256495075showMigrationButton:Boolean;
      
      private var _1875015359AdwordsRestricted:Boolean;
      
      public function ViewModel()
      {
         this._2093369780keywordColumns = new KeywordColumnsVO();
         super();
      }
      
      public static function get instance() : ViewModel
      {
         return ViewModel(getInstanceOf(ViewModel));
      }
      
      public static function get staticEventDispatcher() : IEventDispatcher
      {
         return _staticBindingEventDispatcher;
      }
      
      [Bindable(event="propertyChange")]
      public function get selectedKeywordsTab() : TabRenderer
      {
         return this._1087317488selectedKeywordsTab;
      }
      
      public function set selectedKeywordsTab(param1:TabRenderer) : void
      {
         var _loc2_:Object = this._1087317488selectedKeywordsTab;
         if(_loc2_ !== param1)
         {
            this._1087317488selectedKeywordsTab = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"selectedKeywordsTab",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get appInitialized() : Boolean
      {
         return this._116660749appInitialized;
      }
      
      public function set appInitialized(param1:Boolean) : void
      {
         var _loc2_:Object = this._116660749appInitialized;
         if(_loc2_ !== param1)
         {
            this._116660749appInitialized = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"appInitialized",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showSEOMozPopup() : Boolean
      {
         return this._7795892showSEOMozPopup;
      }
      
      public function set showSEOMozPopup(param1:Boolean) : void
      {
         var _loc2_:Object = this._7795892showSEOMozPopup;
         if(_loc2_ !== param1)
         {
            this._7795892showSEOMozPopup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showSEOMozPopup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isFetchingBulk() : Boolean
      {
         return this._1355309668isFetchingBulk;
      }
      
      public function set isFetchingBulk(param1:Boolean) : void
      {
         var _loc2_:Object = this._1355309668isFetchingBulk;
         if(_loc2_ !== param1)
         {
            this._1355309668isFetchingBulk = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isFetchingBulk",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showGoogleResultsHTML() : Boolean
      {
         return this._1068092203showGoogleResultsHTML;
      }
      
      public function set showGoogleResultsHTML(param1:Boolean) : void
      {
         var _loc2_:Object = this._1068092203showGoogleResultsHTML;
         if(_loc2_ !== param1)
         {
            this._1068092203showGoogleResultsHTML = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showGoogleResultsHTML",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dataToConvert() : int
      {
         return this._1778034222dataToConvert;
      }
      
      public function set dataToConvert(param1:int) : void
      {
         var _loc2_:Object = this._1778034222dataToConvert;
         if(_loc2_ !== param1)
         {
            this._1778034222dataToConvert = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataToConvert",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keywordPlannerHTML() : HTML
      {
         return this._1520998100keywordPlannerHTML;
      }
      
      public function set keywordPlannerHTML(param1:HTML) : void
      {
         var _loc2_:Object = this._1520998100keywordPlannerHTML;
         if(_loc2_ !== param1)
         {
            this._1520998100keywordPlannerHTML = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keywordPlannerHTML",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showUpgradeToPlatinumPopup() : Boolean
      {
         return this._384067386showUpgradeToPlatinumPopup;
      }
      
      public function set showUpgradeToPlatinumPopup(param1:Boolean) : void
      {
         var _loc2_:Object = this._384067386showUpgradeToPlatinumPopup;
         if(_loc2_ !== param1)
         {
            this._384067386showUpgradeToPlatinumPopup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showUpgradeToPlatinumPopup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showDomainCaptcha() : Boolean
      {
         return this._1892677913showDomainCaptcha;
      }
      
      public function set showDomainCaptcha(param1:Boolean) : void
      {
         var _loc2_:Object = this._1892677913showDomainCaptcha;
         if(_loc2_ !== param1)
         {
            this._1892677913showDomainCaptcha = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showDomainCaptcha",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get allKeywordsTab() : TabRenderer
      {
         return this._1991041238allKeywordsTab;
      }
      
      public function set allKeywordsTab(param1:TabRenderer) : void
      {
         var _loc2_:Object = this._1991041238allKeywordsTab;
         if(_loc2_ !== param1)
         {
            this._1991041238allKeywordsTab = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"allKeywordsTab",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get AdwordsRestricted() : Boolean
      {
         return this._1875015359AdwordsRestricted;
      }
      
      public function set AdwordsRestricted(param1:Boolean) : void
      {
         var _loc2_:Object = this._1875015359AdwordsRestricted;
         if(_loc2_ !== param1)
         {
            this._1875015359AdwordsRestricted = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"AdwordsRestricted",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showKeywordPlannerLoginPopup() : Boolean
      {
         return this._1744606057showKeywordPlannerLoginPopup;
      }
      
      public function set showKeywordPlannerLoginPopup(param1:Boolean) : void
      {
         var _loc2_:Object = this._1744606057showKeywordPlannerLoginPopup;
         if(_loc2_ !== param1)
         {
            this._1744606057showKeywordPlannerLoginPopup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showKeywordPlannerLoginPopup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get conversionText() : String
      {
         return this._989627235conversionText;
      }
      
      public function set conversionText(param1:String) : void
      {
         var _loc2_:Object = this._989627235conversionText;
         if(_loc2_ !== param1)
         {
            this._989627235conversionText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"conversionText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isProjectEditMode() : Boolean
      {
         return this._1994260092isProjectEditMode;
      }
      
      public function set isProjectEditMode(param1:Boolean) : void
      {
         var _loc2_:Object = this._1994260092isProjectEditMode;
         if(_loc2_ !== param1)
         {
            this._1994260092isProjectEditMode = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isProjectEditMode",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showMigrationButton() : Boolean
      {
         return this._1256495075showMigrationButton;
      }
      
      public function set showMigrationButton(param1:Boolean) : void
      {
         var _loc2_:Object = this._1256495075showMigrationButton;
         if(_loc2_ !== param1)
         {
            this._1256495075showMigrationButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showMigrationButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showEULAPopup() : Boolean
      {
         return this._26600662showEULAPopup;
      }
      
      public function set showEULAPopup(param1:Boolean) : void
      {
         var _loc2_:Object = this._26600662showEULAPopup;
         if(_loc2_ !== param1)
         {
            this._26600662showEULAPopup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showEULAPopup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get resetKeywordScrollPosition() : Boolean
      {
         return this._668561584resetKeywordScrollPosition;
      }
      
      public function set resetKeywordScrollPosition(param1:Boolean) : void
      {
         var _loc2_:Object = this._668561584resetKeywordScrollPosition;
         if(_loc2_ !== param1)
         {
            this._668561584resetKeywordScrollPosition = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"resetKeywordScrollPosition",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keywordDataGrid() : KeywordsDataGridHeader
      {
         return this._1412918503keywordDataGrid;
      }
      
      public function set keywordDataGrid(param1:KeywordsDataGridHeader) : void
      {
         var _loc2_:Object = this._1412918503keywordDataGrid;
         if(_loc2_ !== param1)
         {
            this._1412918503keywordDataGrid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keywordDataGrid",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get doingMajesticMigration() : Boolean
      {
         return this._154738003doingMajesticMigration;
      }
      
      public function set doingMajesticMigration(param1:Boolean) : void
      {
         var _loc2_:Object = this._154738003doingMajesticMigration;
         if(_loc2_ !== param1)
         {
            this._154738003doingMajesticMigration = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"doingMajesticMigration",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showConvertingDBPopup() : Boolean
      {
         return this._642659618showConvertingDBPopup;
      }
      
      public function set showConvertingDBPopup(param1:Boolean) : void
      {
         var _loc2_:Object = this._642659618showConvertingDBPopup;
         if(_loc2_ !== param1)
         {
            this._642659618showConvertingDBPopup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showConvertingDBPopup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keywordColumns() : KeywordColumnsVO
      {
         return this._2093369780keywordColumns;
      }
      
      public function set keywordColumns(param1:KeywordColumnsVO) : void
      {
         var _loc2_:Object = this._2093369780keywordColumns;
         if(_loc2_ !== param1)
         {
            this._2093369780keywordColumns = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keywordColumns",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showLicensePopup() : Boolean
      {
         return this._214964360showLicensePopup;
      }
      
      public function set showLicensePopup(param1:Boolean) : void
      {
         var _loc2_:Object = this._214964360showLicensePopup;
         if(_loc2_ !== param1)
         {
            this._214964360showLicensePopup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showLicensePopup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get captchaImageUrl() : String
      {
         return this._74961234captchaImageUrl;
      }
      
      public function set captchaImageUrl(param1:String) : void
      {
         var _loc2_:Object = this._74961234captchaImageUrl;
         if(_loc2_ !== param1)
         {
            this._74961234captchaImageUrl = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"captchaImageUrl",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showNotificationMessage() : Boolean
      {
         return this._556742049showNotificationMessage;
      }
      
      public function set showNotificationMessage(param1:Boolean) : void
      {
         var _loc2_:Object = this._556742049showNotificationMessage;
         if(_loc2_ !== param1)
         {
            this._556742049showNotificationMessage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showNotificationMessage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainCommandsCompleted() : int
      {
         return this._1393586239domainCommandsCompleted;
      }
      
      public function set domainCommandsCompleted(param1:int) : void
      {
         var _loc2_:Object = this._1393586239domainCommandsCompleted;
         if(_loc2_ !== param1)
         {
            this._1393586239domainCommandsCompleted = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainCommandsCompleted",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hasSubscribeToPlatinumError() : Boolean
      {
         return this._2029437585hasSubscribeToPlatinumError;
      }
      
      public function set hasSubscribeToPlatinumError(param1:Boolean) : void
      {
         var _loc2_:Object = this._2029437585hasSubscribeToPlatinumError;
         if(_loc2_ !== param1)
         {
            this._2029437585hasSubscribeToPlatinumError = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hasSubscribeToPlatinumError",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showProxiesCallout() : Boolean
      {
         return this._1910334305showProxiesCallout;
      }
      
      public function set showProxiesCallout(param1:Boolean) : void
      {
         var _loc2_:Object = this._1910334305showProxiesCallout;
         if(_loc2_ !== param1)
         {
            this._1910334305showProxiesCallout = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showProxiesCallout",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showNotificationTitle() : Boolean
      {
         return this._610753872showNotificationTitle;
      }
      
      public function set showNotificationTitle(param1:Boolean) : void
      {
         var _loc2_:Object = this._610753872showNotificationTitle;
         if(_loc2_ !== param1)
         {
            this._610753872showNotificationTitle = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showNotificationTitle",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showSettingsCallout() : Boolean
      {
         return this._1061350960showSettingsCallout;
      }
      
      public function set showSettingsCallout(param1:Boolean) : void
      {
         var _loc2_:Object = this._1061350960showSettingsCallout;
         if(_loc2_ !== param1)
         {
            this._1061350960showSettingsCallout = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showSettingsCallout",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get competitorAnalysisGrid() : DataGrid
      {
         return this._878159790competitorAnalysisGrid;
      }
      
      public function set competitorAnalysisGrid(param1:DataGrid) : void
      {
         var _loc2_:Object = this._878159790competitorAnalysisGrid;
         if(_loc2_ !== param1)
         {
            this._878159790competitorAnalysisGrid = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"competitorAnalysisGrid",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get competitorAnalysisColumns() : CompetitorColumnsVO
      {
         return this._1274954357competitorAnalysisColumns;
      }
      
      public function set competitorAnalysisColumns(param1:CompetitorColumnsVO) : void
      {
         var _loc2_:Object = this._1274954357competitorAnalysisColumns;
         if(_loc2_ !== param1)
         {
            this._1274954357competitorAnalysisColumns = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"competitorAnalysisColumns",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showGenerateKeywordsCallout() : Boolean
      {
         return this._890826548showGenerateKeywordsCallout;
      }
      
      public function set showGenerateKeywordsCallout(param1:Boolean) : void
      {
         var _loc2_:Object = this._890826548showGenerateKeywordsCallout;
         if(_loc2_ !== param1)
         {
            this._890826548showGenerateKeywordsCallout = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showGenerateKeywordsCallout",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lastSelectedImage() : Image
      {
         return this._1154076534lastSelectedImage;
      }
      
      public function set lastSelectedImage(param1:Image) : void
      {
         var _loc2_:Object = this._1154076534lastSelectedImage;
         if(_loc2_ !== param1)
         {
            this._1154076534lastSelectedImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastSelectedImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dataFiltersChanged() : Boolean
      {
         return this._1989607293dataFiltersChanged;
      }
      
      public function set dataFiltersChanged(param1:Boolean) : void
      {
         var _loc2_:Object = this._1989607293dataFiltersChanged;
         if(_loc2_ !== param1)
         {
            this._1989607293dataFiltersChanged = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataFiltersChanged",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domainCommandsToComplete() : int
      {
         return this._173194592domainCommandsToComplete;
      }
      
      public function set domainCommandsToComplete(param1:int) : void
      {
         var _loc2_:Object = this._173194592domainCommandsToComplete;
         if(_loc2_ !== param1)
         {
            this._173194592domainCommandsToComplete = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domainCommandsToComplete",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showManageGoogleCredentialsPopup() : Boolean
      {
         return this._503665461showManageGoogleCredentialsPopup;
      }
      
      public function set showManageGoogleCredentialsPopup(param1:Boolean) : void
      {
         var _loc2_:Object = this._503665461showManageGoogleCredentialsPopup;
         if(_loc2_ !== param1)
         {
            this._503665461showManageGoogleCredentialsPopup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showManageGoogleCredentialsPopup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dataConverted() : int
      {
         return this._2139928840dataConverted;
      }
      
      public function set dataConverted(param1:int) : void
      {
         var _loc2_:Object = this._2139928840dataConverted;
         if(_loc2_ !== param1)
         {
            this._2139928840dataConverted = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dataConverted",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get lastSelectedLabel() : Label
      {
         return this._1151662557lastSelectedLabel;
      }
      
      public function set lastSelectedLabel(param1:Label) : void
      {
         var _loc2_:Object = this._1151662557lastSelectedLabel;
         if(_loc2_ !== param1)
         {
            this._1151662557lastSelectedLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"lastSelectedLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showCreateProjectCallout() : Boolean
      {
         return this._1702579824showCreateProjectCallout;
      }
      
      public function set showCreateProjectCallout(param1:Boolean) : void
      {
         var _loc2_:Object = this._1702579824showCreateProjectCallout;
         if(_loc2_ !== param1)
         {
            this._1702579824showCreateProjectCallout = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showCreateProjectCallout",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get progressBar() : LTPProgressBar
      {
         return this._1131509414progressBar;
      }
      
      public function set progressBar(param1:LTPProgressBar) : void
      {
         var _loc2_:Object = this._1131509414progressBar;
         if(_loc2_ !== param1)
         {
            this._1131509414progressBar = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"progressBar",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isLoadingProjects() : Boolean
      {
         return this._524102836isLoadingProjects;
      }
      
      public function set isLoadingProjects(param1:Boolean) : void
      {
         var _loc2_:Object = this._524102836isLoadingProjects;
         if(_loc2_ !== param1)
         {
            this._524102836isLoadingProjects = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isLoadingProjects",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get domizeHTML() : HTML
      {
         return this._2039167869domizeHTML;
      }
      
      public function set domizeHTML(param1:HTML) : void
      {
         var _loc2_:Object = this._2039167869domizeHTML;
         if(_loc2_ !== param1)
         {
            this._2039167869domizeHTML = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"domizeHTML",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get headerState() : String
      {
         return this._1173062148headerState;
      }
      
      public function set headerState(param1:String) : void
      {
         var _loc2_:Object = this._1173062148headerState;
         if(_loc2_ !== param1)
         {
            this._1173062148headerState = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"headerState",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get versionDetermined() : Boolean
      {
         return this._414033559versionDetermined;
      }
      
      public function set versionDetermined(param1:Boolean) : void
      {
         var _loc2_:Object = this._414033559versionDetermined;
         if(_loc2_ !== param1)
         {
            this._414033559versionDetermined = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"versionDetermined",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get application() : *
      {
         return this._1554253136application;
      }
      
      public function set application(param1:*) : void
      {
         var _loc2_:Object = this._1554253136application;
         if(_loc2_ !== param1)
         {
            this._1554253136application = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"application",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get missingAvgKCIcon() : Button
      {
         return this._1088468093missingAvgKCIcon;
      }
      
      public function set missingAvgKCIcon(param1:Button) : void
      {
         var _loc2_:Object = this._1088468093missingAvgKCIcon;
         if(_loc2_ !== param1)
         {
            this._1088468093missingAvgKCIcon = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"missingAvgKCIcon",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keywordPlannerHTMLParent() : NavigatorContent
      {
         return this._1645726keywordPlannerHTMLParent;
      }
      
      public function set keywordPlannerHTMLParent(param1:NavigatorContent) : void
      {
         var _loc2_:Object = this._1645726keywordPlannerHTMLParent;
         if(_loc2_ !== param1)
         {
            this._1645726keywordPlannerHTMLParent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keywordPlannerHTMLParent",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showMigrationPopup() : Boolean
      {
         return this._639457829showMigrationPopup;
      }
      
      public function set showMigrationPopup(param1:Boolean) : void
      {
         var _loc2_:Object = this._639457829showMigrationPopup;
         if(_loc2_ !== param1)
         {
            this._639457829showMigrationPopup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showMigrationPopup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get startupText() : String
      {
         return this._897354422startupText;
      }
      
      public function set startupText(param1:String) : void
      {
         var _loc2_:Object = this._897354422startupText;
         if(_loc2_ !== param1)
         {
            this._897354422startupText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"startupText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get runtimeErrorText() : String
      {
         return this._506784349runtimeErrorText;
      }
      
      public function set runtimeErrorText(param1:String) : void
      {
         var _loc2_:Object = this._506784349runtimeErrorText;
         if(_loc2_ !== param1)
         {
            this._506784349runtimeErrorText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"runtimeErrorText",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ownKeywordsTab() : TabRenderer
      {
         return this._846772261ownKeywordsTab;
      }
      
      public function set ownKeywordsTab(param1:TabRenderer) : void
      {
         var _loc2_:Object = this._846772261ownKeywordsTab;
         if(_loc2_ !== param1)
         {
            this._846772261ownKeywordsTab = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ownKeywordsTab",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showReConvertingMessage() : Boolean
      {
         return this._2083725192showReConvertingMessage;
      }
      
      public function set showReConvertingMessage(param1:Boolean) : void
      {
         var _loc2_:Object = this._2083725192showReConvertingMessage;
         if(_loc2_ !== param1)
         {
            this._2083725192showReConvertingMessage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showReConvertingMessage",_loc2_,param1));
            }
         }
      }
   }
}
