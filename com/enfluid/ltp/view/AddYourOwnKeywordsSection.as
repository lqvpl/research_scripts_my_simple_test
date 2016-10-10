package com.enfluid.ltp.view
{
   import com.enfluid.ltp.view.containers.LockCollapsiblePanel;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.TextArea;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import flash.events.Event;
   import com.enfluid.ltp.util.KeywordUtil;
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   import mx.binding.BindingManager;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class AddYourOwnKeywordsSection extends LockCollapsiblePanel implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _2103062121addOwnKeywordsTextArea:TextArea;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var re:RegExp;
      
      private var _104069929model:DataModel;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function AddYourOwnKeywordsSection()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this.re = /\t/g;
         this._104069929model = DataModel.instance;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._AddYourOwnKeywordsSection_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_AddYourOwnKeywordsSectionWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return AddYourOwnKeywordsSection[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) + 79 + 85 - 33 + 108 + 74);
         }
         §§pop().percentWidth = §§pop();
         this.title = "Add My Own Keywords";
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._AddYourOwnKeywordsSection_Array1_c);
         this.addEventListener("creationComplete",this.___AddYourOwnKeywordsSection_LockCollapsiblePanel1_creationComplete);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-§§pop() + 68 - 43);
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
         AddYourOwnKeywordsSection._watcherSetupUtil = param1;
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
      
      protected final function initPanel(param1:FlexEvent) : void
      {
         var event:FlexEvent = param1;
         addEventListener("collapsedChanged",function():void
         {
            if(!collapsed)
            {
               new SetUserEvent("UserEvent.FindKeywords.AddMyOwn.Opened").execute();
            }
            else
            {
               new SetUserEvent("UserEvent.FindKeywords.AddMyOwn.Closed").execute();
            }
         });
      }
      
      protected final function addOwnKeywordsTextAreaPasteHandler(param1:Event) : void
      {
         var _loc5_:String = null;
         var _loc2_:Array = this.model.selectedProject.pendingOwnKeywords.split("\n");
         var _loc3_:Array = new Array();
         §§push(0);
         if(_loc7_)
         {
            §§push(-((§§pop() * 17 - 14) * 86) - 1 - 90 + 1);
         }
         var _loc4_:* = §§pop();
         while(_loc4_ < _loc2_.length)
         {
            _loc5_ = _loc2_[_loc4_];
            _loc5_ = _loc5_.replace(this.re," ");
            _loc5_ = KeywordUtil.stripBeginningAndEndingSpaces(_loc5_);
            §§push(_loc5_.length);
            §§push(0);
            if(_loc6_)
            {
               §§push((§§pop() - 1) * 115 * 66 * 38 + 1 - 105 - 1);
            }
            if(§§pop() > §§pop())
            {
               _loc3_.push(_loc5_);
            }
            _loc4_++;
         }
         §§push(_loc3_.length);
         §§push(0);
         if(_loc6_)
         {
            §§push((-(§§pop() - 1 + 1 + 1 - 100) + 31) * 8);
         }
         if(§§pop() > §§pop())
         {
            this.model.selectedProject.pendingOwnKeywords = _loc3_.join("\n");
         }
      }
      
      private final function _AddYourOwnKeywordsSection_Array1_c() : Array
      {
         var _loc1_:Array = [this._AddYourOwnKeywordsSection_TextArea1_i()];
         return _loc1_;
      }
      
      private final function _AddYourOwnKeywordsSection_TextArea1_i() : TextArea
      {
         var _loc1_:TextArea = new TextArea();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() - 42 - 31) + 50 - 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(((§§pop() + 39) * 31 + 1) * 28) * 41);
         }
         §§pop().height = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-(-((§§pop() - 1) * 107 - 1) - 1));
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push(((§§pop() + 27 + 11) * 21 - 1) * 70);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc3_)
         {
            §§push(-((§§pop() - 1) * 72 + 1 - 76) - 4 - 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(10);
         if(_loc2_)
         {
            §§push((§§pop() + 72 + 1) * 13);
         }
         §§pop().bottom = §§pop();
         _loc1_.prompt = "Enter up to 10,000 keywords, one per line.";
         _loc1_.setStyle("verticalScrollPolicy","auto");
         _loc1_.setStyle("interactionMode","mouse");
         _loc1_.addEventListener("paste",this.__addOwnKeywordsTextArea_paste);
         _loc1_.id = "addOwnKeywordsTextArea";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.addOwnKeywordsTextArea = _loc1_;
         BindingManager.executeBindings(this,"addOwnKeywordsTextArea",this.addOwnKeywordsTextArea);
         return _loc1_;
      }
      
      public final function __addOwnKeywordsTextArea_paste(param1:Event) : void
      {
         this.addOwnKeywordsTextAreaPasteHandler(param1);
      }
      
      public final function ___AddYourOwnKeywordsSection_LockCollapsiblePanel1_creationComplete(param1:FlexEvent) : void
      {
         this.initPanel(param1);
      }
      
      private final function _AddYourOwnKeywordsSection_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() + 57 - 81 - 112 - 97 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return model.isPlatinum;
         },null,"addOwnKeywordsTextArea.enabled");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() + 90 - 1) * 63 + 107 - 15);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = model.selectedProject.pendingOwnKeywords;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"addOwnKeywordsTextArea.text");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(--((§§pop() + 116) * 93 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():*
         {
            return addOwnKeywordsTextArea.text;
         },function(param1:*):void
         {
            model.selectedProject.pendingOwnKeywords = param1;
         },"model.selectedProject.pendingOwnKeywords");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() - 76 - 1 + 1);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() * 110 + 1 + 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() - 107 - 45 + 1);
         }
         §§pop()[§§pop()].isTwoWayPrimary = true;
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 21 - 89);
         }
         §§push(§§pop()[§§pop()]);
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push(§§pop() - 98 + 78 + 1 - 1);
         }
         §§pop().twoWayCounterpart = §§pop()[§§pop()];
         return result;
      }
      
      private final function _AddYourOwnKeywordsSection_bindingExprs() : void
      {
         var _loc1_:* = undefined;
         this.model.selectedProject.pendingOwnKeywords = this.addOwnKeywordsTextArea.text;
      }
      
      [Bindable(event="propertyChange")]
      public function get addOwnKeywordsTextArea() : TextArea
      {
         return this._2103062121addOwnKeywordsTextArea;
      }
      
      public function set addOwnKeywordsTextArea(param1:TextArea) : void
      {
         var _loc2_:Object = this._2103062121addOwnKeywordsTextArea;
         if(_loc2_ !== param1)
         {
            this._2103062121addOwnKeywordsTextArea = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"addOwnKeywordsTextArea",_loc2_,param1));
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
