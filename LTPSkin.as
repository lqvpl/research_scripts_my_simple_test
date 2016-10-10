package
{
   import spark.components.supportClasses.Skin;
   import mx.core.IStateClient2;
   import spark.effects.Move;
   import mx.binding.BindingManager;
   import spark.components.HGroup;
   import spark.components.Group;
   import mx.core.IFlexModuleFactory;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   import flash.events.MouseEvent;
   import spark.primitives.Rect;
   import mx.graphics.LinearGradient;
   import mx.core.DeferredInstanceFromFunction;
   import com.enfluid.ltp.model.ViewModel;
   import com.enfluid.ltp.model.DataModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.target;
   import com.enfluid.ltp.view.renderers.KeywordItemRenderer;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.states.AddItems;
   import mx.binding.Binding;
   import mx.graphics.GradientEntry;
   import spark.effects.AddAction;
   import com.enfluid.ltp.view.components.FilterGridColumn;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import spark.layouts.VerticalLayout;
   import spark.components.Application;
   import mx.events.PropertyChangeEvent;
   import spark.components.Button;
   import com.enfluid.ltp.view.skins.GeneralFlatButtonSkin;
   import com.enfluid.ltp.view.renderers.KeywordColumnRenderer;
   
   use namespace mx_internal;
   
   public final class LTPSkin extends Skin implements IStateClient2
   {
       
      
      private var _809612678contentGroup:Group;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:Application;
      
      public function LTPSkin()
      {
         super();
         mx_internal::_document = this;
         this.name = "LTPSkin";
         this.mxmlContent = [this._LTPSkin_Rect1_c(),this._LTPSkin_Group1_i()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"normalAndInactive",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[]
         })];
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
      
      private final function _LTPSkin_Rect1_c() : Rect
      {
         var _loc1_:Rect = new Rect();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() * 62 * 97 + 1) * 65 * 52 - 100);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() + 97 + 29) * 88 - 1);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() * 61 + 74 + 106 - 108 + 1) * 63);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(((§§pop() - 101) * 73 - 94) * 1) * 17 - 7);
         }
         §§pop().bottom = §§pop();
         _loc1_.fill = this._LTPSkin_LinearGradient1_c();
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      private final function _LTPSkin_LinearGradient1_c() : LinearGradient
      {
         var _loc1_:LinearGradient = new LinearGradient();
         _loc1_.entries = [this._LTPSkin_GradientEntry1_c(),this._LTPSkin_GradientEntry2_c(),this._LTPSkin_GradientEntry3_c(),this._LTPSkin_GradientEntry4_c()];
         return _loc1_;
      }
      
      private final function _LTPSkin_GradientEntry1_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(8781);
         if(_loc3_)
         {
            §§push(§§pop() + 1 + 29 + 1 - 94);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 + 1);
         }
         §§pop().ratio = §§pop();
         return _loc1_;
      }
      
      private final function _LTPSkin_GradientEntry2_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(4950448);
         if(_loc2_)
         {
            §§push(-((§§pop() + 12) * 106) + 52);
         }
         §§pop().color = §§pop();
         _loc1_.ratio = 0.35;
         return _loc1_;
      }
      
      private final function _LTPSkin_GradientEntry3_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(4950448);
         if(_loc2_)
         {
            §§push(-(§§pop() + 1) + 106);
         }
         §§pop().color = §§pop();
         _loc1_.ratio = 0.65;
         return _loc1_;
      }
      
      private final function _LTPSkin_GradientEntry4_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(8781);
         if(_loc2_)
         {
            §§push(§§pop() + 1 + 108 - 20);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-§§pop() * 24 + 106);
         }
         §§pop().ratio = §§pop();
         return _loc1_;
      }
      
      private final function _LTPSkin_Group1_i() : Group
      {
         var _loc1_:Group = new Group();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-((§§pop() * 95 + 1) * 78 - 1) - 95 - 47);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(§§pop() - 1) + 10);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 22 + 1 + 16) * 109);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(--(-(§§pop() + 1) * 91 + 1));
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-(-((§§pop() - 32) * 101) - 1) + 116 - 13);
         }
         §§pop().minHeight = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() + 1 - 1 - 5 + 55 - 1) * 77);
         }
         §§pop().minWidth = §§pop();
         _loc1_.id = "contentGroup";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.contentGroup = _loc1_;
         BindingManager.executeBindings(this,"contentGroup",this.contentGroup);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get contentGroup() : Group
      {
         return this._809612678contentGroup;
      }
      
      public function set contentGroup(param1:Group) : void
      {
         var _loc2_:Object = this._809612678contentGroup;
         if(_loc2_ !== param1)
         {
            this._809612678contentGroup = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentGroup",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : Application
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:Application) : void
      {
         var _loc2_:Object = this._213507019hostComponent;
         if(_loc2_ !== param1)
         {
            this._213507019hostComponent = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hostComponent",_loc2_,param1));
            }
         }
      }
   }
}
