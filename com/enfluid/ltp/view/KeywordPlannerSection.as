package com.enfluid.ltp.view
{
   import com.enfluid.ltp.view.containers.CollapsiblePanel;
   import mx.binding.IBindingClient;
   import mx.core.IStateClient2;
   import mx.binding.IWatcherSetupUtil2;
   import spark.effects.Move;
   import spark.components.Button;
   import spark.components.Label;
   import spark.components.TextInput;
   import spark.components.HGroup;
   import spark.components.DataGroup;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.AddSeedKeywordsCommand;
   import spark.events.TextOperationEvent;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import spark.layouts.VerticalLayout;
   import mx.states.Transition;
   import mx.effects.Sequence;
   import mx.effects.Parallel;
   import mx.binding.BindingManager;
   import spark.components.VGroup;
   import com.enfluid.ltp.view.skins.FlatTextInputSkin;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.view.skins.MinimalFlatButtonSkin;
   import flash.events.MouseEvent;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.renderers.PendingSeedKeywordItemRenderer;
   import mx.binding.Binding;
   import mx.collections.IList;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.core.DeferredInstanceFromFunction;
   import mx.states.State;
   import mx.states.SetProperty;
   
   use namespace mx_internal;
   
   public final class KeywordPlannerSection extends CollapsiblePanel implements IBindingClient, IStateClient2
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _KeywordPlannerSection_Move1:Move;
      
      private var _1972949952addSeedKeywordsBTN:Button;
      
      private var _1248890484errorPrompt:Label;
      
      private var _610198275mySeedKeywordsInput:TextInput;
      
      private var _283360808normalGroup:HGroup;
      
      private var _1131788405pendingSeedKeywordsDG:DataGroup;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var regexpNewLine:RegExp;
      
      private var regexpComa:RegExp;
      
      private var _104069929model:DataModel;
      
      private var _1666016489isSeedKeywordExist:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function KeywordPlannerSection()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.regexpNewLine = /\n+/g;
         this.regexpComa = /,+/g;
         this._104069929model = DataModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._KeywordPlannerSection_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_KeywordPlannerSectionWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return KeywordPlannerSection[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.title = "Add Seed Keywords";
         this.layout = this._KeywordPlannerSection_VerticalLayout1_c();
         this.transitions = [this._KeywordPlannerSection_Transition1_c()];
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._KeywordPlannerSection_Array5_c);
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"errorPrompt",
               "name":"includeInLayout",
               "value":false
            }),new SetProperty().initializeFromObject({
               "target":"errorPrompt",
               "name":"visible",
               "value":false
            })]
         }),new State({
            "name":"error",
            "overrides":[new SetProperty().initializeFromObject({
               "target":"errorPrompt",
               "name":"visible",
               "value":true
            })]
         })];
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() * 73 * 28 + 73 + 95);
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
         KeywordPlannerSection._watcherSetupUtil = param1;
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
      
      private final function addSeedKeywords() : void
      {
         if(this.addSeedKeywordsBTN.enabled)
         {
            new AddSeedKeywordsCommand(this.mySeedKeywordsInput.text).execute();
            this.mySeedKeywordsInput.text = "";
         }
      }
      
      private final function seedKeywordAlreadyExists(param1:TextOperationEvent) : void
      {
         var _loc3_:String = null;
         var _loc4_:SeedKeywordVO = null;
         var _loc5_:SeedKeywordVO = null;
         var _loc2_:Array = this.mySeedKeywordsInput.text.replace(this.regexpNewLine,",").split(this.regexpComa);
         §§push(0);
         if(_loc11_)
         {
            §§push(--§§pop() + 1);
         }
         for each(_loc3_ in _loc2_)
         {
            §§push(0);
            if(_loc11_)
            {
               §§push(-((§§pop() * 13 + 1) * 72) - 14 + 99);
            }
            for each(_loc4_ in this.model.selectedProject.seedKeywords)
            {
               if(_loc4_.keyword == _loc3_)
               {
                  currentState = "error";
                  this.addSeedKeywordsBTN.enabled = false;
                  return;
               }
            }
            §§push(0);
            if(_loc10_)
            {
               §§push(((§§pop() + 113) * 37 - 1 - 49) * 8);
            }
            for each(_loc5_ in this.model.selectedProject.pendingSeedKeywords)
            {
               if(_loc5_.keyword == _loc3_)
               {
                  currentState = "error";
                  this.addSeedKeywordsBTN.enabled = false;
                  return;
               }
            }
         }
         currentState = "normal";
         §§push(this.addSeedKeywordsBTN);
         §§push(this.mySeedKeywordsInput.text.length);
         §§push(0);
         if(_loc11_)
         {
            §§push(---(§§pop() - 1) + 22 + 1);
         }
         §§pop().enabled = §§pop() > §§pop()?true:false;
      }
      
      private final function _KeywordPlannerSection_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push(-(§§pop() * 4 - 1));
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) - 1 - 77);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push((§§pop() + 1) * 116 + 112);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc2_)
         {
            §§push(((§§pop() + 1) * 48 - 87) * 65 * 45 + 1 - 1);
         }
         §§pop().paddingTop = §§pop();
         return _loc1_;
      }
      
      private final function _KeywordPlannerSection_Transition1_c() : Transition
      {
         var _loc1_:Transition = new Transition();
         _loc1_.fromState = "normal";
         _loc1_.toState = "error";
         _loc1_.effect = this._KeywordPlannerSection_Sequence1_c();
         return _loc1_;
      }
      
      private final function _KeywordPlannerSection_Sequence1_c() : Sequence
      {
         var _loc1_:Sequence = new Sequence();
         §§push(_loc1_);
         §§push(1000);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1 - 1) * 1) * 22);
         }
         §§pop().duration = §§pop();
         _loc1_.children = [this._KeywordPlannerSection_Parallel1_c()];
         return _loc1_;
      }
      
      private final function _KeywordPlannerSection_Parallel1_c() : Parallel
      {
         var _loc1_:Parallel = new Parallel();
         _loc1_.children = [this._KeywordPlannerSection_Move1_i()];
         return _loc1_;
      }
      
      private final function _KeywordPlannerSection_Move1_i() : Move
      {
         var _loc1_:Move = new Move();
         _loc1_.applyChangesPostLayout = true;
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 50) * 90 + 102);
         }
         §§pop().xTo = §§pop();
         this._KeywordPlannerSection_Move1 = _loc1_;
         BindingManager.executeBindings(this,"_KeywordPlannerSection_Move1",this._KeywordPlannerSection_Move1);
         return _loc1_;
      }
      
      private final function _KeywordPlannerSection_Array5_c() : Array
      {
         var _loc1_:Array = [this._KeywordPlannerSection_VGroup1_c(),this._KeywordPlannerSection_DataGroup1_i()];
         return _loc1_;
      }
      
      private final function _KeywordPlannerSection_VGroup1_c() : VGroup
      {
         var _loc1_:VGroup = new VGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() - 48 - 27));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 53 - 1 + 29);
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._KeywordPlannerSection_Label1_i(),this._KeywordPlannerSection_HGroup1_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _KeywordPlannerSection_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.horizontalCenter = "left";
         _loc1_.text = "This seed keyword already exists on this project";
         §§push(_loc1_);
         §§push("color");
         §§push(15671585);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 1 - 73) - 9) + 1 - 27);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.id = "errorPrompt";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.errorPrompt = _loc1_;
         BindingManager.executeBindings(this,"errorPrompt",this.errorPrompt);
         return _loc1_;
      }
      
      private final function _KeywordPlannerSection_HGroup1_i() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push(--(§§pop() + 98 - 43) - 1 - 1);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 57) - 1 + 1);
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._KeywordPlannerSection_TextInput1_i(),this._KeywordPlannerSection_Button1_i()];
         _loc1_.id = "normalGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.normalGroup = _loc1_;
         BindingManager.executeBindings(this,"normalGroup",this.normalGroup);
         return _loc1_;
      }
      
      private final function _KeywordPlannerSection_TextInput1_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() - 9 - 1 + 56 + 1 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-§§pop() - 19 + 114);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.prompt = "Add a seed keyword...";
         _loc1_.setStyle("skinClass",FlatTextInputSkin);
         _loc1_.addEventListener("change",this.__mySeedKeywordsInput_change);
         _loc1_.addEventListener("enter",this.__mySeedKeywordsInput_enter);
         _loc1_.id = "mySeedKeywordsInput";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.mySeedKeywordsInput = _loc1_;
         BindingManager.executeBindings(this,"mySeedKeywordsInput",this.mySeedKeywordsInput);
         return _loc1_;
      }
      
      public final function __mySeedKeywordsInput_change(param1:TextOperationEvent) : void
      {
         this.seedKeywordAlreadyExists(param1);
      }
      
      public final function __mySeedKeywordsInput_enter(param1:FlexEvent) : void
      {
         this.addSeedKeywords();
      }
      
      private final function _KeywordPlannerSection_Button1_i() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(40);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 1 + 21 + 1 + 106) * 27));
         }
         §§pop().width = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 + 116 + 1));
         }
         §§pop().percentHeight = §§pop();
         _loc1_.enabled = false;
         _loc1_.label = "Add";
         §§push(_loc1_);
         §§push("color");
         §§push(16777215);
         if(_loc2_)
         {
            §§push(-(-§§pop() + 69) * 21);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("skinClass",MinimalFlatButtonSkin);
         _loc1_.addEventListener("click",this.__addSeedKeywordsBTN_click);
         _loc1_.id = "addSeedKeywordsBTN";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.addSeedKeywordsBTN = _loc1_;
         BindingManager.executeBindings(this,"addSeedKeywordsBTN",this.addSeedKeywordsBTN);
         return _loc1_;
      }
      
      public final function __addSeedKeywordsBTN_click(param1:MouseEvent) : void
      {
         this.addSeedKeywords();
      }
      
      private final function _KeywordPlannerSection_DataGroup1_i() : DataGroup
      {
         var _loc1_:DataGroup = new DataGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(§§pop() * 1 + 1 - 1 - 1 - 16);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-((§§pop() - 35 - 65 - 1) * 38 * 77 - 87));
         }
         §§pop().percentHeight = §§pop();
         §§push(_loc1_);
         §§push(25);
         if(_loc3_)
         {
            §§push(§§pop() * 116 - 2 + 1 + 43);
         }
         §§pop().minHeight = §§pop();
         _loc1_.itemRenderer = this._KeywordPlannerSection_ClassFactory1_c();
         _loc1_.layout = this._KeywordPlannerSection_VerticalLayout2_c();
         _loc1_.id = "pendingSeedKeywordsDG";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.pendingSeedKeywordsDG = _loc1_;
         BindingManager.executeBindings(this,"pendingSeedKeywordsDG",this.pendingSeedKeywordsDG);
         return _loc1_;
      }
      
      private final function _KeywordPlannerSection_ClassFactory1_c() : ClassFactory
      {
         var _loc1_:ClassFactory = new ClassFactory();
         _loc1_.generator = PendingSeedKeywordItemRenderer;
         return _loc1_;
      }
      
      private final function _KeywordPlannerSection_VerticalLayout2_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         return _loc1_;
      }
      
      private final function _KeywordPlannerSection_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1) - 76 + 100);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_KeywordPlannerSection_Move1.target","errorPrompt");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(-(§§pop() + 33 - 8) + 112);
         }
         §§pop()[§§pop()] = new Binding(this,function():Number
         {
            return -errorPrompt.width;
         },null,"_KeywordPlannerSection_Move1.xFrom");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push((§§pop() + 74 + 1) * 102 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():IList
         {
            return DataModel.instance.selectedProject.pendingSeedKeywords;
         },null,"pendingSeedKeywordsDG.dataProvider");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get addSeedKeywordsBTN() : Button
      {
         return this._1972949952addSeedKeywordsBTN;
      }
      
      public function set addSeedKeywordsBTN(param1:Button) : void
      {
         var _loc2_:Object = this._1972949952addSeedKeywordsBTN;
         if(_loc2_ !== param1)
         {
            this._1972949952addSeedKeywordsBTN = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addSeedKeywordsBTN",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get errorPrompt() : Label
      {
         return this._1248890484errorPrompt;
      }
      
      public function set errorPrompt(param1:Label) : void
      {
         var _loc2_:Object = this._1248890484errorPrompt;
         if(_loc2_ !== param1)
         {
            this._1248890484errorPrompt = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"errorPrompt",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get mySeedKeywordsInput() : TextInput
      {
         return this._610198275mySeedKeywordsInput;
      }
      
      public function set mySeedKeywordsInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._610198275mySeedKeywordsInput;
         if(_loc2_ !== param1)
         {
            this._610198275mySeedKeywordsInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"mySeedKeywordsInput",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get normalGroup() : HGroup
      {
         return this._283360808normalGroup;
      }
      
      public function set normalGroup(param1:HGroup) : void
      {
         var _loc2_:Object = this._283360808normalGroup;
         if(_loc2_ !== param1)
         {
            this._283360808normalGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"normalGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get pendingSeedKeywordsDG() : DataGroup
      {
         return this._1131788405pendingSeedKeywordsDG;
      }
      
      public function set pendingSeedKeywordsDG(param1:DataGroup) : void
      {
         var _loc2_:Object = this._1131788405pendingSeedKeywordsDG;
         if(_loc2_ !== param1)
         {
            this._1131788405pendingSeedKeywordsDG = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"pendingSeedKeywordsDG",_loc2_,param1));
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
      private function get isSeedKeywordExist() : Boolean
      {
         return this._1666016489isSeedKeywordExist;
      }
      
      private function set isSeedKeywordExist(param1:Boolean) : void
      {
         var _loc2_:Object = this._1666016489isSeedKeywordExist;
         if(_loc2_ !== param1)
         {
            this._1666016489isSeedKeywordExist = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"isSeedKeywordExist",_loc2_,param1));
            }
         }
      }
   }
}
