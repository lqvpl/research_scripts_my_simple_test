package com.enfluid.ltp.model.vo
{
   import mx.binding.Binding;
   import assets.TextAssets;
   
   public final class AmazonResultVO
   {
       
      
      public var asin:String;
      
      public var url:String;
      
      public var thumbnailUrl:String;
      
      public var title:String;
      
      public var price:Number;
      
      public var category:String;
      
      public var starRating:Number = 0;
      
      public var numReviews:int;
      
      public var seller:String;
      
      public var rank:int;
      
      public function AmazonResultVO()
      {
         super();
      }
   }
}
