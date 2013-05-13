.class Lcom/android/gallery3d/photoeditor/FilterStack$4;
.super Ljava/lang/Object;
.source "FilterStack.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/FilterStack;->setPhotoSource(Landroid/graphics/Bitmap;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$callback:Lcom/android/gallery3d/photoeditor/OnDoneCallback;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/FilterStack;Landroid/graphics/Bitmap;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/FilterStack$4;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/FilterStack$4;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/android/gallery3d/photoeditor/FilterStack$4;->val$callback:Lcom/android/gallery3d/photoeditor/OnDoneCallback;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack$4;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack$4;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/Photo;->create(Landroid/graphics/Bitmap;)Lcom/android/gallery3d/photoeditor/Photo;

    move-result-object v1

    #setter for: Lcom/android/gallery3d/photoeditor/FilterStack;->source:Lcom/android/gallery3d/photoeditor/Photo;
    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$302(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/Photo;)Lcom/android/gallery3d/photoeditor/Photo;

    .line 208
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack$4;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    #getter for: Lcom/android/gallery3d/photoeditor/FilterStack;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$600(Lcom/android/gallery3d/photoeditor/FilterStack;)Lcom/android/gallery3d/photoeditor/PhotoView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack$4;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    #getter for: Lcom/android/gallery3d/photoeditor/FilterStack;->source:Lcom/android/gallery3d/photoeditor/Photo;
    invoke-static {v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$300(Lcom/android/gallery3d/photoeditor/FilterStack;)Lcom/android/gallery3d/photoeditor/Photo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->setSourcePhoto(Lcom/android/gallery3d/photoeditor/Photo;)V

    .line 209
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack$4;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    #calls: Lcom/android/gallery3d/photoeditor/FilterStack;->invalidate()V
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$700(Lcom/android/gallery3d/photoeditor/FilterStack;)V

    .line 210
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/FilterStack$4;->this$0:Lcom/android/gallery3d/photoeditor/FilterStack;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/FilterStack$4;->val$callback:Lcom/android/gallery3d/photoeditor/OnDoneCallback;

    #calls: Lcom/android/gallery3d/photoeditor/FilterStack;->callbackDone(Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V
    invoke-static {v0, v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->access$800(Lcom/android/gallery3d/photoeditor/FilterStack;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    .line 211
    return-void
.end method
