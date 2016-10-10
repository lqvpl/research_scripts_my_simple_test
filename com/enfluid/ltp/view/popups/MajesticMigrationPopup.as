package com.enfluid.ltp.view.popups
{
   import spark.components.TitleWindow;
   import mx.states.Transition;
   import flash.utils.ByteArray;
   import spark.components.Button;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.graphics.GradientEntry;
   import mx.binding.BindingManager;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.MajesticMigrationProjectCommand;
   import spark.layouts.VerticalLayout;
   import mx.binding.Binding;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import flash.events.Event;
   import spark.components.Label;
   import com.enfluid.ltp.view.components.HelpButton;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import flash.events.MouseEvent;
   import flash.net.navigateToURL;
   import flash.net.URLRequest;
   import mx.controls.Spacer;
   import com.enfluid.ltp.model.vo.CountryVO;
   import com.enfluid.ltp.model.vo.LanguageVO;
   import com.enfluid.ltp.model.vo.ProjectVO;
   import com.enfluid.ltp.model.constants.Values;
   import mx.controls.Alert;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.DeleteCompetitorUrlsCommand;
   import com.enfluid.ltp.controller.common.FetchCompetitorUrls;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.FetchMajesticDataCommand;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.FetchMajesticDomainDataCommand;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.FetchMajesticPagesKcCommand;
   import com.enfluid.ltp.controller.competitoranalysis.SetupFetchSiteAgeCommand;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.CalcAllMajesticCompetitorAverage;
   import com.enfluid.ltp.controller.keywordresearch.SaveAvgKCToServer;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import mx.events.PropertyChangeEvent;
   import mx.core.DeferredInstanceFromFunction;
   
   public final class MajesticMigrationPopup extends TitleWindow
   {
       
      
      private var _59654979migrateButton:Button;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      private var _1589792892viewModel:ViewModel;
      
      public function MajesticMigrationPopup()
      {
         this._104069929model = DataModel.instance;
         this._1589792892viewModel = ViewModel.instance;
         super();
         mx_internal::_document = this;
         §§push(this);
         §§push(550);
         if(_loc2_)
         {
            §§push((§§pop() + 30 + 27) * 28);
         }
         §§pop().width = §§pop();
         §§push(this);
         §§push(350);
         if(_loc2_)
         {
            §§push(((§§pop() - 108) * 98 + 52 - 1 - 1 - 1) * 42);
         }
         §§pop().height = §§pop();
         this.title = "Migrate Project";
         this.layout = this._MajesticMigrationPopup_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._MajesticMigrationPopup_Array1_c);
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private final function doMigrate() : void
      {
         this.migrateButton.label = "Please wait...";
         §§push();
         §§push(function():void
         {
            new MajesticMigrationProjectCommand().execute();
            migrateButton.label = "Migrate Project";
         });
         §§push(500);
         if(_loc3_)
         {
            §§push(-(§§pop() * 96 - 1 - 36 - 1 + 1));
         }
         §§pop().setTimeout(§§pop(),§§pop());
      }
      
      private final function _MajesticMigrationPopup_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.horizontalAlign = "center";
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(-(§§pop() - 42) * 47 + 27 - 40 + 1 - 38);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc2_)
         {
            §§push(-(((§§pop() + 53) * 67 + 1) * 87 - 46) + 1);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 - 1);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 98) * 82 - 1);
         }
         §§pop().paddingTop = §§pop();
         _loc1_.verticalAlign = "middle";
         §§push(_loc1_);
         §§push(15);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 1) - 1 - 1 - 70));
         }
         §§pop().gap = §§pop();
         return _loc1_;
      }
      
      private final function _MajesticMigrationPopup_Array1_c() : Array
      {
         var _loc1_:Array = [this._MajesticMigrationPopup_Label1_c(),this._MajesticMigrationPopup_Button1_c(),this._MajesticMigrationPopup_Spacer1_c(),this._MajesticMigrationPopup_Button2_i()];
         return _loc1_;
      }
      
      private final function _MajesticMigrationPopup_Label1_c() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(70);
         if(_loc3_)
         {
            §§push(§§pop() * 91 - 118 - 1 + 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.text = "Long Tail Pro is switching link data providers from Moz to Majestic in order to provide you with more up-to-date data and more accurate metrics.";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(16);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 52 - 49 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("textAlign","center");
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MajesticMigrationPopup_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "Read the full details about this migration.";
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___MajesticMigrationPopup_Button1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___MajesticMigrationPopup_Button1_click(param1:MouseEvent) : void
      {
         navigateToURL(new URLRequest("http://www.nichepursuits.com/long-tail-pro-switching-moz-majestic-link-data/"));
      }
      
      private final function _MajesticMigrationPopup_Spacer1_c() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() + 104 + 1 - 1);
         }
         §§pop().height = §§pop();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _MajesticMigrationPopup_Button2_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(400);
         if(_loc3_)
         {
            §§push(-((§§pop() - 3) * 40));
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(50);
         if(_loc2_)
         {
            §§push(((§§pop() * 108 - 12 - 1 - 1) * 45 - 5) * 61);
         }
         §§pop().height = §§pop();
         _loc1_.label = "Migrate Project";
         §§push(_loc1_);
         §§push("color");
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 25) * 115 * 0 - 19 - 2 - 5 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("cornerRadius");
         §§push(8);
         if(_loc3_)
         {
            §§push((-§§pop() - 35 + 83) * 51 * 23);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(35);
         if(_loc3_)
         {
            §§push(§§pop() * 64 + 118 - 64);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.__migrateButton_click);
         _loc1_.id = "migrateButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.migrateButton = _loc1_;
         BindingManager.executeBindings(this,"migrateButton",this.migrateButton);
         return _loc1_;
      }
      
      public final function __migrateButton_click(param1:MouseEvent) : void
      {
         this.doMigrate();
      }
      
      [Bindable(event="propertyChange")]
      public function get migrateButton() : Button
      {
         return this._59654979migrateButton;
      }
      
      public function set migrateButton(param1:Button) : void
      {
         var _loc2_:Object = this._59654979migrateButton;
         if(_loc2_ !== param1)
         {
            this._59654979migrateButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"migrateButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get model() : DataModel
      {
         return this._104069929model;
      }
      
      private function set model(param1:DataModel) : void
      {
         var _loc2_:Object = this._104069929model;
         if(_loc2_ !== param1)
         {
            this._104069929model = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"model",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get viewModel() : ViewModel
      {
         return this._1589792892viewModel;
      }
      
      private function set viewModel(param1:ViewModel) : void
      {
         var _loc2_:Object = this._1589792892viewModel;
         if(_loc2_ !== param1)
         {
            this._1589792892viewModel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"viewModel",_loc2_,param1));
            }
         }
      }
   }
}
