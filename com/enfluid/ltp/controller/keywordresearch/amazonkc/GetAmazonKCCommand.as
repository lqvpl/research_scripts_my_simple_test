package com.enfluid.ltp.controller.keywordresearch.amazonkc
{
   import com.photon.controller.PhotonComplexCommand;
   import com.photon.controller.IPhotonCommand;
   import flash.events.Event;
   import flash.utils.ByteArray;
   import com.enfluid.ltp.model.vo.KeywordVO;
   import com.enfluid.ltp.model.DataModel;
   import com.enfluid.ltp.model.ViewModel;
   import mx.core.mx_internal;
   import flash.utils.getDefinitionByName;
   import com.enfluid.ltp.view.renderers.target;
   import com.enfluid.ltp.view.renderers.TabRenderer;
   import mx.states.State;
   import mx.states.SetProperty;
   import mx.binding.BindingManager;
   import mx.binding.Binding;
   import com.enfluid.ltp.model.constants.Values;
   import com.photon.controller.PhotonCommandCompletionEvent;
   import spark.components.Image;
   import com.photon.controller.PhotonCommand;
   import spark.primitives.Rect;
   import flash.events.MouseEvent;
   
   use namespace mx_internal;
   
   public final class GetAmazonKCCommand extends PhotonComplexCommand implements IPhotonCommand
   {
       
      
      private var keyword:KeywordVO;
      
      public function GetAmazonKCCommand(param1:KeywordVO)
      {
         this.keyword = param1;
         super();
      }
      
      override public function execute() : void
      {
         if(waitInQueue)
         {
            this.keyword.amazonKC = Values.WAITING;
            return;
         }
         addCommand(new SubmitAndScrapeAmazonResults(this.keyword),this.onDoneScrapingResults);
         addCommand(new SaveAmazonResultsToServerCommand(this.keyword));
         super.execute();
      }
      
      private final function onDoneScrapingResults(param1:PhotonCommandCompletionEvent) : void
      {
         if(param1.status == PhotonCommand.FAILURE)
         {
            stop();
         }
      }
   }
}
