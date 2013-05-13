.class Lcom/android/gallery3d/photoeditor/PhotoEditor$10;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/LoadScreennailTask$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor;->openPhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "result"
    .parameter "minResult"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->filterStack:Lcom/android/gallery3d/photoeditor/FilterStack;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/FilterStack;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$10$1;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/photoeditor/PhotoEditor$10$1;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor$10;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/gallery3d/photoeditor/FilterStack;->setPhotoSource(Landroid/graphics/Bitmap;Lcom/android/gallery3d/photoeditor/OnDoneCallback;)V

    .line 421
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->mIsMarkedMode:Z
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$1200(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$300(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/PhotoView;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$10$2;

    invoke-direct {v1, p0, p2}, Lcom/android/gallery3d/photoeditor/PhotoEditor$10$2;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor$10;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->queue(Ljava/lang/Runnable;)V

    .line 443
    :cond_0
    return-void
.end method
