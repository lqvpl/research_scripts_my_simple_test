package hr.binaria.asx3m.annotations
{
   import com.enfluid.ltp.util.Logger;
   
   public final class AnnotatedWrapper
   {
       
      
      private var m_object:Object;
      
      private var m_typeAnnotation:hr.binaria.asx3m.annotations.Annotation;
      
      public function AnnotatedWrapper(param1:Object, param2:hr.binaria.asx3m.annotations.Annotation)
      {
         super();
         this.object = param1;
         if(param1 is Annotated && param2 != null)
         {
            this.m_typeAnnotation = Annotated(param1).getClassAnnotation("JavaType");
         }
         else
         {
            this.m_typeAnnotation = param2;
         }
      }
      
      public function get typeAnnotation() : hr.binaria.asx3m.annotations.Annotation
      {
         return m_typeAnnotation;
      }
      
      public function set typeAnnotation(param1:hr.binaria.asx3m.annotations.Annotation) : void
      {
         m_typeAnnotation = param1;
      }
      
      public function set object(param1:Object) : void
      {
         m_object = param1;
      }
      
      public function get object() : Object
      {
         return m_object;
      }
   }
}
