.class Lcom/android/gallery3d/photoeditor/PhotoEditor$23;
.super Ljava/lang/Object;
.source "PhotoEditor.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/OnDoneBitmapCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor;->savePhoto()V
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
    .line 841
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$23;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDone(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bitmap"

    .prologue
    .line 845
    new-instance v0, Lcom/android/gallery3d/photoeditor/PhotoEditor$23$1;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/photoeditor/PhotoEditor$23$1;-><init>(Lcom/android/gallery3d/photoeditor/PhotoEditor$23;)V

    .line 865
    .local v0, callback:Lcom/android/gallery3d/photoeditor/SaveCopyTask$Callback;
    new-instance v1, Lcom/android/gallery3d/photoeditor/SaveCopyTask;

    iget-object v2, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$23;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$23;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->sourceUri:Landroid/net/Uri;
    invoke-static {v3}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$2500(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$23;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    #getter for: Lcom/android/gallery3d/photoeditor/PhotoEditor;->isShared:Z
    invoke-static {v4}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->access$2200(Lcom/android/gallery3d/photoeditor/PhotoEditor;)Z

    move-result v4

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/gallery3d/photoeditor/SaveCopyTask;-><init>(Landroid/content/Context;Landroid/net/Uri;ZLcom/android/gallery3d/photoeditor/SaveCopyTask$Callback;)V

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/photoeditor/SaveCopyTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 867
    return-void
.end method
