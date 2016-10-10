package
{
   import spark.components.supportClasses.Skin;
   import mx.core.IStateClient2;
   import flash.events.MouseEvent;
   import spark.components.Group;
   import mx.core.IFlexModuleFactory;
   import com.enfluid.ltp.view.renderers.DomainExtensionRenderer;
   import mx.binding.BindingManager;
   import spark.primitives.Rect;
   import com.enfluid.ltp.model.vo.RankCheckItemVO;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.controller.rankchecker.CheckGoogleRankCommand;
   import mx.events.FlexEvent;
   import mx.graphics.LinearGradient;
   import flash.events.EventDispatcher;
   import spark.components.HGroup;
   import mx.graphics.GradientEntry;
   import spark.components.TextInput;
   import com.enfluid.ltp.view.skins.FlatTextInputSkin;
   import com.enfluid.ltp.controller.calqio.SetUserEvent;
   import com.enfluid.ltp.model.constants.Values;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.AnalyzeMajesticCompetitionCommand;
   import com.enfluid.ltp.controller.competitoranalysis.SetupFetchSiteAgeCommand;
   import com.enfluid.ltp.controller.competitoranalysis.majestic.CalcAllMajesticCompetitorAverage;
   import com.enfluid.ltp.controller.competitoranalysis.CalcAllCompetitorAnalysisAverages;
   import com.enfluid.ltp.controller.competitoranalysis.AnalyzeCompetitionCommand;
   import com.enfluid.ltp.controller.competitoranalysis.SetupFetchPageRankCommand;
   import spark.layouts.VerticalLayout;
   import spark.components.Application;
   import mx.events.PropertyChangeEvent;
   import flash.events.Event;
   import com.enfluid.ltp.controller.rankchecker.SaveRankItemsCommand;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import mx.states.State;
   
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
            §§push(-(§§pop() + 114) + 75 + 116 - 11);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(§§pop() + 19 - 1 + 1 + 111);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 1) * 43 - 73 + 1);
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-((§§pop() * 86 - 1) * 22 * 30) - 91 - 56);
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
         if(_loc2_)
         {
            §§push(§§pop() - 116 - 52 + 1 - 1);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() - 1 + 1 + 1);
         }
         §§pop().ratio = §§pop();
         return _loc1_;
      }
      
      private final function _LTPSkin_GradientEntry2_c() : GradientEntry
      {
         var _loc1_:GradientEntry = new GradientEntry();
         §§push(_loc1_);
         §§push(4950448);
         if(_loc3_)
         {
            §§push((-(§§pop() * 66) + 33) * 8);
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
         if(_loc3_)
         {
            §§push((§§pop() + 1) * 104 + 36 - 66);
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
         if(_loc3_)
         {
            §§push(-§§pop() * 67 - 1);
         }
         §§pop().color = §§pop();
         §§push(_loc1_);
         §§push(1);
         if(_loc2_)
         {
            §§push(-(-(§§pop() - 1) - 68) * 80);
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
            §§push(§§pop() - 1 + 114 + 58);
         }
         §§pop().left = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((--§§pop() + 1) * 62 * 97);
         }
         §§pop().right = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(§§pop() * 95) - 100));
         }
         §§pop().top = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 24) * 28 * 88);
         }
         §§pop().bottom = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push(-§§pop() * 61 + 74);
         }
         §§pop().minHeight = §§pop();
         §§push(_loc1_);
         §§push(0);
         if(_loc2_)
         {
            §§push((§§pop() - 108 + 1) * 63 + 1);
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
