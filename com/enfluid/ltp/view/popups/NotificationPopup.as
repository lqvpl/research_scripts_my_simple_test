package com.enfluid.ltp.view.popups
{
   import spark.components.BorderContainer;
   import mx.binding.IBindingClient;
   import mx.binding.IWatcherSetupUtil2;
   import mx.collections.ArrayCollection;
   import flash.utils.Dictionary;
   import spark.components.Label;
   import spark.components.RichEditableText;
   import mx.core.IFlexModuleFactory;
   import spark.primitives.Rect;
   import mx.binding.BindingManager;
   import com.enfluid.ltp.view.components.CustomRichEditableText;
   import mx.events.FlexEvent;
   import com.enfluid.ltp.view.components.AvgDelayComponent;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.ViewModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import mx.core.DeferredInstanceFromFunction;
   import mx.binding.Binding;
   import spark.layouts.VerticalLayout;
   import flash.events.FocusEvent;
   import spark.effects.Move;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import flash.events.Event;
   import com.enfluid.ltp.model.DataModel;
   import flashx.textLayout.elements.TextFlow;
   import flashx.textLayout.conversion.TextConverter;
   import com.adobe.utils.StringUtil;
   import mx.events.PropertyChangeEvent;
   import mx.states.Transition;
   
   use namespace mx_internal;
   
   public final class NotificationPopup extends BorderContainer implements IBindingClient
   {
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _NotificationPopup_Label1:Label;
      
      private var _879079651txtArea:RichEditableText;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function NotificationPopup()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._NotificationPopup_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_com_enfluid_ltp_view_popups_NotificationPopupWatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return NotificationPopup[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         §§push(this);
         §§push(500);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1 - 74) - 42);
         }
         §§pop().width = §§pop();
         §§push(this);
         §§push(300);
         if(_loc3_)
         {
            §§push(§§pop() * 0 - 1 - 40 + 1);
         }
         §§pop().height = §§pop();
         this.styleName = "pod";
         this.layout = this._NotificationPopup_VerticalLayout1_c();
         this.mxmlContentFactory = new DeferredInstanceFromFunction(this._NotificationPopup_Array1_c);
         this.addEventListener("creationComplete",this.___NotificationPopup_BorderContainer1_creationComplete);
         §§push(_loc1_);
         §§push(0);
         if(_loc4_)
         {
            §§push(((§§pop() * 19 + 53) * 67 + 1) * 87 - 46);
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
         NotificationPopup._watcherSetupUtil = param1;
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
            this.backgroundAlpha = 1;
            this.backgroundColor = 16777215;
            this.cornerRadius = 10;
            this.fontSize = 16;
            this.borderVisible = false;
         };
      }
      
      override public function initialize() : void
      {
         super.initialize();
      }
      
      protected final function bordercontainer1_creationCompleteHandler(param1:FlexEvent) : void
      {
         this.txtArea.setStyle("borderVisible",false);
      }
      
      protected final function clickHandler(param1:MouseEvent) : void
      {
         ViewModel.instance.showNotificationMessage = false;
         ViewModel.instance.showNotificationTitle = true;
      }
      
      private final function _NotificationPopup_VerticalLayout1_c() : VerticalLayout
      {
         var _loc1_:VerticalLayout = new VerticalLayout();
         _loc1_.horizontalAlign = "center";
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push((§§pop() - 81 + 4 + 101) * 37);
         }
         §§pop().paddingBottom = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc2_)
         {
            §§push((§§pop() * 69 + 114) * 52 + 82);
         }
         §§pop().paddingLeft = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(-(--§§pop() * 44) - 1);
         }
         §§pop().paddingRight = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc3_)
         {
            §§push(-(§§pop() + 118) * 19 + 1 + 106);
         }
         §§pop().paddingTop = §§pop();
         §§push(_loc1_);
         §§push(20);
         if(_loc2_)
         {
            §§push((§§pop() - 1) * 66 + 1);
         }
         §§pop().gap = §§pop();
         return _loc1_;
      }
      
      private final function _NotificationPopup_Array1_c() : Array
      {
         var _loc1_:Array = [this._NotificationPopup_Label1_i(),this._NotificationPopup_RichEditableText1_i(),this._NotificationPopup_Button1_c()];
         return _loc1_;
      }
      
      private final function _NotificationPopup_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(§§pop() + 1) - 79 - 87 - 85 - 57 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push("color");
         §§push(6710886);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 1) - 1 + 1) + 1 - 12);
         }
         §§pop().setStyle(§§pop(),§§pop());
         §§push(_loc1_);
         §§push("fontSize");
         §§push(24);
         if(_loc3_)
         {
            §§push((§§pop() * 68 * 52 - 113) * 107);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","left");
         _loc1_.setStyle("verticalAlign","middle");
         _loc1_.id = "_NotificationPopup_Label1";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this._NotificationPopup_Label1 = _loc1_;
         BindingManager.executeBindings(this,"_NotificationPopup_Label1",this._NotificationPopup_Label1);
         return _loc1_;
      }
      
      private final function _NotificationPopup_RichEditableText1_i() : RichEditableText
      {
         var _loc1_:RichEditableText = new RichEditableText();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1 - 1 + 1) + 71 - 102);
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(100);
         if(_loc3_)
         {
            §§push(-(-(§§pop() - 67) * 104) + 79);
         }
         §§pop().percentHeight = §§pop();
         _loc1_.styleName = "sectionSubTitle";
         _loc1_.editable = false;
         §§push(_loc1_);
         §§push("fontSize");
         §§push(18);
         if(_loc2_)
         {
            §§push(-((§§pop() + 62) * 96 + 1) + 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("fontWeight","bold");
         _loc1_.setStyle("textAlign","start");
         _loc1_.id = "txtArea";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.txtArea = _loc1_;
         BindingManager.executeBindings(this,"txtArea",this.txtArea);
         return _loc1_;
      }
      
      private final function _NotificationPopup_Button1_c() : Button
      {
         var _loc1_:Button = new Button();
         _loc1_.label = "Ok";
         _loc1_.setStyle("skinClass",GeneralFlatButtonSkin);
         _loc1_.addEventListener("click",this.___NotificationPopup_Button1_click);
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      public final function ___NotificationPopup_Button1_click(param1:MouseEvent) : void
      {
         this.clickHandler(param1);
      }
      
      public final function ___NotificationPopup_BorderContainer1_creationComplete(param1:FlexEvent) : void
      {
         this.bordercontainer1_creationCompleteHandler(param1);
      }
      
      private final function _NotificationPopup_bindingsSetup() : Array
      {
         var result:Array = [];
         §§push(result);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1 - 83 + 81 - 66 - 39));
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return ViewModel.instance.showNotificationTitle;
         },null,"_NotificationPopup_Label1.includeInLayout");
         §§push(result);
         §§push(1);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 49 + 71);
         }
         §§pop()[§§pop()] = new Binding(this,function():String
         {
            var _loc1_:* = DataModel.instance.notificationTitle;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"_NotificationPopup_Label1.text");
         §§push(result);
         §§push(2);
         if(_loc3_)
         {
            §§push((-(-§§pop() + 1 + 42) - 1 + 1) * 72);
         }
         §§pop()[§§pop()] = new Binding(this,function():Boolean
         {
            return ViewModel.instance.showNotificationTitle;
         },null,"_NotificationPopup_Label1.visible");
         §§push(result);
         §§push(3);
         if(_loc2_)
         {
            §§push(-§§pop() + 114 + 83);
         }
         §§pop()[§§pop()] = new Binding(this,function():TextFlow
         {
            return TextConverter.importToFlow(StringUtil.trim(DataModel.instance.notificationText),TextConverter.TEXT_FIELD_HTML_FORMAT);
         },null,"txtArea.textFlow");
         return result;
      }
      
      [Bindable(event="propertyChange")]
      public function get txtArea() : RichEditableText
      {
         return this._879079651txtArea;
      }
      
      public function set txtArea(param1:RichEditableText) : void
      {
         var _loc2_:Object = this._879079651txtArea;
         if(_loc2_ !== param1)
         {
            this._879079651txtArea = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"txtArea",_loc2_,param1));
            }
         }
      }
   }
}
