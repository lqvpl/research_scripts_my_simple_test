package com.enfluid.ltp.util
{
   import mx.controls.ProgressBar;
   import com.enfluid.ltp.model.ViewModel;
   import flash.events.MouseEvent;
   import mx.graphics.SolidColor;
   import com.photon.controller.PhotonCommand;
   import mx.effects.Parallel;
   import mx.binding.BindingManager;
   import mx.states.State;
   import mx.states.SetProperty;
   import com.enfluid.ltp.view.components.ProxiesGridColumn;
   import spark.components.supportClasses.InteractionStateDetector;
   import flash.events.Event;
   import com.hurlant.crypto.prng.ARC4;
   import com.hurlant.crypto.prng.IPRNG;
   import flash.utils.ByteArray;
   
   public final class ProgressBarUtil
   {
      
      private static var _progressBar:ProgressBar;
      
      private static var _currentCount:int;
      
      private static var maxCount:int;
      
      private static var currentStep:int;
      
      private static var maxSteps:int;
      
      private static var _stepDescription:String;
       
      
      public function ProgressBarUtil()
      {
         super();
      }
      
      public static function get progressBar() : ProgressBar
      {
         if(!_progressBar)
         {
            _progressBar = ViewModel.instance.progressBar;
         }
         return _progressBar;
      }
      
      public static function get currentCount() : int
      {
         return _currentCount;
      }
      
      public static function setCurrentCount(param1:int, param2:String = "") : void
      {
         try
         {
            _currentCount = param1;
            progressBar.setProgress(_currentCount,maxCount);
            setText(param2);
            return;
         }
         catch(err:Error)
         {
            return;
         }
      }
      
      public static function incrementCurrentCount(param1:String = "") : void
      {
         §§push();
         §§push(currentCount);
         §§push(1);
         if(_loc2_)
         {
            §§push(--§§pop() - 16 - 1 + 49 + 50);
         }
         §§pop().setCurrentCount(§§pop() + §§pop(),param1);
      }
      
      public static function startProgessBar(param1:int) : void
      {
         §§push();
         §§push(0);
         if(_loc3_)
         {
            §§push(-(-(§§pop() + 18) * 114 - 107 + 1));
         }
         §§pop().currentStep = §§pop();
         §§push();
         §§push(0);
         if(_loc3_)
         {
            §§push((-§§pop() - 100) * 90);
         }
         §§pop()._currentCount = §§pop();
         maxSteps = param1;
      }
      
      public static function startProgressBarStep(param1:String, param2:int) : void
      {
         currentStep = _loc4_;
         §§push();
         §§push(0);
         if(_loc5_)
         {
            §§push(-((§§pop() - 1 - 1) * 110 - 1 + 1 + 46));
         }
         §§pop()._currentCount = §§pop();
         maxCount = param2;
         _stepDescription = param1;
         setText();
      }
      
      public static function setText(param1:String = "") : void
      {
         try
         {
            if(_stepDescription)
            {
               progressBar.label = "Step " + currentStep + " of " + maxSteps + "  -  " + _stepDescription + (!!param1?": " + param1:"");
            }
            else
            {
               progressBar.label = "Step " + currentStep + " of " + maxSteps + "  -  " + param1 || "";
            }
            return;
         }
         catch(err:Error)
         {
            return;
         }
      }
      
      public static function setProgressDetails(param1:String, param2:int) : void
      {
         currentStep++;
         §§push();
         §§push(0);
         if(_loc6_)
         {
            §§push(-(§§pop() * 66 + 57 - 1 + 105 - 52) * 53);
         }
         §§pop()._currentCount = §§pop();
         _stepDescription = param1;
         maxCount = param2;
         setText(param1);
      }
   }
}
