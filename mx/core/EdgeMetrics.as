package mx.core
{
   use namespace mx_internal;
   
   public class EdgeMetrics
   {
      
      mx_internal static const VERSION:String = "4.13.0.0";
      
      public static const EMPTY:mx.core.EdgeMetrics = new mx.core.EdgeMetrics(0,0,0,0);
       
      
      public var bottom:Number;
      
      public var left:Number;
      
      public var right:Number;
      
      public var top:Number;
      
      public function EdgeMetrics(param1:Number = 0, param2:Number = 0, param3:Number = 0, param4:Number = 0)
      {
         super();
         this.left = param1;
         this.top = param2;
         this.right = param3;
         this.bottom = param4;
      }
      
      public function clone() : mx.core.EdgeMetrics
      {
         return new mx.core.EdgeMetrics(this.left,this.top,this.right,this.bottom);
      }
   }
}
