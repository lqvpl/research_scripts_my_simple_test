package com.enfluid.ltp.view
{
   import spark.components.HGroup;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.Button;
   import spark.components.Image;
   import com.enfluid.ltp.view.components.LTPProgressButton;
   import com.adobe.cairngorm.observer.Observe;
   import mx.controls.Spacer;
   import com.enfluid.ltp.view.components.LTPProgressBar;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.settings.SettingsCallout;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.view.dataandfilters.GoogleTitleCompetitionSection;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import com.enfluid.ltp.controller.common.ExportDataGridCSVCommand;
   import flash.events.Event;
   import mx.binding.BindingManager;
   import spark.primitives.RectangularDropShadow;
   import com.enfluid.ltp.view.skins.ScrapingProgressBarSkin;
   import com.enfluid.ltp.view.skins.ScrapingProgressTrackSkin;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import com.enfluid.ltp.controller.common.CancelGenerateKeywordsCommand;
   import mx.binding.Binding;
   import mx.collections.IList;
   import com.enfluid.ltp.view.skins.MigrateButtonSkin;
   import com.enfluid.ltp.view.skins.TransparentButtonSkin;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.core.DeferredInstanceFromFunction;
   import com.enfluid.ltp.view.components.WarningInformationLabel;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.constants.Values;
   import flash.utils.getDefinitionByName;
   import mx.states.State;
   import mx.states.AddItems;
   
   use namespace mx_internal;
   
   public final class Header extends HGroup implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _Header_Button2:Button;
      
      public var _Header_Image1:Image;
      
      public var _Header_LTPProgressButton1:LTPProgressButton;
      
      public var _Header_Observe1:Observe;
      
      public var _Header_Observe2:Observe;
      
      public var _Header_Observe3:Observe;
      
      public var _Header_Observe4:Observe;
      
      public var _Header_Spacer1:Spacer;
      
      private var _1581649431generateMigrateDropButton:Button;
      
      private var _1131509414progressBar:LTPProgressBar;
      
      private var _1917249845settingsButton:Button;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _786554753isActionsVisible:Boolean = true;
      
      public var settingsCallout:SettingsCallout;
      
      public var proxiesCallout:com.enfluid.ltp.view.ProxiesCallout;
      
      private var _104069929model:DataModel;
      
      private var _1589792892viewModel:ViewModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function Header()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._104069929model = DataModel.instance;
         this._1589792892viewModel = ViewModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._Header_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_HeaderWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return Header[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(20);
         if(_loc4_)
         {
            §§push(-(-§§pop() * 114 * 16 + 46) - 1);
         }
         §§pop().paddingRight = §§pop();
         this.verticalAlign = "middle";
         this.mxmlContent = [this._Header_Image1_i(),this._Header_Button1_i(),this._Header_Button2_i(),this._Header_Button3_i()];
         this._Header_Observe1_i();
         this._Header_Observe2_i();
         this._Header_Observe3_i();
         this._Header_Observe4_i();
         var _Header_LTPProgressBar1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._Header_LTPProgressBar1_i);
         var _Header_LTPProgressButton1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._Header_LTPProgressButton1_i);
         var _Header_Spacer1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._Header_Spacer1_i);
         states = [new State({
            "name":"normalHeader",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_Header_Spacer1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_Header_Image1"]
            })]
         }),new State({
            "name":"inProgress",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_Header_LTPProgressButton1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_Header_Image1"]
            }),new AddItems().initializeFromObject({
               "itemsFactory":_Header_LTPProgressBar1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"after",
               "relativeTo":["_Header_Image1"]
            })]
         })];
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-(§§pop() + 33) - 5 - 1 + 1);
         }
         var /*UnknownSlot*/:* = uint(§§pop());
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         Header._watcherSetupUtil = param1;
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
      
      protected final function onChangeShowSettingsCallout(param1:Boolean) : void
      {
         if(!this.settingsCallout)
         {
            this.settingsCallout = new SettingsCallout();
         }
         if(this.viewModel.showSettingsCallout)
         {
            this.settingsCallout.open(this.settingsButton);
         }
         else
         {
            this.settingsCallout.close();
         }
      }
      
      protected final function onChangeShowProxiesCallout(param1:Boolean) : void
      {
         if(!this.proxiesCallout)
         {
            this.proxiesCallout = new com.enfluid.ltp.view.ProxiesCallout();
         }
         if(!this.viewModel.showProxiesCallout)
         {
            this.proxiesCallout.close();
         }
      }
      
      protected final function button1_clickHandler(param1:MouseEvent) : void
      {
         new SetUserEvent("UserEvent.Header.ExportKeywords").execute();
         new ExportDataGridCSVCommand(this.model.selectedKeywordCollection,this.model.selectedKeywordCollection.project.title).execute();
      }
      
      protected final function onChangeselectedKeywordsTabCallout(param1:*) : void
      {
         if(this.viewModel.selectedKeywordsTab && this.model.selectedProject)
         {
            if(this.viewModel.selectedKeywordsTab.isFavoritesTab || this.viewModel.selectedKeywordsTab.isTrashTab)
            {
               this.viewModel.showMigrationButton = false;
            }
            else
            {
               this.viewModel.showMigrationButton = this.model.selectedProject.source == "majestic"?false:true;
            }
         }
      }
      
      private final function _Header_Observe1_i() : Observe
      {
         var _loc1_:Observe = new Observe();
         this._Header_Observe1 = _loc1_;
         BindingManager.executeBindings(this,"_Header_Observe1",this._Header_Observe1);
         return _loc1_;
      }
      
      private final function _Header_Observe2_i() : Observe
      {
         var _loc1_:Observe = new Observe();
         this._Header_Observe2 = _loc1_;
         BindingManager.executeBindings(this,"_Header_Observe2",this._Header_Observe2);
         return _loc1_;
      }
      
      private final function _Header_Observe3_i() : Observe
      {
         var _loc1_:Observe = new Observe();
         this._Header_Observe3 = _loc1_;
         BindingManager.executeBindings(this,"_Header_Observe3",this._Header_Observe3);
         return _loc1_;
      }
      
      private final function _Header_Observe4_i() : Observe
      {
         var _loc1_:Observe = new Observe();
         this._Header_Observe4 = _loc1_;
         BindingManager.executeBindings(this,"_Header_Observe4",this._Header_Observe4);
         return _loc1_;
      }
      
      private final function _Header_Image1_i() : Image
      {
         var _loc1_:Image = new Image();
         §§push(_loc1_);
         §§push(15);
         if(_loc2_)
         {
            §§push(§§pop() * 82 * 40 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(50);
         if(_loc3_)
         {
            §§push(§§pop() * 111 - 1 - 25);
         }
         §§pop().height = §§pop();
         _loc1_.horizontalAlign = "left";
         _loc1_.verticalAlign = "top";
         §§push(_loc1_);
         §§push(400);
         if(_loc3_)
         {
            §§push(-(§§pop() * 1 - 68 + 1));
         }
         §§pop().maxWidth = §§pop();
         §§push(_loc1_);
         §§push(200);
         if(_loc2_)
         {
            §§push((-(§§pop() * 82 - 88) + 1 - 17 + 22) * 103);
         }
         §§pop().minWidth = §§pop();
         _loc1_.smooth = true;
         _loc1_.id = "_Header_Image1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._Header_Image1 = _loc1_;
         BindingManager.executeBindings(this,"_Header_Image1",this._Header_Image1);
         return _loc1_;
      }
      
      private final function _Header_Spacer1_i() : Spacer
      {
         var _loc1_:Spacer = new Spacer();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 1 + 26) * 70 * 89 * 95 + 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.id = "_Header_Spacer1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._Header_Spacer1 = _loc1_;
         BindingManager.executeBindings(this,"_Header_Spacer1",this._Header_Spacer1);
         return _loc1_;
      }
      
      private final function _Header_LTPProgressBar1_i() : LTPProgressBar
      {
         var _loc1_:LTPProgressBar = new LTPProgressBar();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((-(§§pop() + 1 + 1 - 95) - 1 + 1) * 19);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push(--(-§§pop() * 104 + 14));
         }
         §§pop().height = §§pop();
         _loc1_.labelPlacement = "center";
         _loc1_.mode = "manual";
         _loc1_.setStyle("barSkin",ScrapingProgressBarSkin);
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("trackSkin",ScrapingProgressTrackSkin);
         _loc1_.addEventListener("preinitialize",this.__progressBar_preinitialize);
         _loc1_.id = "progressBar";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.progressBar = _loc1_;
         BindingManager.executeBindings(this,"progressBar",this.progressBar);
         return _loc1_;
      }
      
      public final function __progressBar_preinitialize(param1:FlexEvent) : void
      {
         this.viewModel.progressBar = this.progressBar;
      }
      
      private final function _Header_LTPProgressButton1_i() : LTPProgressButton
      {
         var _loc1_:LTPProgressButton = new LTPProgressButton();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) - 113 + 1);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 35 - 1 - 78 + 1 - 97);
         }
         §§pop().height = §§pop();
         _loc1_.label = "Cancel";
         §§push(_loc1_);
         §§push(50);
         if(_loc2_)
         {
            §§push(((§§pop() + 1) * 88 + 42) * 80 + 1 + 1 + 93);
         }
         §§pop().minWidth = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 1 + 98);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("cornerRadius");
         §§push(5);
         if(_loc2_)
         {
            §§push((§§pop() + 62 + 80) * 30 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         §§push(_loc1_);
         §§push("chromeColor");
         §§push(16771899);
         if(_loc2_)
         {
            §§push(-(§§pop() * 108 + 14) + 72);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.addEventListener("click",this.___Header_LTPProgressButton1_click);
         _loc1_.id = "_Header_LTPProgressButton1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._Header_LTPProgressButton1 = _loc1_;
         BindingManager.executeBindings(this,"_Header_LTPProgressButton1",this._Header_LTPProgressButton1);
         return _loc1_;
      }
      
      public final function ___Header_LTPProgressButton1_click(param1:MouseEvent) : void
      {
         new CancelGenerateKeywordsCommand().execute();
      }
      
      private final function _Header_Button1_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(170);
         if(_loc3_)
         {
            §§push(-(-(-(§§pop() - 87) + 2) + 90));
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push(§§pop() - 75 - 32 + 113 + 1);
         }
         §§pop().height = §§pop();
         _loc1_.label = "Migrate Project";
         §§push(_loc1_);
         §§push("color");
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 55 - 1 + 1 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("cornerRadius");
         §§push(5);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 1 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("skinClass",MigrateButtonSkin);
         _loc1_.addEventListener("click",this.__generateMigrateDropButton_click);
         _loc1_.id = "generateMigrateDropButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.generateMigrateDropButton = _loc1_;
         BindingManager.executeBindings(this,"generateMigrateDropButton",this.generateMigrateDropButton);
         return _loc1_;
      }
      
      public final function __generateMigrateDropButton_click(param1:MouseEvent) : void
      {
         this.viewModel.showMigrationPopup = !this.viewModel.showMigrationPopup;
      }
      
      private final function _Header_Button2_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(32);
         if(_loc3_)
         {
            §§push(((§§pop() * 106 * 37 - 31) * 6 + 65) * 30);
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(32);
         if(_loc2_)
         {
            §§push(-(§§pop() + 27 + 1 - 20) - 22 + 1 - 1);
         }
         §§pop().height = §§pop();
         _loc1_.toolTip = "Export Keywords";
         _loc1_.buttonMode = true;
         _loc1_.useHandCursor = true;
         _loc1_.setStyle("skinClass",TransparentButtonSkin);
         _loc1_.addEventListener("click",this.___Header_Button2_click);
         _loc1_.id = "_Header_Button2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._Header_Button2 = _loc1_;
         BindingManager.executeBindings(this,"_Header_Button2",this._Header_Button2);
         return _loc1_;
      }
      
      public final function ___Header_Button2_click(param1:MouseEvent) : void
      {
         this.button1_clickHandler(param1);
      }
      
      private final function _Header_Button3_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(32);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 + 1 - 103));
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(32);
         if(_loc2_)
         {
            §§push(-(-(§§pop() + 57) + 20 + 1 - 1));
         }
         §§pop().height = §§pop();
         _loc1_.buttonMode = true;
         _loc1_.useHandCursor = true;
         _loc1_.setStyle("skinClass",TransparentButtonSkin);
         _loc1_.addEventListener("click",this.__settingsButton_click);
         _loc1_.id = "settingsButton";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.settingsButton = _loc1_;
         BindingManager.executeBindings(this,"settingsButton",this.settingsButton);
         return _loc1_;
      }
      
      public final function __settingsButton_click(param1:MouseEvent) : void
      {
         this.viewModel.showSettingsCallout = !this.viewModel.showSettingsCallout;
         new SetUserEvent("UserEvent.Header.OpenSettings").execute();
      }
      
      private final function _Header_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(---(§§pop() - 1 + 1 - 118) + 101);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = viewModel.headerState;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.currentState");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 1) * 85 + 5);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return viewModel.showSettingsCallout;
         },null,"_Header_Observe1.source");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 1 - 1 + 93);
         }
         §§pop()[§§pop()] = new Binding(this,function():Function
         {
            return onChangeShowSettingsCallout;
         },null,"_Header_Observe1.handler");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(§§pop() + 47 + 18 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return viewModel.showProxiesCallout;
         },null,"_Header_Observe2.source");
         §§push(result);
         §§push(4);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 53 * 119 - 1 - 66 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Function
         {
            return onChangeShowProxiesCallout;
         },null,"_Header_Observe2.handler");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(§§pop() * 64 + 91) - 1 + 36 + 80);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return viewModel.selectedKeywordsTab;
         },null,"_Header_Observe3.source");
         §§push(result);
         §§push(6);
         if(_loc2_)
         {
            §§push(§§pop() - 1 - 1 + 1 - 42 + 41);
         }
         §§pop()[§§pop()] = new Binding(this,function():Function
         {
            return onChangeselectedKeywordsTabCallout;
         },null,"_Header_Observe3.handler");
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 1) - 1 - 1) - 37);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return model.selectedProject.source;
         },null,"_Header_Observe4.source");
         §§push(result);
         §§push(8);
         if(_loc2_)
         {
            §§push(--(-§§pop() + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Function
         {
            return onChangeselectedKeywordsTabCallout;
         },null,"_Header_Observe4.handler");
         §§push(result);
         §§push(9);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 64 - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return !!model.isPlatinum?AssetsLibrary.PLATINUM_LOGO:AssetsLibrary.LOGO;
         },null,"_Header_Image1.source");
         §§push(result);
         §§push(10);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 31 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            §§push(progressBar.width);
            §§push(20);
            if(_loc1_)
            {
               §§push(§§pop() - 91 + 1 + 1 + 83 + 1 + 1);
            }
            return §§pop() - §§pop();
         },function(param1:Number):void
         {
            progressBar.setStyle("labelWidth",param1);
         },"progressBar.labelWidth");
         §§push(result);
         §§push(11);
         if(_loc3_)
         {
            §§push(--(§§pop() - 48) + 1 - 1 + 89);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return viewModel.showMigrationButton;
         },null,"generateMigrateDropButton.visible");
         §§push(result);
         §§push(12);
         if(_loc2_)
         {
            §§push((§§pop() * 68 - 61 - 1 + 1 - 1) * 66 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.EXPORT;
         },function(param1:Object):void
         {
            _Header_Button2.setStyle("icon",param1);
         },"_Header_Button2.icon");
         §§push(result);
         §§push(13);
         if(_loc2_)
         {
            §§push((§§pop() + 116) * 61 - 1 - 72);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.SETTINGS;
         },function(param1:Object):void
         {
            settingsButton.setStyle("icon",param1);
         },"settingsButton.icon");
         §§push(result);
         §§push(14);
         if(_loc2_)
         {
            §§push((§§pop() * 70 + 1) * 64 - 74 + 26 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return this.currentState;
         },function(param1:*):void
         {
            viewModel.headerState = param1;
         },"viewModel.headerState");
         §§push(result);
         §§push(14);
         if(_loc3_)
         {
            §§push(-(§§pop() - 9) - 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() + 1 + 91 - 95 - 36);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 109 - 108 + 1 - 82);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 49 - 1 + 45 - 91);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(14);
         if(_loc2_)
         {
            §§push(-§§pop() * 69 + 69);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _Header_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.viewModel.headerState = this.currentState;
      }
      
      [Bindable(event="propertyChange")]
      public function get generateMigrateDropButton() : Button
      {
         return this._1581649431generateMigrateDropButton;
      }
      
      public function set generateMigrateDropButton(param1:Button) : void
      {
         var _loc2_:Object = this._1581649431generateMigrateDropButton;
         if(_loc2_ !== param1)
         {
            this._1581649431generateMigrateDropButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"generateMigrateDropButton",_loc2_,param1));
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
      public function get settingsButton() : Button
      {
         return this._1917249845settingsButton;
      }
      
      public function set settingsButton(param1:Button) : void
      {
         var _loc2_:Object = this._1917249845settingsButton;
         if(_loc2_ !== param1)
         {
            this._1917249845settingsButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"settingsButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isActionsVisible() : Boolean
      {
         return this._786554753isActionsVisible;
      }
      
      public function set isActionsVisible(param1:Boolean) : void
      {
         var _loc2_:Object = this._786554753isActionsVisible;
         if(_loc2_ !== param1)
         {
            this._786554753isActionsVisible = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isActionsVisible",_loc2_,param1));
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
