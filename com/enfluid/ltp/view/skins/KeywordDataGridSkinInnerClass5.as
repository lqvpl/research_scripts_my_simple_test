package com.enfluid.ltp.view.skins
{
   import com.enfluid.ltp.view.renderers.headers.CompetitorAnalysisHeaderRenderer;
   import mx.core.IFlexModuleFactory;
   import mx.events.PropertyChangeEvent;
   import com.enfluid.ltp.model.vo.CompetitorUrlVO;
   import com.enfluid.ltp.model.constants.Values;
   import flash.events.Event;
   import com.enfluid.ltp.controller.keywordresearch.SaveTopTenToServerCommand;
   import flash.events.MouseEvent;
   
   public final class KeywordDataGridSkinInnerClass5 extends CompetitorAnalysisHeaderRenderer
   {
       
      
      private var _88844982outerDocument:com.enfluid.ltp.view.skins.KeywordDataGridSkin;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      public function KeywordDataGridSkinInnerClass5()
      {
         super();
         mx_internal::_document = this;
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
      
      [Bindable(event="propertyChange")]
      public function get outerDocument() : com.enfluid.ltp.view.skins.KeywordDataGridSkin
      {
         return this._88844982outerDocument;
      }
      
      public function set outerDocument(param1:com.enfluid.ltp.view.skins.KeywordDataGridSkin) : void
      {
         var _loc2_:Object = this._88844982outerDocument;
         if(_loc2_ !== param1)
         {
            this._88844982outerDocument = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"outerDocument",_loc2_,param1));
            }
         }
      }
   }
}
