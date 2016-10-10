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
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.DataModel;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.AnalyzeMajesticCompetitionCommand;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import com.enfluid.ltp.controller.competitoranalysis.AnalyzeCompetitionCommand;
   import com.enfluid.ltp.controller.keywordresearch.amazonkc.GetAmazonKCCommand;
   import spark.primitives.Rect;
   import mx.binding.BindingManager;
   import flash.utils.setTimeout;
   import com.enfluid.ltp.view.skins.CalculateButtonSkin;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import com.enfluid.ltp.model.ViewModel;
   import mx.events.StateChangeEvent;
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
   
   public final class CalculatableValueGroup extends SelfAdjustingGroup implements IBindingClient, IStateClient2
   {
      
      public static const TYPE_AVG_KC:String = "avgKC";
      
      public static const TYPE_AMAZON_KC:String = "amazonKC";
      
      private static const SHOW_NOTHING:String = "showNothing";
      
      private static const SHOW_VALUE:String = "showValue";
      
      private static const SHOW_ERROR:String = "showError";
      
      private static const SHOW_WAITING:String = "showWaiting";
      
      private static const SHOW_CALCULATE:String = "showCalculate";
      
      private static const SHOW_RECALCULATE:String = "showRecalculate";
      
      private static const SHOW_CANCEL:String = "showCancel";
      
      private static const SHOW_SPINNER:String = "showSpinner";
      
      private static const SHOW_LOCK:String = "showLock";
      
      private static const SHOW_COMPETITORS_BULK_DONE:String = "showCalculating";
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _1305945670_CalculatableValueGroup_Button1:Button;
      
      public var _CalculatableValueGroup_Image1:Image;
      
      private var _1279228886_CalculatableValueGroup_Label1:Label;
      
      private var _1279228887_CalculatableValueGroup_Label2:Label;
      
      private var _1221915667_CalculatableValueGroup_SetProperty1:SetProperty;
      
      private var _1221915668_CalculatableValueGroup_SetProperty2:SetProperty;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var type:String;
      
      private var _814408215keyword:KeywordVO;
      
      private var _111972721value:int;
      
      private var _574087648isRolledOverRow:Boolean;
      
      private var _616898023isRolledOverText:Boolean = false;
      
      private var _104069929model:DataModel;
      
      private var hasSpinner:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function CalculatableValueGroup()
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
         var bindings:Array = this._CalculatableValueGroup_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_renderers_CalculatableValueGroupWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return CalculatableValueGroup[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.mxmlContent = [];
         this.addEventListener("currentStateChange",this.___CalculatableValueGroup_SelfAdjustingGroup1_currentStateChange);
         this.addEventListener("rollOut",this.___CalculatableValueGroup_SelfAdjustingGroup1_rollOut);
         var _CalculatableValueGroup_Button1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._CalculatableValueGroup_Button1_i);
         var _CalculatableValueGroup_Image1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._CalculatableValueGroup_Image1_i);
         var _CalculatableValueGroup_Label1_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._CalculatableValueGroup_Label1_i);
         var _CalculatableValueGroup_Label2_factory:DeferredInstanceFromFunction = new DeferredInstanceFromFunction(this._CalculatableValueGroup_Label2_i);
         states = [new State({
            "name":"showNothing",
            "overrides":[]
         }),new State({
            "name":"showValue",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_CalculatableValueGroup_Label1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            }),new SetStyle().initializeFromObject({
               "target":"_CalculatableValueGroup_Label1",
               "name":"fontWeight",
               "value":"bold"
            }),this._CalculatableValueGroup_SetProperty1 = SetProperty(new SetProperty().initializeFromObject({
               "target":"_CalculatableValueGroup_Label1",
               "name":"text",
               "value":undefined
            })),new SetStyle().initializeFromObject({
               "target":"_CalculatableValueGroup_Label2",
               "name":"fontWeight",
               "value":"bold"
            }),this._CalculatableValueGroup_SetProperty2 = SetProperty(new SetProperty().initializeFromObject({
               "target":"_CalculatableValueGroup_Label2",
               "name":"text",
               "value":undefined
            }))]
         }),new State({
            "name":"showError",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_CalculatableValueGroup_Label1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            }),new SetStyle().initializeFromObject({
               "target":"_CalculatableValueGroup_Label1",
               "name":"fontWeight",
               "value":"bold"
            }),new SetProperty().initializeFromObject({
               "target":"_CalculatableValueGroup_Label1",
               "name":"text",
               "value":"-"
            }),new SetStyle().initializeFromObject({
               "target":"_CalculatableValueGroup_Label2",
               "name":"fontWeight",
               "value":"bold"
            })]
         }),new State({
            "name":"showWaiting",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_CalculatableValueGroup_Label1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            }),new SetProperty().initializeFromObject({
               "target":"_CalculatableValueGroup_Label1",
               "name":"text",
               "value":"waiting..."
            })]
         }),new State({
            "name":"showCalculate",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_CalculatableValueGroup_Button1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            }),new SetProperty().initializeFromObject({
               "target":"_CalculatableValueGroup_Button1",
               "name":"label",
               "value":"Calculate"
            })]
         }),new State({
            "name":"showRecalculate",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_CalculatableValueGroup_Button1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            }),new SetProperty().initializeFromObject({
               "target":"_CalculatableValueGroup_Button1",
               "name":"label",
               "value":"Recalculate"
            })]
         }),new State({
            "name":"showCancel",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_CalculatableValueGroup_Button1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            }),new SetProperty().initializeFromObject({
               "target":"_CalculatableValueGroup_Button1",
               "name":"label",
               "value":"Cancel"
            }),new SetEventHandler().initializeFromObject({
               "target":"_CalculatableValueGroup_Button1",
               "name":"click",
               "originalHandlerFunction":this.___CalculatableValueGroup_Button1_click,
               "handlerFunction":this.___CalculatableValueGroup_Button1_click_showCancel
            })]
         }),new State({
            "name":"showSpinner",
            "overrides":[]
         }),new State({
            "name":"showLock",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_CalculatableValueGroup_Image1_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            })]
         }),new State({
            "name":"showCalculating",
            "overrides":[new AddItems().initializeFromObject({
               "itemsFactory":_CalculatableValueGroup_Label2_factory,
               "destination":null,
               "propertyName":"mxmlContent",
               "position":"first"
            }),new SetProperty().initializeFromObject({
               "target":"_CalculatableValueGroup_Label2",
               "name":"text",
               "value":"analyzing..."
            })]
         })];
         BindingManager.executeBindings(this,"_CalculatableValueGroup_SetProperty1",this._CalculatableValueGroup_SetProperty1);
         BindingManager.executeBindings(this,"_CalculatableValueGroup_SetProperty2",this._CalculatableValueGroup_SetProperty2);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push((§§pop() - 40) * 114 + 5 + 1);
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
         CalculatableValueGroup._watcherSetupUtil = param1;
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
      
      protected final function calculateClickHandler(param1:MouseEvent) : void
      {
         var _loc2_:String = null;
         if(this.type == TYPE_AVG_KC)
         {
            _loc2_ = this.calcState(this.value,this.isRolledOverRow,this.isRolledOverText,this.model.isPlatinum);
            this.model.isFetchingBatchMissingMajesticKC = false;
            if(this.keyword.source == "majestic")
            {
               if(_loc2_ == "showRecalculate")
               {
                  this.keyword.isFromCache = false;
                  this.keyword.avgKC = Values.CURRENTLY_FETCHING;
                  new AnalyzeMajesticCompetitionCommand(this.keyword).execute();
                  new SetUserEvent("UserEvent.Keyword.SingleMajesticRecalculate",{"keyword":this.keyword.keyword}).execute();
               }
               else
               {
                  new AnalyzeMajesticCompetitionCommand(this.keyword).execute();
                  new SetUserEvent("UserEvent.Keyword.SingleMajesticCalculate",{"keyword":this.keyword.keyword}).execute();
               }
            }
            else
            {
               new AnalyzeCompetitionCommand(this.keyword).execute();
               new SetUserEvent("UserEvent.Keyword.SingleMozCalculate",{"keyword":this.keyword.keyword}).execute();
            }
         }
         else if(this.type == TYPE_AMAZON_KC)
         {
            new GetAmazonKCCommand(this.keyword).execute();
         }
      }
      
      protected final function calculateCancelHandler(param1:MouseEvent) : void
      {
         if(this.type == TYPE_AVG_KC)
         {
            AnalyzeMajesticCompetitionCommand.cancelCommand(this.keyword);
            this.keyword.avgKC = Values.NOT_FETCHED;
            new SetUserEvent("UserEvent.Keyword.SingleCalculateCancel",{"keyword":this.keyword.keyword}).execute();
         }
         else if(this.type == TYPE_AMAZON_KC)
         {
         }
      }
      
      private final function calcState(param1:int, param2:Boolean, param3:Boolean, param4:Boolean) : String
      {
         §§push(param1);
         §§push(0);
         if(_loc9_)
         {
            §§push((§§pop() * 76 - 87 - 28) * 39 * 50 - 1 + 1);
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
                     §§push(-(-(§§pop() * 64 + 25) + 14));
                  }
               }
               else if(Values.WAITING === _loc7_)
               {
                  §§push(1);
                  if(_loc9_)
                  {
                     §§push(-((§§pop() + 1) * 18 + 1 - 1) * 4 - 11);
                  }
               }
               else if(Values.CURRENTLY_FETCHING === _loc7_)
               {
                  §§push(2);
                  if(_loc8_)
                  {
                     §§push(-§§pop() + 1 - 96);
                  }
               }
               else if(Values.COMPETITORS_BULK_FETCHING_DONE === _loc7_)
               {
                  §§push(3);
                  if(_loc8_)
                  {
                     §§push(§§pop() * 86 * 78 + 116 - 95 + 1);
                  }
               }
               else
               {
                  §§push(4);
                  if(_loc8_)
                  {
                     §§push(-§§pop() - 20 + 9 + 108 - 1 - 41 - 97);
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
                  case 3:
                     if(!this.model.isFetchingBatchMissingMajesticKC)
                     {
                        return SHOW_CANCEL;
                     }
                     return SHOW_COMPETITORS_BULK_DONE;
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
                     §§push(-(-§§pop() + 113 + 94));
                  }
               }
               else if(Values.CURRENTLY_FETCHING === _loc7_)
               {
                  §§push(1);
                  if(_loc8_)
                  {
                     §§push(-(§§pop() - 55) - 30);
                  }
               }
               else if(Values.COMPETITORS_BULK_FETCHING_DONE === _loc7_)
               {
                  §§push(2);
                  if(_loc8_)
                  {
                     §§push(§§pop() * 31 * 82 - 113);
                  }
               }
               else
               {
                  §§push(3);
                  if(_loc9_)
                  {
                     §§push(-§§pop() + 1 + 1 + 68);
                  }
               }
               switch(§§pop())
               {
                  case 0:
                     return SHOW_WAITING;
                  case 1:
                     return SHOW_SPINNER;
                  case 2:
                     return SHOW_COMPETITORS_BULK_DONE;
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
      
      private final function playSpinner() : void
      {
         if(currentState == SHOW_SPINNER)
         {
            this.hasSpinner = true;
            addElement(this.model.competitorSpinner);
            this.model.competitorSpinner.pause = false;
            this.model.competitorSpinner.visible = true;
            this.model.competitorSpinner.includeInLayout = true;
         }
         else if(this.hasSpinner)
         {
            this.hasSpinner = false;
            this.model.competitorSpinner.pause = true;
            this.model.competitorSpinner.visible = false;
            this.model.competitorSpinner.includeInLayout = false;
         }
      }
      
      public final function ___CalculatableValueGroup_Button1_click_showCancel(param1:MouseEvent) : void
      {
         this.calculateCancelHandler(param1);
      }
      
      private final function _CalculatableValueGroup_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 24 - 19 - 69);
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() * 110 - 1 - 1);
         }
         §§pop().verticalCenter = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(3355443);
         if(_loc3_)
         {
            §§push((-(§§pop() * 24 * 100) + 1) * 29);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(14);
         if(_loc2_)
         {
            §§push(§§pop() * 44 * 110 + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.addEventListener("rollOver",this.___CalculatableValueGroup_Label1_rollOver);
         _loc1_.id = "_CalculatableValueGroup_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CalculatableValueGroup_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_CalculatableValueGroup_Label1",this._CalculatableValueGroup_Label1);
         return _loc1_;
      }
      
      public final function ___CalculatableValueGroup_Label1_rollOver(param1:MouseEvent) : void
      {
         this.isRolledOverText = true;
      }
      
      private final function _CalculatableValueGroup_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 1 + 68 - 1) - 82));
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(-§§pop() - 70) + 1 + 1));
         }
         §§pop().verticalCenter = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(3355443);
         if(_loc3_)
         {
            §§push(-(§§pop() * 85 - 1 - 1) - 99 + 20 + 42);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(14);
         if(_loc2_)
         {
            §§push(§§pop() - 15 + 47 - 96 + 87 + 119 + 113);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.addEventListener("rollOver",this.___CalculatableValueGroup_Label2_rollOver);
         _loc1_.id = "_CalculatableValueGroup_Label2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CalculatableValueGroup_Label2 = _loc1_;
         BindingManager.executeBindings(this,"_CalculatableValueGroup_Label2",this._CalculatableValueGroup_Label2);
         return _loc1_;
      }
      
      public final function ___CalculatableValueGroup_Label2_rollOver(param1:MouseEvent) : void
      {
         this.isRolledOverText = true;
      }
      
      private final function _CalculatableValueGroup_Button1_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 1) - 118);
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() + 116 - 1 - 1);
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.setStyle("skinClass",CalculateButtonSkin);
         _loc1_.addEventListener("click",this.___CalculatableValueGroup_Button1_click);
         _loc1_.addEventListener("rollOut",this.___CalculatableValueGroup_Button1_rollOut);
         _loc1_.id = "_CalculatableValueGroup_Button1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CalculatableValueGroup_Button1 = _loc1_;
         BindingManager.executeBindings(this,"_CalculatableValueGroup_Button1",this._CalculatableValueGroup_Button1);
         return _loc1_;
      }
      
      public final function ___CalculatableValueGroup_Button1_click(param1:MouseEvent) : void
      {
         this.calculateClickHandler(param1);
      }
      
      public final function ___CalculatableValueGroup_Button1_rollOut(param1:MouseEvent) : void
      {
         this.isRolledOverText = false;
      }
      
      private final function _CalculatableValueGroup_Image1_i() : Image
      {
         var _loc1_:Image = new Image();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 5 - 1 + 1 + 16) * 23 + 116);
         }
         §§pop().horizontalCenter = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() + 1 + 1 - 1 - 1);
         }
         §§pop().verticalCenter = §§pop();
         _loc1_.buttonMode = true;
         _loc1_.useHandCursor = true;
         _loc1_.addEventListener("click",this.___CalculatableValueGroup_Image1_click);
         _loc1_.id = "_CalculatableValueGroup_Image1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._CalculatableValueGroup_Image1 = _loc1_;
         BindingManager.executeBindings(this,"_CalculatableValueGroup_Image1",this._CalculatableValueGroup_Image1);
         return _loc1_;
      }
      
      public final function ___CalculatableValueGroup_Image1_click(param1:MouseEvent) : void
      {
         ViewModel.instance.showUpgradeToPlatinumPopup = true;
      }
      
      public final function ___CalculatableValueGroup_SelfAdjustingGroup1_currentStateChange(param1:StateChangeEvent) : void
      {
         this.playSpinner();
      }
      
      public final function ___CalculatableValueGroup_SelfAdjustingGroup1_rollOut(param1:MouseEvent) : void
      {
         this.isRolledOverText = false;
      }
      
      private final function _CalculatableValueGroup_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 55 + 90);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = calcState(value,isRolledOverRow,isRolledOverText,model.isPlatinum);
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"this.currentState");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() - 1 + 1 + 23 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_CalculatableValueGroup_SetProperty1.value","value");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(---(§§pop() - 1));
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_CalculatableValueGroup_SetProperty2.value","value");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(§§pop() * 92 - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Object
         {
            return AssetsLibrary.LOCK;
         },null,"_CalculatableValueGroup_Image1.source");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get _CalculatableValueGroup_Button1() : Button
      {
         return this._1305945670_CalculatableValueGroup_Button1;
      }
      
      public function set _CalculatableValueGroup_Button1(param1:Button) : void
      {
         var _loc2_:Object = this._1305945670_CalculatableValueGroup_Button1;
         if(_loc2_ !== param1)
         {
            this._1305945670_CalculatableValueGroup_Button1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CalculatableValueGroup_Button1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _CalculatableValueGroup_Label1() : Label
      {
         return this._1279228886_CalculatableValueGroup_Label1;
      }
      
      public function set _CalculatableValueGroup_Label1(param1:Label) : void
      {
         var _loc2_:Object = this._1279228886_CalculatableValueGroup_Label1;
         if(_loc2_ !== param1)
         {
            this._1279228886_CalculatableValueGroup_Label1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CalculatableValueGroup_Label1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _CalculatableValueGroup_Label2() : Label
      {
         return this._1279228887_CalculatableValueGroup_Label2;
      }
      
      public function set _CalculatableValueGroup_Label2(param1:Label) : void
      {
         var _loc2_:Object = this._1279228887_CalculatableValueGroup_Label2;
         if(_loc2_ !== param1)
         {
            this._1279228887_CalculatableValueGroup_Label2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CalculatableValueGroup_Label2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _CalculatableValueGroup_SetProperty1() : SetProperty
      {
         return this._1221915667_CalculatableValueGroup_SetProperty1;
      }
      
      public function set _CalculatableValueGroup_SetProperty1(param1:SetProperty) : void
      {
         var _loc2_:Object = this._1221915667_CalculatableValueGroup_SetProperty1;
         if(_loc2_ !== param1)
         {
            this._1221915667_CalculatableValueGroup_SetProperty1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CalculatableValueGroup_SetProperty1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get _CalculatableValueGroup_SetProperty2() : SetProperty
      {
         return this._1221915668_CalculatableValueGroup_SetProperty2;
      }
      
      public function set _CalculatableValueGroup_SetProperty2(param1:SetProperty) : void
      {
         var _loc2_:Object = this._1221915668_CalculatableValueGroup_SetProperty2;
         if(_loc2_ !== param1)
         {
            this._1221915668_CalculatableValueGroup_SetProperty2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"_CalculatableValueGroup_SetProperty2",_loc2_,param1));
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
      public function get value() : int
      {
         return this._111972721value;
      }
      
      public function set value(param1:int) : void
      {
         var _loc2_:Object = this._111972721value;
         if(_loc2_ !== param1)
         {
            this._111972721value = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"value",_loc2_,param1));
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
