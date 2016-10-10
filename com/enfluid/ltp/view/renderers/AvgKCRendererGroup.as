package com.enfluid.ltp.view.renderers
{
   import com.enfluid.ltp.view.components.SelfAdjustingGroup;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.Button;
   import spark.components.Image;
   import spark.components.Label;
   import mx.states.SetProperty;
   import com.enfluid.ltp.view.components.Spinner;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.constants.Values;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.controller.competitoranalysis.AnalyzeCompetitionCommand;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.view.skins.CalculateButtonSkin;
   import com.enfluid.ltp.model.ViewModel;
   import mx.binding.Binding;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import mx.core.DeferredInstanceFromFunction;
   import flash.utils.getDefinitionByName;
   import mx.states.State;
   import mx.states.AddItems;
   import mx.states.SetStyle;
   import mx.states.SetEventHandler;
   
   use namespace mx_internal;
   
   public final class AvgKCRendererGroup extends SelfAdjustingGroup implements IBindingClient, IStateClient2
   {
      
      private static const SHOW_NOTHING:String = "showNothing";
      
      private static const SHOW_VALUE:String = "showValue";
      
      private static const SHOW_ERROR:String = "showError";
      
      private static const SHOW_WAITING:String = "showWaiting";
      
      private static const SHOW_CALCULATE:String = "showCalculate";
      
      private static const SHOW_RECALCULATE:String = "showRecalculate";
      
      private static const SHOW_CANCEL:String = "showCancel";
      
      private static const SHOW_SPINNER:String = "showSpinner";
      
      private static const SHOW_LOCK:String = "showLock";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _2008030319_AvgKCRendererGroup_Button1:Button;
      
      public var _AvgKCRendererGroup_Image1:Image;
      
      private var _1449421099_AvgKCRendererGroup_Label1:Label;
      
      private var _582627928_AvgKCRendererGroup_SetProperty1:SetProperty;
      
      private var _2004438503spinner:Spinner;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _814408215keyword:KeywordVO;
      
      private var _574087648isRolledOverRow:Boolean;
      
      private var _616898023isRolledOverText:Boolean = false;
      
      private var _104069929model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function AvgKCRendererGroup()
      {
         var bindings:Array = null;
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._104069929model = DataModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         bindings = this._AvgKCRendererGroup_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_renderers_AvgKCRendererGroupWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return AvgKCRendererGroup[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [];
         this.addEventListener("rollOut",this.___AvgKCRendererGroup_SelfAdjustingGroup1_rollOut);
         var _AvgKCRendererGroup_Button1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._AvgKCRendererGroup_Button1_i);
         var _AvgKCRendererGroup_Image1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._AvgKCRendererGroup_Image1_i);
         var _AvgKCRendererGroup_Label1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._AvgKCRendererGroup_Label1_i);
         var _AvgKCRendererGroup_Spinner1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._AvgKCRendererGroup_Spinner1_i);
         states = [new State({
            "name":"showNothing",
            "overrides":[]
         }),new State({
            "name":"showValue",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_AvgKCRendererGroup_Label1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            }),new SetStyle().initializeFromObject({
               "target":"_AvgKCRendererGroup_Label1",
               "name":"fontWeight",
               "value":"bold"
            }),this._AvgKCRendererGroup_SetProperty1 = SetProperty(new SetProperty().initializeFromObject({
               "target":"_AvgKCRendererGroup_Label1",
               "name":"text",
               "value":undefined
            }))]
         }),new State({
            "name":"showError",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_AvgKCRendererGroup_Label1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            }),new SetStyle().initializeFromObject({
               "target":"_AvgKCRendererGroup_Label1",
               "name":"fontWeight",
               "value":"bold"
            }),new SetProperty().initializeFromObject({
               "target":"_AvgKCRendererGroup_Label1",
               "name":"text",
               "value":"-"
            })]
         }),new State({
            "name":"showWaiting",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_AvgKCRendererGroup_Label1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            }),new SetProperty().initializeFromObject({
               "target":"_AvgKCRendererGroup_Label1",
               "name":"text",
               "value":"waiting..."
            })]
         }),new State({
            "name":"showCalculate",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_AvgKCRendererGroup_Button1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            }),new SetProperty().initializeFromObject({
               "target":"_AvgKCRendererGroup_Button1",
               "name":"label",
               "value":"Calculate"
            })]
         }),new State({
            "name":"showRecalculate",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_AvgKCRendererGroup_Button1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            }),new SetProperty().initializeFromObject({
               "target":"_AvgKCRendererGroup_Button1",
               "name":"label",
               "value":"Recalculate"
            })]
         }),new State({
            "name":"showCancel",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_AvgKCRendererGroup_Button1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            }),new SetProperty().initializeFromObject({
               "target":"_AvgKCRendererGroup_Button1",
               "name":"label",
               "value":"Cancel"
            }),new SetEventHandler().initializeFromObject({
               "target":"_AvgKCRendererGroup_Button1",
               "name":"click",
               "originalHandlerFunction":this.___AvgKCRendererGroup_Button1_click,
               "handlerFunction":this.___AvgKCRendererGroup_Button1_click_showCancel
            })]
         }),new State({
            "name":"showSpinner",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_AvgKCRendererGroup_Spinner1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            })]
         }),new State({
            "name":"showLock",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_AvgKCRendererGroup_Image1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            })]
         })];
         BindingManager.executeBindings(this,"_AvgKCRendererGroup_SetProperty1",this._AvgKCRendererGroup_SetProperty1);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-§§pop() - 110 - 1 + 24 - 117);
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
         AvgKCRendererGroup._watcherSetupUtil = param1;
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
      
      private final function calcState(param1:int, param2:Boolean, param3:Boolean, param4:Boolean) : String
      {
         §§push(param1);
         §§push(0);
         if(_loc9_)
         {
            §§push(-(§§pop() + 44 - 1));
         }
         var _loc5_:Boolean = §§pop() >= §§pop() || param1 == Values.ERROR;
         var _loc6_:String = param1 == Values.ERROR?SHOW_ERROR:SHOW_VALUE;
         if(this.model.isPlatinum)
         {
            if(_loc5_)
            {
               if(param3)
               {
                  return SHOW_RECALCULATE;
               }
               return _loc6_;
            }
            if(param2)
            {
               if(Values.NOT_FETCHED === _loc7_)
               {
                  §§push(0);
                  if(_loc9_)
                  {
                     §§push(-(§§pop() + 1 + 11 - 39 + 99) + 72);
                  }
               }
               else if(Values.WAITING === _loc7_)
               {
                  §§push(1);
                  if(_loc9_)
                  {
                     §§push((§§pop() - 1 - 117) * 86 + 79 + 1 - 1);
                  }
               }
               else if(Values.CURRENTLY_FETCHING === _loc7_)
               {
                  §§push(2);
                  if(_loc9_)
                  {
                     §§push(-(§§pop() - 1) * 68 * 41);
                  }
               }
               else
               {
                  §§push(3);
                  if(_loc8_)
                  {
                     §§push(-(-§§pop() * 28));
                  }
               }
               switch(§§pop())
               {
                  case 0:
                     return SHOW_CALCULATE;
                  case 1:
                     return SHOW_CANCEL;
                  case 2:
                     return SHOW_CANCEL;
                  default:
                     return SHOW_NOTHING;
               }
            }
            else
            {
               if(Values.WAITING === _loc7_)
               {
                  §§push(0);
                  if(_loc9_)
                  {
                     §§push(-(-(§§pop() + 56 + 1) - 1));
                  }
               }
               else if(Values.CURRENTLY_FETCHING === _loc7_)
               {
                  §§push(1);
                  if(_loc9_)
                  {
                     §§push(-§§pop() + 9 - 1);
                  }
               }
               else
               {
                  §§push(2);
                  if(_loc9_)
                  {
                     §§push(-((§§pop() - 106) * 98) + 102 + 1);
                  }
               }
               switch(§§pop())
               {
                  case 0:
                     return SHOW_WAITING;
                  case 1:
                     return SHOW_SPINNER;
                  default:
                     return SHOW_NOTHING;
               }
            }
         }
         else
         {
            if(_loc5_)
            {
               return _loc6_;
            }
            if(param2)
            {
               return SHOW_LOCK;
            }
            return SHOW_NOTHING;
         }
      }
      
      public final function ___AvgKCRendererGroup_Button1_click_showCancel(param1:MouseEvent) : void
      {
         AnalyzeCompetitionCommand.cancelCommand(this.keyword);
      }
      
      private final function _AvgKCRendererGroup_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1 + 25 - 1) * 118 + 85 - 63 - 74);
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(--(§§pop() + 1));
         }
         §§pop().verticalCenter = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(3355443);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 + 18);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(14);
         if(_loc3_)
         {
            §§push(-(§§pop() + 38 + 88) * 103);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.addEventListener("rollOver",this.___AvgKCRendererGroup_Label1_rollOver);
         _loc1_.id = "_AvgKCRendererGroup_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AvgKCRendererGroup_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_AvgKCRendererGroup_Label1",this._AvgKCRendererGroup_Label1);
         return _loc1_;
      }
      
      public final function ___AvgKCRendererGroup_Label1_rollOver(param1:MouseEvent) : void
      {
         this.isRolledOverText = true;
      }
      
      private final function _AvgKCRendererGroup_Button1_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() * 69 - 1 + 78 - 64 + 105 - 1) * 54);
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 40) * 2 * 18 - 1 - 1 - 1 - 1);
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.setStyle("skinClass",CalculateButtonSkin);
         _loc1_.addEventListener("click",this.___AvgKCRendererGroup_Button1_click);
         _loc1_.addEventListener("rollOut",this.___AvgKCRendererGroup_Button1_rollOut);
         _loc1_.id = "_AvgKCRendererGroup_Button1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AvgKCRendererGroup_Button1 = _loc1_;
         BindingManager.executeBindings(this,"_AvgKCRendererGroup_Button1",this._AvgKCRendererGroup_Button1);
         return _loc1_;
      }
      
      public final function ___AvgKCRendererGroup_Button1_click(param1:MouseEvent) : void
      {
         new AnalyzeCompetitionCommand(this.keyword).execute();
      }
      
      public final function ___AvgKCRendererGroup_Button1_rollOut(param1:MouseEvent) : void
      {
         this.isRolledOverText = false;
      }
      
      private final function _AvgKCRendererGroup_Spinner1_i() : Spinner
      {
         var _loc1_:Spinner = new Spinner();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((-(§§pop() * 46) + 1) * 7));
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(((§§pop() + 1) * 116 - 1) * 92 * 87);
         }
         §§pop().verticalCenter = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(§§pop() + 72 + 98 + 73 + 1 + 1);
         }
         §§pop().size = §§pop();
         §§push(_loc1_);
         §§push(12);
         if(_loc2_)
         {
            §§push(-(§§pop() + 92 + 1 - 1) * 114);
         }
         §§pop().numTicks = §§pop();
         §§push(_loc1_);
         §§push(2);
         if(_loc3_)
         {
            §§push(-(§§pop() + 83) + 1 + 24 - 1);
         }
         §§pop().tickWidth = §§pop();
         §§push(_loc1_);
         §§push(600);
         if(_loc2_)
         {
            §§push(--(-(§§pop() * 22) + 53 + 1 - 30));
         }
         §§pop().speed = §§pop();
         §§push(_loc1_);
         §§push(1200);
         if(_loc2_)
         {
            §§push(((-§§pop() + 1) * 69 + 1) * 82 + 87 - 63);
         }
         §§pop().fadeSpeed = §§pop();
         §§push(_loc1_);
         §§push("tickColor");
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1) * 86) + 59 - 1 + 40 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.id = "spinner";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.spinner = _loc1_;
         BindingManager.executeBindings(this,"spinner",this.spinner);
         return _loc1_;
      }
      
      private final function _AvgKCRendererGroup_Image1_i() : Image
      {
         var _loc1_:Image = new Image();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() - 1 + 113 + 112);
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() + 14) * 115 + 1);
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.buttonMode = true;
         _loc1_.useHandCursor = true;
         _loc1_.addEventListener("click",this.___AvgKCRendererGroup_Image1_click);
         _loc1_.id = "_AvgKCRendererGroup_Image1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._AvgKCRendererGroup_Image1 = _loc1_;
         BindingManager.executeBindings(this,"_AvgKCRendererGroup_Image1",this._AvgKCRendererGroup_Image1);
         return _loc1_;
      }
      
      public final function ___AvgKCRendererGroup_Image1_click(param1:MouseEvent) : void
      {
         ViewModel.instance.showUpgradeToPlatinumPopup = true;
      }
      
      public final function ___AvgKCRendererGroup_SelfAdjustingGroup1_rollOut(param1:MouseEvent) : void
      {
         this.isRolledOverText = false;
      }
      
      private final function _AvgKCRendererGroup_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 - 90 + 1 - 42 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = calcState(keyword.avgKC,isRolledOverRow,isRolledOverText,model.isPlatinum);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.currentState");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) * 29 - 24 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return keyword.avgKC;
         },null,"_AvgKCRendererGroup_SetProperty1.value");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(-(-(-§§pop() - 1) * 45 + 1 + 20));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return !keyword.avgKC == Values.CURRENTLY_FETCHING;
         },null,"spinner.pause");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push((§§pop() - 119 + 1) * 100 + 9 + 1 - 1 - 51);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.LOCK;
         },null,"_AvgKCRendererGroup_Image1.source");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get _AvgKCRendererGroup_Button1() : Button
      {
         return this._2008030319_AvgKCRendererGroup_Button1;
      }
      
      public function set _AvgKCRendererGroup_Button1(param1:Button) : void
      {
         var _loc2_:Object = this._2008030319_AvgKCRendererGroup_Button1;
         if(_loc2_ !== param1)
         {
            this._2008030319_AvgKCRendererGroup_Button1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_AvgKCRendererGroup_Button1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _AvgKCRendererGroup_Label1() : Label
      {
         return this._1449421099_AvgKCRendererGroup_Label1;
      }
      
      public function set _AvgKCRendererGroup_Label1(param1:Label) : void
      {
         var _loc2_:Object = this._1449421099_AvgKCRendererGroup_Label1;
         if(_loc2_ !== param1)
         {
            this._1449421099_AvgKCRendererGroup_Label1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_AvgKCRendererGroup_Label1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _AvgKCRendererGroup_SetProperty1() : SetProperty
      {
         return this._582627928_AvgKCRendererGroup_SetProperty1;
      }
      
      public function set _AvgKCRendererGroup_SetProperty1(param1:SetProperty) : void
      {
         var _loc2_:Object = this._582627928_AvgKCRendererGroup_SetProperty1;
         if(_loc2_ !== param1)
         {
            this._582627928_AvgKCRendererGroup_SetProperty1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_AvgKCRendererGroup_SetProperty1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get spinner() : Spinner
      {
         return this._2004438503spinner;
      }
      
      public function set spinner(param1:Spinner) : void
      {
         var _loc2_:Object = this._2004438503spinner;
         if(_loc2_ !== param1)
         {
            this._2004438503spinner = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"spinner",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get keyword() : KeywordVO
      {
         return this._814408215keyword;
      }
      
      public function set keyword(param1:KeywordVO) : void
      {
         var _loc2_:Object = this._814408215keyword;
         if(_loc2_ !== param1)
         {
            this._814408215keyword = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"keyword",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isRolledOverRow() : Boolean
      {
         return this._574087648isRolledOverRow;
      }
      
      public function set isRolledOverRow(param1:Boolean) : void
      {
         var _loc2_:Object = this._574087648isRolledOverRow;
         if(_loc2_ !== param1)
         {
            this._574087648isRolledOverRow = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isRolledOverRow",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get isRolledOverText() : Boolean
      {
         return this._616898023isRolledOverText;
      }
      
      public function set isRolledOverText(param1:Boolean) : void
      {
         var _loc2_:Object = this._616898023isRolledOverText;
         if(_loc2_ !== param1)
         {
            this._616898023isRolledOverText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isRolledOverText",_loc2_,param1));
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
