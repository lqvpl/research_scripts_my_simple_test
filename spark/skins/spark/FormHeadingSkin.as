package spark.skins.spark
{
   import spark.components.supportClasses.Skin;
   import mx.core.IStateClient2;
   import spark.primitives.Rect;
   import mx.graphics.SolidColor;
   import mx.containers.utilityClasses.ConstraintColumn;
   import spark.components.Label;
   import mx.containers.utilityClasses.ConstraintRow;
   import mx.core.IFlexModuleFactory;
   import spark.layouts.FormItemLayout;
   import mx.binding.BindingManager;
   import spark.components.FormHeading;
   import mx.events.PropertyChangeEvent;
   import mx.states.State;
   import mx.states.SetProperty;
   
   public class FormHeadingSkin extends Skin implements IStateClient2
   {
       
      
      private var _1332194002background:Rect;
      
      private var _1391998104bgFill:SolidColor;
      
      private var _264525383contentCol:ConstraintColumn;
      
      private var _805791359helpCol:ConstraintColumn;
      
      private var _1959283220labelCol:ConstraintColumn;
      
      private var _1184053038labelDisplay:Label;
      
      private var _3506583row1:ConstraintRow;
      
      private var _805245441sequenceCol:ConstraintColumn;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _213507019hostComponent:FormHeading;
      
      public function FormHeadingSkin()
      {
         super();
         mx_internal::_document = this;
         this.layout = this._FormHeadingSkin_FormItemLayout1_c();
         this.mxmlContent = [this._FormHeadingSkin_Rect1_i(),this._FormHeadingSkin_Label1_i()];
         this.currentState = "normal";
         states = [new State({
            "name":"normal",
            "overrides":[]
         }),new State({
            "name":"disabled",
            "overrides":[new SetProperty().initializeFromObject({
               "name":"alpha",
               "value":0.5
            })]
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
      
      override protected function updateDisplayList(param1:Number, param2:Number) : void
      {
         if(isNaN(getStyle("backgroundColor")))
         {
            this.background.visible = false;
         }
         else
         {
            this.background.visible = true;
            this.bgFill.color = getStyle("backgroundColor");
            this.bgFill.alpha = getStyle("backgroundAlpha");
         }
         super.updateDisplayList(param1,param2);
      }
      
      private function _FormHeadingSkin_FormItemLayout1_c() : FormItemLayout
      {
         var _loc1_:FormItemLayout = new FormItemLayout();
         _loc1_.constraintColumns = new <ConstraintColumn>[this._FormHeadingSkin_ConstraintColumn1_i(),this._FormHeadingSkin_ConstraintColumn2_i(),this._FormHeadingSkin_ConstraintColumn3_i(),this._FormHeadingSkin_ConstraintColumn4_i()];
         _loc1_.constraintRows = new <ConstraintRow>[this._FormHeadingSkin_ConstraintRow1_i()];
         return _loc1_;
      }
      
      private function _FormHeadingSkin_ConstraintColumn1_i() : ConstraintColumn
      {
         var _loc1_:ConstraintColumn = new ConstraintColumn();
         _loc1_.initialized(this,"sequenceCol");
         this.sequenceCol = _loc1_;
         BindingManager.executeBindings(this,"sequenceCol",this.sequenceCol);
         return _loc1_;
      }
      
      private function _FormHeadingSkin_ConstraintColumn2_i() : ConstraintColumn
      {
         var _loc1_:ConstraintColumn = new ConstraintColumn();
         _loc1_.initialized(this,"labelCol");
         this.labelCol = _loc1_;
         BindingManager.executeBindings(this,"labelCol",this.labelCol);
         return _loc1_;
      }
      
      private function _FormHeadingSkin_ConstraintColumn3_i() : ConstraintColumn
      {
         var _loc1_:ConstraintColumn = new ConstraintColumn();
         _loc1_.percentWidth = 100;
         _loc1_.initialized(this,"contentCol");
         this.contentCol = _loc1_;
         BindingManager.executeBindings(this,"contentCol",this.contentCol);
         return _loc1_;
      }
      
      private function _FormHeadingSkin_ConstraintColumn4_i() : ConstraintColumn
      {
         var _loc1_:ConstraintColumn = new ConstraintColumn();
         _loc1_.initialized(this,"helpCol");
         this.helpCol = _loc1_;
         BindingManager.executeBindings(this,"helpCol",this.helpCol);
         return _loc1_;
      }
      
      private function _FormHeadingSkin_ConstraintRow1_i() : ConstraintRow
      {
         var _loc1_:ConstraintRow = new ConstraintRow();
         _loc1_.percentHeight = 100;
         _loc1_.initialized(this,"row1");
         this.row1 = _loc1_;
         BindingManager.executeBindings(this,"row1",this.row1);
         return _loc1_;
      }
      
      private function _FormHeadingSkin_Rect1_i() : Rect
      {
         var _loc1_:Rect = new Rect();
         _loc1_.left = 0;
         _loc1_.right = 0;
         _loc1_.top = 0;
         _loc1_.bottom = 0;
         _loc1_.fill = this._FormHeadingSkin_SolidColor1_i();
         _loc1_.initialized(this,"background");
         this.background = _loc1_;
         BindingManager.executeBindings(this,"background",this.background);
         return _loc1_;
      }
      
      private function _FormHeadingSkin_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 16777215;
         this.bgFill = _loc1_;
         BindingManager.executeBindings(this,"bgFill",this.bgFill);
         return _loc1_;
      }
      
      private function _FormHeadingSkin_Label1_i() : Label
      {
         var _loc1_:Label = new Label();
         _loc1_.left = "labelCol:0";
         _loc1_.right = "helpCol:10";
         _loc1_.top = "row1:10";
         _loc1_.bottom = "row1:10";
         _loc1_.id = "labelDisplay";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.labelDisplay = _loc1_;
         BindingManager.executeBindings(this,"labelDisplay",this.labelDisplay);
         return _loc1_;
      }
      
      [Bindable(event="propertyChange")]
      public function get background() : Rect
      {
         return this._1332194002background;
      }
      
      public function set background(param1:Rect) : void
      {
         var _loc2_:Object = this._1332194002background;
         if(_loc2_ !== param1)
         {
            this._1332194002background = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"background",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bgFill() : SolidColor
      {
         return this._1391998104bgFill;
      }
      
      public function set bgFill(param1:SolidColor) : void
      {
         var _loc2_:Object = this._1391998104bgFill;
         if(_loc2_ !== param1)
         {
            this._1391998104bgFill = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bgFill",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get contentCol() : ConstraintColumn
      {
         return this._264525383contentCol;
      }
      
      public function set contentCol(param1:ConstraintColumn) : void
      {
         var _loc2_:Object = this._264525383contentCol;
         if(_loc2_ !== param1)
         {
            this._264525383contentCol = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"contentCol",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get helpCol() : ConstraintColumn
      {
         return this._805791359helpCol;
      }
      
      public function set helpCol(param1:ConstraintColumn) : void
      {
         var _loc2_:Object = this._805791359helpCol;
         if(_loc2_ !== param1)
         {
            this._805791359helpCol = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"helpCol",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get labelCol() : ConstraintColumn
      {
         return this._1959283220labelCol;
      }
      
      public function set labelCol(param1:ConstraintColumn) : void
      {
         var _loc2_:Object = this._1959283220labelCol;
         if(_loc2_ !== param1)
         {
            this._1959283220labelCol = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelCol",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get labelDisplay() : Label
      {
         return this._1184053038labelDisplay;
      }
      
      public function set labelDisplay(param1:Label) : void
      {
         var _loc2_:Object = this._1184053038labelDisplay;
         if(_loc2_ !== param1)
         {
            this._1184053038labelDisplay = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"labelDisplay",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get row1() : ConstraintRow
      {
         return this._3506583row1;
      }
      
      public function set row1(param1:ConstraintRow) : void
      {
         var _loc2_:Object = this._3506583row1;
         if(_loc2_ !== param1)
         {
            this._3506583row1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"row1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sequenceCol() : ConstraintColumn
      {
         return this._805245441sequenceCol;
      }
      
      public function set sequenceCol(param1:ConstraintColumn) : void
      {
         var _loc2_:Object = this._805245441sequenceCol;
         if(_loc2_ !== param1)
         {
            this._805245441sequenceCol = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sequenceCol",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hostComponent() : FormHeading
      {
         return this._213507019hostComponent;
      }
      
      public function set hostComponent(param1:FormHeading) : void
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
