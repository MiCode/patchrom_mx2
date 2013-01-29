.class Lcom/android/gallery3d/ui/CropView$1;
.super Lcom/android/gallery3d/ui/SynchronizedHandler;
.source "CropView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/ui/CropView;-><init>(Lcom/android/gallery3d/app/GalleryActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/ui/CropView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/ui/CropView;Lcom/android/gallery3d/ui/GLRoot;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/gallery3d/ui/CropView$1;->this$0:Lcom/android/gallery3d/ui/CropView;

    invoke-direct {p0, p2}, Lcom/android/gallery3d/ui/SynchronizedHandler;-><init>(Lcom/android/gallery3d/ui/GLRoot;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "message"

    .prologue
    const/4 v0, 0x1

    .line 140
    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/common/Utils;->assertTrue(Z)V

    .line 141
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/CropView$DetectFaceTask;->updateFaces()V

    .line 142
    return-void

    .line 140
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
