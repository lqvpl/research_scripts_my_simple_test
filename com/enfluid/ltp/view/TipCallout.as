package com.enfluid.ltp.view
{
   import spark.components.Callout;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import spark.components.Label;
   import mx.core.IFlexModuleFactory;
   import spark.layouts.VerticalLayout;
   import spark.components.HGroup;
   import flash.events.MouseEvent;
   import mx.controls.HRule;
   import mx.binding.BindingManager;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.ViewModel;
   import mx.core.mx_internal;
   import mx.events.PropertyChangeEvent;
   import flash.utils.getDefinitionByName;
   import mx.core.DeferredInstanceFromFunction;
   
   use namespace mx_internal;
   
   public final class TipCallout extends Callout implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _TipCallout_Label2:Label;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _1311656856tipText:String;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function TipCallout()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._TipCallout_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_TipCalloutWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return TipCallout[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(230);
         if(_loc3_)
         {
            §§push(-§§pop() - 13 - 74);
         }
         §§pop().width = §§pop();
         this.layout = this._TipCallout_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._TipCallout_Array1_c);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(§§pop() * 22 + 1 + 1);
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
         TipCallout._watcherSetupUtil = param1;
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
      
      private final function _TipCallout_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         return _loc1_;
      }
      
      private final function _TipCallout_Array1_c() : Array
      {
         var _loc1_:Array = [this._TipCallout_Label1_c(),this._TipCallout_HRule1_c(),this._TipCallout_Label2_i(),this._TipCallout_Button1_c()];
         return _loc1_;
      }
      
      private final function _TipCallout_Label1_c() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.text = "Tip";
         §§push(_loc1_);
         §§push("fontSize");
         §§push(14);
         if(_loc3_)
         {
            §§push((-(-§§pop() - 1) - 33 - 1) * 103 - 5);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _TipCallout_HRule1_c() : HRule
      {
         var _loc1_:HRule = new HRule();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-((§§pop() + 61) * 92 + 1 - 93) - 54);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("strokeWidth");
         §§push(1);
         if(_loc2_)
         {
            §§push((§§pop() - 115) * 65 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private final function _TipCallout_Label2_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push((§§pop() - 1 + 30 + 112) * 24 + 1);
         }
         §§pop().percentWidth = §§pop();
         _loc1_.id = "_TipCallout_Label2";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._TipCallout_Label2 = _loc1_;
         BindingManager.executeBindings(this,"_TipCallout_Label2",this._TipCallout_Label2);
         return _loc1_;
      }
      
      private final function _TipCallout_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() + 27) - 36 + 95 + 42 - 59);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(§§pop() * 94) + 1 - 89 + 90);
         }
         §§pop().horizontalCenter = §§pop();
         _loc1_.label = "Got it!";
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___TipCallout_Button1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___TipCallout_Button1_click(param1:MouseEvent) : void
      {
         this.close();
      }
      
      private final function _TipCallout_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 71 + 1 + 1) * 45 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return ViewModel.instance.appInitialized;
         },null,"this.visible");
         §§push(result);
         §§push(1);
         if(_loc2_)
         {
            §§push(§§pop() - 75 - 75 - 1 - 1 + 1);
         }
         §§pop()[§§pop()] = new Binding(this,null,null,"_TipCallout_Label2.text","tipText");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get tipText() : String
      {
         return this._1311656856tipText;
      }
      
      public function set tipText(param1:String) : void
      {
         var _loc2_:Object = this._1311656856tipText;
         if(_loc2_ !== param1)
         {
            this._1311656856tipText = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"tipText",_loc2_,param1));
            }
         }
      }
   }
}
