package com.enfluid.ltp.controller.common
{
   import com.photon.controller.IPhotonCommand;
   import flash.events.Event;
   import com.enfluid.ltp.view.TipCallout;
   import mx.effects.Parallel;
   import mx.binding.BindingManager;
   import mx.core.ClassFactory;
   import com.enfluid.ltp.view.skins.FlatUIComponents.HeaderRenderer.FlatDeleteColumnHeaderRenderer;
   import hr.binaria.asx3m.io.IHierarchicalStreamReader;
   import hr.binaria.asx3m.converters.IUnmarshallingContext;
   import mx.collections.ArrayCollection;
   import com.enfluid.ltp.model.vo.TipVO;
   import flash.utils.setTimeout;
   import spark.components.Group;
   import spark.primitives.Rect;
   import spark.events.PopUpEvent;
   import spark.components.Label;
   
   public final class ShowTipsCommand extends Command implements IPhotonCommand
   {
       
      
      private var tips:Array;
      
      private var tipCallout:TipCallout;
      
      public function ShowTipsCommand()
      {
         this.tips = [];
         super();
      }
      
      public function execute() : void
      {
         this.addTipsToList();
         done();
      }
      
      public final function addTipsToList() : void
      {
         var _loc1_:TipVO = null;
         if(!model.tipSettings.avgKCBulkCheckTipViewed && !model.isFirstTimeUser && model.isPlatinum)
         {
            _loc1_ = new TipVO();
            _loc1_.text = "Platinum users can now fetch Average Keyword Competitiveness scores for all filtered keywords with just 1 click.";
            _loc1_.horizontalPosition = "before";
            _loc1_.verticalPosition = "middle";
            _loc1_.anchor = viewModel.missingAvgKCIcon;
            _loc1_.tipShowedVariableName = "avgKCBulkCheckTipViewed";
            this.tips.push(_loc1_);
         }
         §§push(this.tips.length);
         §§push(0);
         if(_loc2_)
         {
            §§push((-(-§§pop() - 1) * 28 - 22 + 109) * 64);
         }
         if(§§pop() > §§pop())
         {
            §§push();
            §§push(this.showTip);
            §§push(2000);
            if(_loc2_)
            {
               §§push((§§pop() + 6 - 1 - 1) * 38 - 1 - 1);
            }
            §§pop().setTimeout(§§pop(),§§pop());
         }
      }
      
      public final function showTip() : void
      {
         var _loc1_:TipVO = this.tips.shift();
         if(!this.tipCallout)
         {
            this.tipCallout = new TipCallout();
            this.tipCallout.addEventListener(PopUpEvent.CLOSE,this.onCloseTipCallout);
         }
         this.tipCallout.tipText = _loc1_.text;
         this.tipCallout.verticalPosition = _loc1_.verticalPosition;
         this.tipCallout.horizontalPosition = _loc1_.horizontalPosition;
         this.tipCallout.open(_loc1_.anchor);
      }
      
      public final function onCloseTipCallout(param1:PopUpEvent) : void
      {
         model.tipSettings.avgKCBulkCheckTipViewed = true;
         §§push(this.tips.length);
         §§push(0);
         if(_loc3_)
         {
            §§push((§§pop() - 1 - 1) * 113 * 83 + 1);
         }
         if(§§pop() > §§pop())
         {
            this.showTip();
         }
         else
         {
            this.tipCallout.removeEventListener(PopUpEvent.CLOSE,this.onCloseTipCallout);
         }
      }
   }
}
