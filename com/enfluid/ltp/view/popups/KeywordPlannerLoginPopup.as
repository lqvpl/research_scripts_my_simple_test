package com.enfluid.ltp.view.popups
{
   import spark.components.TitleWindow;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.VGroup;
   import spark.components.CheckBox;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import mx.controls.HTML;
   import mx.events.FlexEvent;
   import mx.core.IFlexModule;
   import mx.managers.PopUpManager;
   import com.enfluid.ltp.controller.common.LoadGoogleCredentialsCommand;
   import com.enfluid.ltp.model.ViewModel;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.KeyboardEvent;
   import spark.primitives.Rect;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.controller.keywordresearch.keywordplanner.CheckSaveGoogleLoginDetails;
   import spark.components.Label;
   import spark.components.BorderContainer;
   import spark.components.Group;
   import mx.core.DeferredInstanceFromFunction;
   import mx.binding.Binding;
   import assets.TextAssets;
   import com.enfluid.ltp.view.components.ToggleSwitch;
   import flash.utils.ByteArray;
   import com.enfluid.ltp.view.components.FilterValueTextInput;
   import com.enfluid.ltp.view.components.CompetitorAnalysisContentComponent;
   import mx.core.mx_internal;
   import mx.styles.CSSStyleDeclaration;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class KeywordPlannerLoginPopup extends TitleWindow implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _762255243myVGroup:VGroup;
      
      private var _2073106325saveCred:CheckBox;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      private var html:HTML;
      
      mx_internal var _KeywordPlannerLoginPopup_StylesInit_done:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function KeywordPlannerLoginPopup()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._104069929model = DataModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._KeywordPlannerLoginPopup_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_popups_KeywordPlannerLoginPopupWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return KeywordPlannerLoginPopup[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(450);
         if(_loc4_)
         {
            §§push((§§pop() + 1 - 1) * 76 * 29);
         }
         §§pop().width = §§pop();
         §§push(this);
         §§push(630);
         if(_loc4_)
         {
            §§push(-(-§§pop() - 1) + 112);
         }
         §§pop().height = §§pop();
         this.visible = true;
         this.title = "Please log in to Google";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._KeywordPlannerLoginPopup_Array1_c);
         this.addEventListener("creationComplete",this.___KeywordPlannerLoginPopup_TitleWindow1_creationComplete);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((--§§pop() - 77) * 88);
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
         KeywordPlannerLoginPopup._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         super.moduleFactory = param1;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         mx_internal::_KeywordPlannerLoginPopup_StylesInit();
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      private final function onCreationComplete(param1:FlexEvent) : void
      {
         this.closeButton.visible = false;
         new LoadGoogleCredentialsCommand().execute();
         this.html = ViewModel.instance.keywordPlannerHTML;
         ViewModel.instance.keywordPlannerHTMLParent.removeElement(this.html);
         this.myVGroup.addElement(this.html);
         this.html.addEventListener(Event.COMPLETE,this.onComplete);
         this.html.addEventListener(MouseEvent.CLICK,this.checkSaveGoogleLogin);
         this.html.addEventListener(KeyboardEvent.KEY_UP,this.checkSaveGoogleLogin);
      }
      
      private final function onComplete(param1:Event) : void
      {
         §§push(this.html.htmlLoader.location.indexOf("accounts.google.com"));
         §§push(-1);
         if(_loc3_)
         {
            §§push(-(-§§pop() * 33 - 1 + 86 - 9 - 1));
         }
         if(§§pop() != §§pop())
         {
            this.visible = true;
         }
         else
         {
            this.html.removeEventListener(Event.COMPLETE,this.onComplete);
            this.html.removeEventListener(MouseEvent.CLICK,this.checkSaveGoogleLogin);
            this.html.removeEventListener(KeyboardEvent.KEY_UP,this.checkSaveGoogleLogin);
            this.myVGroup.removeElement(this.html);
            ViewModel.instance.keywordPlannerHTMLParent.addElement(this.html);
            ViewModel.instance.showKeywordPlannerLoginPopup = false;
         }
      }
      
      private final function checkSaveGoogleLogin(param1:Event) : void
      {
         new CheckSaveGoogleLoginDetails(param1,this.html.htmlLoader).execute();
      }
      
      private final function _KeywordPlannerLoginPopup_Array1_c() : Array
      {
         var _loc1_:Array = [this._KeywordPlannerLoginPopup_VGroup1_i()];
         return _loc1_;
      }
      
      private final function _KeywordPlannerLoginPopup_VGroup1_i() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(-§§pop() * 26 - 76 - 1 - 1 - 43));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() * 35 + 1 - 1 - 27 + 118 + 1);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.mxmlContent = [this._KeywordPlannerLoginPopup_BorderContainer1_c()];
         _loc1_.id = "myVGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.myVGroup = _loc1_;
         BindingManager.executeBindings(this,"myVGroup",this.myVGroup);
         return _loc1_;
      }
      
      private final function _KeywordPlannerLoginPopup_BorderContainer1_c() : BorderContainer
      {
         var _loc1_:BorderContainer = new BorderContainer();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push((§§pop() + 51 + 5) * 10 + 1 + 7);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(50);
         if(_loc2_)
         {
            §§push(---§§pop() - 1);
         }
         §§pop().height = §§pop();
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._KeywordPlannerLoginPopup_Array3_c);
         §§push(_loc1_);
         §§push("backgroundColor");
         §§push(15709483);
         if(_loc3_)
         {
            §§push(((§§pop() - 1) * 60 - 110) * 91 - 73);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("borderVisible",false);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _KeywordPlannerLoginPopup_Array3_c() : Array
      {
         var _loc1_:Array = [this._KeywordPlannerLoginPopup_CheckBox1_i()];
         return _loc1_;
      }
      
      private final function _KeywordPlannerLoginPopup_CheckBox1_i() : CheckBox
      {
         var _loc1_:CheckBox = new CheckBox();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((-(§§pop() + 58) * 108 + 36 - 1) * 67);
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() * 89 - 92 - 1 - 1);
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.label = "Save Google login credentials and auto-login next time";
         _loc1_.styleName = "checkBoxStyle";
         _loc1_.id = "saveCred";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.saveCred = _loc1_;
         BindingManager.executeBindings(this,"saveCred",this.saveCred);
         return _loc1_;
      }
      
      public final function ___KeywordPlannerLoginPopup_TitleWindow1_creationComplete(param1:FlexEvent) : void
      {
         this.onCreationComplete(param1);
      }
      
      private final function _KeywordPlannerLoginPopup_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(--(-(§§pop() + 51) + 114 - 1) - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.autoLoginGoogle;
         },null,"saveCred.selected");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 67 + 1 - 78 - 8) + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return saveCred.selected;
         },function(param1:*):void
         {
            model.autoLoginGoogle = param1;
         },"model.autoLoginGoogle");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-§§pop() - 92 + 114);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(---(-§§pop() + 10) - 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() * 50 * 47) + 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 + 1 + 6 + 19 + 36);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() * 59 - 1 - 118);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _KeywordPlannerLoginPopup_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.model.autoLoginGoogle = this.saveCred.selected;
      }
      
      mx_internal final function _KeywordPlannerLoginPopup_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         var conditions:Array = null;
         var condition:CSSCondition = null;
         var selector:CSSSelector = null;
         if(mx_internal::_KeywordPlannerLoginPopup_StylesInit_done)
         {
            return;
         }
         mx_internal::_KeywordPlannerLoginPopup_StylesInit_done = true;
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","checkBoxStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".checkBoxStyle");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontWeight = "bold";
               this.color = "0xFFFFFF";
               this.fontSize = "15";
            };
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myVGroup() : VGroup
      {
         return this._762255243myVGroup;
      }
      
      public function set myVGroup(param1:VGroup) : void
      {
         var _loc2_:Object = this._762255243myVGroup;
         if(_loc2_ !== param1)
         {
            this._762255243myVGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myVGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get saveCred() : CheckBox
      {
         return this._2073106325saveCred;
      }
      
      public function set saveCred(param1:CheckBox) : void
      {
         var _loc2_:Object = this._2073106325saveCred;
         if(_loc2_ !== param1)
         {
            this._2073106325saveCred = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"saveCred",_loc2_,param1));
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
   }
}
