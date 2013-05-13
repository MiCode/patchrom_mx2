.class Lcom/android/gallery3d/photoeditor/PhotoEditor$10$2;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor$10;->onComplete(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$10;

.field final synthetic val$minResult:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/PhotoEditor$10;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 422
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10$2;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$10;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10$2;->val$minResult:Landroid/graphics/Bitmap;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10$2;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$10;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->effectsBar:Lcom/android/gallery3d/photoeditor/EffectsBar;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$100(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/EffectsBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10$2;->val$minResult:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/EffectsBar;->setPhotoSource(Landroid/graphics/Bitmap;)V

    .line 426
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10$2;->this$1:Lcom/android/gallery3d/photoeditor/PhotoEditor$10;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$10;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$300(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Lcom/android/gallery3d/photoeditor/PhotoView;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/photoeditor/PhotoEditor$10$2$1;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$10$2$1;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor$10$2;)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->post(Ljava/lang/Runnable;)Z

    .line 440
    return-void
.end method
