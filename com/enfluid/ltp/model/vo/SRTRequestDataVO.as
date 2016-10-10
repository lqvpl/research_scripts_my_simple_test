package com.enfluid.ltp.model.vo
{
   import spark.primitives.BitmapImage;
   import mx.binding.BindingManager;
   import mx.states.Transition;
   import com.enfluid.ltp.model.DataModel;
   
   public final class SRTRequestDataVO
   {
      
      public static const ADD_KEYWORDS:String = "addKeywords";
      
      public static const CREATE_ACCOUNT:String = "createAccount";
      
      public static const DELETE_KEYWORDS:String = "deleteKeywords";
      
      public static const GET_RANKINGS:String = "getRankings";
      
      public static const SUSPEND_ACCOUNT:String = "suspendAccount";
       
      
      public var action:String;
      
      public var apikey:String = "24YuIQ-09aS144Jsm";
      
      public var fromdate:Number;
      
      public var id:String = "LPT201303";
      
      public var keywords:Array;
      
      public var username:String;
      
      public function SRTRequestDataVO(param1:String)
      {
         this.username = DataModel.instance.userEmail;
         super();
         this.action = param1;
      }
   }
}
