package com.enfluid.ltp.view.components
{
   import spark.components.CalloutButton;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.Label;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.skins.HelpButtonSkin;
   import spark.components.VGroup;
   import spark.components.supportClasses.LabelPlacement;
   import com.adobe.cairngorm.observer.Observe;
   import mx.binding.BindingManager;
   import mx.graphics.GradientEntry;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import flash.events.MouseEvent;
   import mx.events.FlexEvent;
   import flash.events.Event;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.DeleteSeedKeywordCommand;
   import hr.binaria.asx3m.mapper.IMapper;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import com.enfluid.ltp.view.filterviews.BingTitleCompetitionFilterView;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class HelpButton extends CalloutButton implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _HelpButton_Label1:Label;
      
      public var _HelpButton_Label2:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _1286914967helpTitle:String = "";
      
      private var _2033484280helpContent:String = "";
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function HelpButton()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         var bindings:Array = this._HelpButton_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_components_HelpButtonWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return HelpButton[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.verticalPosition = "after";
         this.buttonMode = true;
         this.calloutContent = [this._HelpButton_VGroup1_c()];
         this.addEventListener("click",this.___HelpButton_CalloutButton1_click);
         this.addEventListener("mouseOut",this.___HelpButton_CalloutButton1_mouseOut);
         this.addEventListener("mouseUp",this.___HelpButton_CalloutButton1_mouseUp);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(((-§§pop() * 94 + 80) * 32 - 88) * 18);
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
         HelpButton._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var factory:IFlexModuleFactory = param1;
         super.moduleFactory = factory;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.skinClass = HelpButtonSkin;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private final function _HelpButton_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         _loc1_.mxmlContent = [this._HelpButton_Label1_i(),this._HelpButton_Label2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _HelpButton_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.id = "_HelpButton_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._HelpButton_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_HelpButton_Label1",this._HelpButton_Label1);
         return _loc1_;
      }
      
      private final function _HelpButton_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(200);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 1 + 1) - 1 - 79 - 1);
         }
         §§pop().maxWidth = §§pop();
         _loc1_.id = "_HelpButton_Label2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._HelpButton_Label2 = _loc1_;
         BindingManager.executeBindings(this,"_HelpButton_Label2",this._HelpButton_Label2);
         return _loc1_;
      }
      
      public final function ___HelpButton_CalloutButton1_click(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         param1.preventDefault();
      }
      
      public final function ___HelpButton_CalloutButton1_mouseOut(param1:MouseEvent) : void
      {
         closeDropDown();
      }
      
      public final function ___HelpButton_CalloutButton1_mouseUp(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         param1.preventDefault();
      }
      
      private final function _HelpButton_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 35 - 67 - 43 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return DataModel.instance.preferences.showHelpIcons;
         },null,"this.includeInLayout");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((-§§pop() + 1) * 31 * 36 - 57 - 106 + 83);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return DataModel.instance.preferences.showHelpIcons;
         },null,"this.visible");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-§§pop() - 1 + 75 + 79);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_HelpButton_Label1.text","helpTitle");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(((§§pop() - 1) * 50 - 36) * 34 + 1 - 1));
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_HelpButton_Label2.text","helpContent");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get helpTitle() : String
      {
         return this._1286914967helpTitle;
      }
      
      public function set helpTitle(param1:String) : void
      {
         var _loc2_:Object = this._1286914967helpTitle;
         if(_loc2_ !== param1)
         {
            this._1286914967helpTitle = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"helpTitle",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get helpContent() : String
      {
         return this._2033484280helpContent;
      }
      
      public function set helpContent(param1:String) : void
      {
         var _loc2_:Object = this._2033484280helpContent;
         if(_loc2_ !== param1)
         {
            this._2033484280helpContent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"helpContent",_loc2_,param1));
            }
         }
      }
   }
}
