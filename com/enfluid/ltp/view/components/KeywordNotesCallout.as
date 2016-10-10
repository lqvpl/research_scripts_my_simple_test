package com.enfluid.ltp.view.components
{
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.TextArea;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.model.DataModel;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import flash.events.TimerEvent;
   import mx.core.DeferredInstanceFromFunction;
   import spark.components.TextInput;
   import com.enfluid.ltp.view.skins.FlatUIComponents.TextInput.FlatTextInputSkinSolo;
   import mx.binding.BindingManager;
   import spark.events.PopUpEvent;
   import flash.events.Event;
   import spark.events.TextOperationEvent;
   import mx.events.ResizeEvent;
   import mx.events.FlexEvent;
   import flash.events.FocusEvent;
   import com.enfluid.ltp.util.Logger;
   import com.enfluid.ltp.util.Util;
   import com.enfluid.ltp.controller.keywordresearch.keywordplanner.SubmitAndScrapeKeywordPlannerCommand;
   import com.enfluid.ltp.controller.keywordresearch.SaveGlobalSearchesToServerCommand;
   import com.enfluid.ltp.util.ProgressBarUtil;
   import spark.components.DataGroup;
   import mx.events.FlexMouseEvent;
   import mx.binding.Binding;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   
   use namespace mx_internal;
   
   public final class KeywordNotesCallout extends CustomNoteCallout implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      private var _2129244398notesta:TextArea;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _1671609301statusmessage:String = "";
      
      private var _814408215keyword:KeywordVO;
      
      private var _1589792892viewModel:ViewModel;
      
      private var _104069929model:DataModel;
      
      private const tmpPadding:int = 40;
      
      private var _autosavetime:int = 5;
      
      private var _timer:Timer;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function KeywordNotesCallout()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._1589792892viewModel = ViewModel.instance;
         this._104069929model = DataModel.instance;
         §§push(this);
         §§push();
         §§push(this._autosavetime);
         §§push(1000);
         if(_loc4_)
         {
            §§push((§§pop() + 2) * 12 * 46 + 1 - 1 - 1);
         }
         §§pop()._timer = new §§pop().Timer(§§pop() * §§pop());
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._KeywordNotesCallout_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_components_KeywordNotesCalloutWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return KeywordNotesCallout[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.horizontalPosition = "start";
         this.verticalPosition = "after";
         §§push(this);
         §§push(600);
         if(_loc3_)
         {
            §§push(--(§§pop() * 17) + 1 - 49);
         }
         §§pop().width = §§pop();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._KeywordNotesCallout_Array1_c);
         this.addEventListener("resize",this.___KeywordNotesCallout_CustomNoteCallout1_resize);
         this.addEventListener("mouseDownOutside",this.___KeywordNotesCallout_CustomNoteCallout1_mouseDownOutside);
         this.addEventListener("close",this.___KeywordNotesCallout_CustomNoteCallout1_close);
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(§§pop() * 92 + 101 + 112 + 78 - 108);
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
         KeywordNotesCallout._watcherSetupUtil = param1;
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
      
      private final function focusInNotesEvent() : void
      {
         §§push(this._timer);
         §§push(TimerEvent.TIMER);
         §§push(this.timerTickEvent);
         §§push(false);
         §§push(0);
         if(_loc1_)
         {
            §§push(§§pop() + 56 + 1 - 80);
         }
         §§pop().addEventListener(§§pop(),§§pop(),§§pop(),§§pop(),true);
         this._timer.start();
      }
      
      private final function focusOutNotesEvent() : void
      {
         this._timer.stop();
         this._timer.reset();
         this._timer.removeEventListener(TimerEvent.TIMER,this.timerTickEvent);
         this.saveNotes();
      }
      
      private final function timerTickEvent(param1:TimerEvent) : void
      {
         this.saveNotes();
      }
      
      private final function saveNotes() : void
      {
         var _loc1_:Date = null;
         if(this.keyword.notes != this.notesta.text)
         {
            this.keyword.notes = this.notesta.text;
            this.keyword.save();
            this.keyword.isNoteTyping = false;
            _loc1_ = new Date();
            this.statusmessage = "Notes Saved: " + _loc1_.toLocaleTimeString() + " on " + _loc1_.toLocaleDateString();
         }
      }
      
      protected final function calloutCloseHandler(param1:PopUpEvent) : void
      {
         this.focusOutNotesEvent();
         dispatchEvent(new Event("calloutCloseEvent"));
      }
      
      protected final function notesta_changeHandler(param1:TextOperationEvent) : void
      {
         this.keyword.isNoteTyping = true;
      }
      
      protected final function customnotecallout1_resizeHandler(param1:ResizeEvent) : void
      {
         §§push(this);
         §§push(this.viewModel.keywordDataGrid.width);
         §§push(600);
         if(_loc2_)
         {
            §§push((-(§§pop() + 1) - 1 - 28 + 57) * 23);
         }
         if(§§pop() > §§pop())
         {
            §§push(600);
            if(_loc3_)
            {
               §§push(--(-(§§pop() - 17) * 88) * 99);
            }
            §§push(Number(§§pop()));
         }
         else
         {
            §§push(Number(this.viewModel.keywordDataGrid.width));
         }
         §§pop().width = §§pop();
      }
      
      private final function _KeywordNotesCallout_Array1_c() : Array
      {
         var _loc1_:Array = [this._KeywordNotesCallout_TextArea1_i()];
         return _loc1_;
      }
      
      private final function _KeywordNotesCallout_TextArea1_i() : TextArea
      {
         var _loc1_:TextArea = new TextArea();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(§§pop() * 19 - 14 + 40);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((-(-§§pop() + 1) - 1) * 38 + 8);
         }
         §§pop().height = §§pop();
         _loc1_.prompt = "Jot down some notes about this keyword.";
         _loc1_.setStyle("focusAlpha",0.25);
         _loc1_.setStyle("borderVisible",true);
         §§push(_loc1_);
         §§push("borderColor");
         §§push(11184810);
         if(_loc2_)
         {
            §§push((§§pop() - 52 + 113 - 1 + 1) * 24);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.addEventListener("focusIn",this.__notesta_focusIn);
         _loc1_.addEventListener("focusOut",this.__notesta_focusOut);
         _loc1_.addEventListener("change",this.__notesta_change);
         _loc1_.id = "notesta";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.notesta = _loc1_;
         BindingManager.executeBindings(this,"notesta",this.notesta);
         return _loc1_;
      }
      
      public final function __notesta_focusIn(param1:FocusEvent) : void
      {
         this.focusInNotesEvent();
      }
      
      public final function __notesta_focusOut(param1:FocusEvent) : void
      {
         this.focusOutNotesEvent();
      }
      
      public final function __notesta_change(param1:TextOperationEvent) : void
      {
         this.notesta_changeHandler(param1);
      }
      
      public final function ___KeywordNotesCallout_CustomNoteCallout1_resize(param1:ResizeEvent) : void
      {
         this.customnotecallout1_resizeHandler(param1);
      }
      
      public final function ___KeywordNotesCallout_CustomNoteCallout1_mouseDownOutside(param1:FlexMouseEvent) : void
      {
         this.close();
      }
      
      public final function ___KeywordNotesCallout_CustomNoteCallout1_close(param1:PopUpEvent) : void
      {
         this.calloutCloseHandler(param1);
      }
      
      private final function _KeywordNotesCallout_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() - 1 - 64 + 1));
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = keyword.notes;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"notesta.text");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get notesta() : TextArea
      {
         return this._2129244398notesta;
      }
      
      public function set notesta(param1:TextArea) : void
      {
         var _loc2_:Object = this._2129244398notesta;
         if(_loc2_ !== param1)
         {
            this._2129244398notesta = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"notesta",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get statusmessage() : String
      {
         return this._1671609301statusmessage;
      }
      
      private function set statusmessage(param1:String) : void
      {
         var _loc2_:Object = this._1671609301statusmessage;
         if(_loc2_ !== param1)
         {
            this._1671609301statusmessage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"statusmessage",_loc2_,param1));
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
