package com.enfluid.ltp.view.renderers
{
   import spark.components.supportClasses.ItemRenderer;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import com.enfluid.ltp.view.containers.CollapsiblePanel;
   import spark.components.TextInput;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.vo.SeedKeywordVO;
   import com.enfluid.ltp.model.DataModel;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import com.enfluid.ltp.controller.keywordresearch.campaigns.DeleteSeedKeywordCommand;
   import mx.core.DeferredInstanceFromFunction;
   import mx.binding.BindingManager;
   import spark.components.HGroup;
   import mx.binding.Binding;
   import com.enfluid.ltp.view.skins.CollapsiblePanelSkinWithDeleteButton;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class PendingSeedKeywordItemRenderer extends ItemRenderer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _PendingSeedKeywordItemRenderer_CollapsiblePanel1:CollapsiblePanel;
      
      private var _1686165967excludeTI:TextInput;
      
      private var _1496918755includeTI:TextInput;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public var keyword:Object;
      
      private var _104069929model:DataModel;
      
      private var _394214192rolledOver:Boolean = false;
      
      private var _1939100487expanded:Boolean = false;
      
      private var _1990658504seedKeyword:SeedKeywordVO;
      
      private var _1418905389showControls:Boolean;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function PendingSeedKeywordItemRenderer()
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
         var bindings:Array = this._PendingSeedKeywordItemRenderer_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_renderers_PendingSeedKeywordItemRendererWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return PendingSeedKeywordItemRenderer[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc4_)
         {
            §§push(§§pop() * 114 + 107 + 103 - 1 + 1 + 1 - 89);
         }
         §§pop().percentWidth = §§pop();
         §§push(this);
         §§push(30);
         if(_loc3_)
         {
            §§push(-((§§pop() + 100) * 27));
         }
         §§pop().minHeight = §§pop();
         this.autoDrawBackground = false;
         this.mxmlContent = [this._PendingSeedKeywordItemRenderer_CollapsiblePanel1_i()];
         this.addEventListener("rollOut",this.___PendingSeedKeywordItemRenderer_ItemRenderer1_rollOut);
         this.addEventListener("rollOver",this.___PendingSeedKeywordItemRenderer_ItemRenderer1_rollOver);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(-((§§pop() * 118 - 39 + 1) * 32));
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
         PendingSeedKeywordItemRenderer._watcherSetupUtil = param1;
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
      
      override public function set data(param1:Object) : void
      {
         super.data = param1;
         this.seedKeyword = param1 as SeedKeywordVO;
      }
      
      public final function deleteButton_clickHandeler(param1:MouseEvent) : void
      {
      }
      
      protected final function expanded_mouseHandeler(param1:MouseEvent) : void
      {
         if(this.expanded)
         {
            currentState = "normal";
         }
         else
         {
            currentState = "expanded";
         }
         this.expanded = !this.expanded;
      }
      
      protected final function uiBtnDeleteHandler() : void
      {
      }
      
      protected final function onDeleteHandler(param1:Event) : void
      {
         if(this.seedKeyword.id)
         {
            new DeleteSeedKeywordCommand(this.seedKeyword).execute();
         }
         this.model.selectedProject.pendingSeedKeywords.removeItem(this.seedKeyword);
      }
      
      private final function _PendingSeedKeywordItemRenderer_CollapsiblePanel1_i() : CollapsiblePanel
      {
         var _loc1_:CollapsiblePanel = new CollapsiblePanel();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((-(§§pop() * 114) - 22) * 86);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.collapsed = true;
         _loc1_.mxmlContentFactory = new DeferredInstanceFromFunction(this._PendingSeedKeywordItemRenderer_Array2_c);
         _loc1_.addEventListener("onDelete",this.___PendingSeedKeywordItemRenderer_CollapsiblePanel1_onDelete);
         _loc1_.id = "_PendingSeedKeywordItemRenderer_CollapsiblePanel1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._PendingSeedKeywordItemRenderer_CollapsiblePanel1 = _loc1_;
         BindingManager.executeBindings(this,"_PendingSeedKeywordItemRenderer_CollapsiblePanel1",this._PendingSeedKeywordItemRenderer_CollapsiblePanel1);
         return _loc1_;
      }
      
      private final function _PendingSeedKeywordItemRenderer_Array2_c() : Array
      {
         var _loc1_:Array = [this._PendingSeedKeywordItemRenderer_HGroup1_c()];
         return _loc1_;
      }
      
      private final function _PendingSeedKeywordItemRenderer_HGroup1_c() : HGroup
      {
         var _loc1_:HGroup = new HGroup();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() + 111 - 1) - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(((§§pop() - 1) * 64 * 85 - 82) * 64) * 79);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push((-((§§pop() + 25 - 69) * 31) - 26) * 61 + 1);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(--((§§pop() - 1) * 112 * 50 - 1 + 112));
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(§§pop() * 50 + 1) * 10 - 1 - 1);
         }
         §§pop().paddingTop = §§pop();
         §§push(_loc1_);
         §§push(3);
         if(_loc3_)
         {
            §§push(--(-§§pop() + 81 + 1) * 15 - 65);
         }
         §§pop().gap = §§pop();
         _loc1_.mxmlContent = [this._PendingSeedKeywordItemRenderer_TextInput1_i(),this._PendingSeedKeywordItemRenderer_TextInput2_i()];
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _PendingSeedKeywordItemRenderer_TextInput1_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         §§push(_loc1_);
         §§push(50);
         if(_loc3_)
         {
            §§push(-((-§§pop() - 1) * 83) * 85);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc3_)
         {
            §§push(---(-§§pop() - 1 - 40 + 11));
         }
         §§pop().minHeight = §§pop();
         _loc1_.prompt = "Include...";
         §§push(_loc1_);
         §§push("borderColor");
         §§push(13421772);
         if(_loc2_)
         {
            §§push(----(-§§pop() + 1));
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","normal");
         _loc1_.id = "includeTI";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.includeTI = _loc1_;
         BindingManager.executeBindings(this,"includeTI",this.includeTI);
         return _loc1_;
      }
      
      private final function _PendingSeedKeywordItemRenderer_TextInput2_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         §§push(_loc1_);
         §§push(50);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 + 1) - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(30);
         if(_loc2_)
         {
            §§push((§§pop() - 22 - 37) * 76 - 106 + 1);
         }
         §§pop().minHeight = §§pop();
         _loc1_.prompt = "Exclude...";
         §§push(_loc1_);
         §§push("borderColor");
         §§push(13421772);
         if(_loc2_)
         {
            §§push(-(--§§pop() + 1) - 1 + 32 + 95);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","normal");
         _loc1_.id = "excludeTI";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.excludeTI = _loc1_;
         BindingManager.executeBindings(this,"excludeTI",this.excludeTI);
         return _loc1_;
      }
      
      public final function ___PendingSeedKeywordItemRenderer_CollapsiblePanel1_onDelete(param1:Event) : void
      {
         this.onDeleteHandler(param1);
      }
      
      public final function ___PendingSeedKeywordItemRenderer_ItemRenderer1_rollOut(param1:MouseEvent) : void
      {
         this.rolledOver = false;
      }
      
      public final function ___PendingSeedKeywordItemRenderer_ItemRenderer1_rollOver(param1:MouseEvent) : void
      {
         this.rolledOver = true;
      }
      
      private final function _PendingSeedKeywordItemRenderer_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() * 36 + 35 - 37 + 93 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return expanded || includeTI.text || excludeTI.text;
         },function(param1:*):void
         {
            showControls = param1;
         },"showControls");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((-§§pop() - 85 + 1) * 90 - 44 + 110 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Class
         {
            return CollapsiblePanelSkinWithDeleteButton;
         },function(param1:Class):void
         {
            _PendingSeedKeywordItemRenderer_CollapsiblePanel1.setStyle("skinClass",param1);
         },"_PendingSeedKeywordItemRenderer_CollapsiblePanel1.skinClass");
         §§push(result);
         §§push(2);
         if(_loc2_)
         {
            §§push(§§pop() - 81 + 12 + 119);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = seedKeyword.keyword;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_PendingSeedKeywordItemRenderer_CollapsiblePanel1.title");
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-((§§pop() + 1) * 75));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = seedKeyword.includeKeywords;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"includeTI.text");
         §§push(result);
         §§push(4);
         if(_loc2_)
         {
            §§push(§§pop() + 2 + 1 - 1 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = "See only ideas that include the terms you enter in the box." + "\n\n" + "What to do: Enter terms in the Include box to get ideas that contain at least one of those words." + "\n\n" + "Tips: Enter two words without quotes to see ideas that include both words in any order. Surround your words with quotes to see ideas that contain both words in the order you added them.";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"includeTI.toolTip");
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push(-(§§pop() * 57) + 93);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = seedKeyword.excludeKeywords;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"excludeTI.text");
         §§push(result);
         §§push(6);
         if(_loc2_)
         {
            §§push(-(-§§pop() * 81) * 60 * 9 + 29);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = "See only ideas that don\'t include the terms you enter in the box." + "\n\n" + "How to use it: Exclude certain terms to help make sure your ideas are relevant to your product or service. Enter your terms in the Exclude box." + "\n\n" + "Example: If you\'re searching for ideas using the term hotel, try excluding flight. You\'ll get ideas more related to hotels. ";
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"excludeTI.toolTip");
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push(§§pop() - 0 - 1 - 69 + 25);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return includeTI.text;
         },function(param1:*):void
         {
            seedKeyword.includeKeywords = param1;
         },"seedKeyword.includeKeywords");
         §§push(result);
         §§push(7);
         if(_loc2_)
         {
            §§push((-§§pop() + 83) * 22);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(3);
         if(_loc3_)
         {
            §§push(-((§§pop() * 57 + 1) * 100));
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(--(§§pop() - 12) * 107 - 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-((§§pop() - 1) * 46 + 26 + 43 + 35));
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(7);
         if(_loc3_)
         {
            §§push(§§pop() - 1 - 55 - 10 + 28 - 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(8);
         if(_loc2_)
         {
            §§push((§§pop() + 1 + 86 + 1) * 53 - 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return excludeTI.text;
         },function(param1:*):void
         {
            seedKeyword.excludeKeywords = param1;
         },"seedKeyword.excludeKeywords");
         §§push(result);
         §§push(8);
         if(_loc2_)
         {
            §§push((§§pop() - 1 - 28 - 1) * 20 + 1 - 1 + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(5);
         if(_loc3_)
         {
            §§push((§§pop() + 43 - 75 - 88 + 1) * 42 + 1 + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push((-§§pop() + 1 + 1 - 1) * 48 + 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(5);
         if(_loc2_)
         {
            §§push(-((§§pop() - 53 + 56 + 1) * 33 + 1) + 61);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(8);
         if(_loc2_)
         {
            §§push(-(-§§pop() * 46) * 82 - 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _PendingSeedKeywordItemRenderer_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.showControls = this.expanded || this.includeTI.text || this.excludeTI.text;
         this.seedKeyword.includeKeywords = this.includeTI.text;
         this.seedKeyword.excludeKeywords = this.excludeTI.text;
      }
      
      [Bindable(event="propertyChange")]
      public function get excludeTI() : TextInput
      {
         return this._1686165967excludeTI;
      }
      
      public function set excludeTI(param1:TextInput) : void
      {
         var _loc2_:Object = this._1686165967excludeTI;
         if(_loc2_ !== param1)
         {
            this._1686165967excludeTI = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"excludeTI",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get includeTI() : TextInput
      {
         return this._1496918755includeTI;
      }
      
      public function set includeTI(param1:TextInput) : void
      {
         var _loc2_:Object = this._1496918755includeTI;
         if(_loc2_ !== param1)
         {
            this._1496918755includeTI = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"includeTI",_loc2_,param1));
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
      private function get rolledOver() : Boolean
      {
         return this._394214192rolledOver;
      }
      
      private function set rolledOver(param1:Boolean) : void
      {
         var _loc2_:Object = this._394214192rolledOver;
         if(_loc2_ !== param1)
         {
            this._394214192rolledOver = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rolledOver",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get expanded() : Boolean
      {
         return this._1939100487expanded;
      }
      
      private function set expanded(param1:Boolean) : void
      {
         var _loc2_:Object = this._1939100487expanded;
         if(_loc2_ !== param1)
         {
            this._1939100487expanded = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"expanded",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get seedKeyword() : SeedKeywordVO
      {
         return this._1990658504seedKeyword;
      }
      
      private function set seedKeyword(param1:SeedKeywordVO) : void
      {
         var _loc2_:Object = this._1990658504seedKeyword;
         if(_loc2_ !== param1)
         {
            this._1990658504seedKeyword = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"seedKeyword",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get showControls() : Boolean
      {
         return this._1418905389showControls;
      }
      
      private function set showControls(param1:Boolean) : void
      {
         var _loc2_:Object = this._1418905389showControls;
         if(_loc2_ !== param1)
         {
            this._1418905389showControls = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showControls",_loc2_,param1));
            }
         }
      }
   }
}
