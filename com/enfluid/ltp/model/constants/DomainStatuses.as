package com.enfluid.ltp.model.constants
{
   import system.data.Map;
   import system.data.iterators.ArrayIterator;
   
   public final class DomainStatuses
   {
      
      public static const AVAILABLE:int = 1;
      
      public static const NOT_FETCHED:int = 0;
      
      public static const UNAVAILABLE:int = -1;
      
      public static const ERROR:int = -100;
       
      
      public function DomainStatuses()
      {
         super();
      }
   }
}
