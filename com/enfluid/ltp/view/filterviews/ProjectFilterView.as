package com.enfluid.ltp.view.filterviews
{
   import mx.managers.PopUpManager;
   import com.adobe.cairngorm.popup.PopUpEvent;
   import mx.events.CloseEvent;
   import spark.components.TextInput;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.model.DataModel;
   import spark.events.TextOperationEvent;
   import mx.events.FlexEvent;
   import flash.events.MouseEvent;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.view.skins.FlatUIComponents.TextInput.FlatTextInputSkinSolo;
   import mx.binding.BindingManager;
   import mx.binding.Binding;
   import com.enfluid.ltp.assets.AssetsLibrary;
   import com.enfluid.ltp.model.ViewModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.majestic.target;
   import com.enfluid.ltp.view.renderers.majestic.CompetitorAnalysisListItemRenderer;
   import mx.states.State;
   import mx.events.PropertyChangeEvent;
   
   use namespace mx_internal;
   
   public final class ProjectFilterView extends FilterView
   {
       
      
      private var _1283068421filterTextInput:TextInput;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _104069929model:DataModel;
      
      public function ProjectFilterView()
      {
         this._104069929model = DataModel.instance;
         super();
         mx_internal::_document = this;
         §§push(this);
         §§push(100);
         if(_loc1_)
         {
            §§push(§§pop() - 88 - 1 + 1);
         }
         §§pop().percentWidth = §§pop();
         §§push(this);
         §§push(5);
         if(_loc2_)
         {
            §§push(-(§§pop() * 106 - 1 + 1));
         }
         §§pop().paddingRight = §§pop();
         this.verticalAlign = "baseline";
         this.mxmlContent = [this._ProjectFilterView_TextInput1_i()];
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
      
      protected final function filterTextInputChangeHandler(param1:TextOperationEvent) : void
      {
         if(this.model.selectedKeywordCollection.project)
         {
            this.model.selectedKeywordCollection.project.projectFilterText = this.filterTextInput.text;
         }
         this.refreshData();
      }
      
      override protected function refreshData() : void
      {
         if(liveRefresh && this.model.selectedKeywordCollection)
         {
            this.model.selectedKeywordCollection.refresh();
            this.model.selectedKeywordCollection.project.save();
         }
      }
      
      protected final function filterTextInputClickHandler(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
         param1.stopPropagation();
      }
      
      private final function _ProjectFilterView_TextInput1_i() : TextInput
      {
         var _loc1_:TextInput = new TextInput();
         §§push(_loc1_);
         §§push(100);
         if(_loc2_)
         {
            §§push(--((-§§pop() + 31) * 16 - 14));
         }
         §§pop().percentWidth = §§pop();
         §§push(_loc1_);
         §§push(17);
         if(_loc2_)
         {
            §§push((§§pop() - 9) * 116 - 72 - 33 + 1 + 1);
         }
         §§pop().height = §§pop();
         _loc1_.prompt = "Filter by Project";
         §§push(_loc1_);
         §§push("paddingTop");
         §§push(3);
         if(_loc2_)
         {
            §§push(§§pop() + 1 - 1 - 1);
         }
         §§pop().setStyle(§§pop(),§§pop());
         _loc1_.setStyle("skinClass",FlatTextInputSkinSolo);
         _loc1_.addEventListener("change",this.__filterTextInput_change);
         _loc1_.addEventListener("click",this.__filterTextInput_click);
         _loc1_.id = "filterTextInput";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.filterTextInput = _loc1_;
         BindingManager.executeBindings(this,"filterTextInput",this.filterTextInput);
         return _loc1_;
      }
      
      public final function __filterTextInput_change(param1:TextOperationEvent) : void
      {
         this.filterTextInputChangeHandler(param1);
      }
      
      public final function __filterTextInput_click(param1:MouseEvent) : void
      {
         this.filterTextInputClickHandler(param1);
      }
      
      [Bindable(event="propertyChange")]
      public function get filterTextInput() : TextInput
      {
         return this._1283068421filterTextInput;
      }
      
      public function set filterTextInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._1283068421filterTextInput;
         if(_loc2_ !== param1)
         {
            this._1283068421filterTextInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"filterTextInput",_loc2_,param1));
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
