.class Lcom/android/gallery3d/photoeditor/PhotoEditor$3;
.super Landroid/content/BroadcastReceiver;
.source "PhotoEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/photoeditor/PhotoEditor;
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
    .line 286
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$3;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 289
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 290
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.meizu.recent.show"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$3;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-virtual {v1}, Lcom/android/gallery3d/photoeditor/PhotoEditor;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getSystemBrightnessValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/util/GalleryUtils;->setWindowBrightness(Landroid/view/Window;IZ)V

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 292
    :cond_1
    const-string v1, "com.meizu.recent.dimiss"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/PhotoEditor$3;->this$0:Lcom/android/gallery3d/photoeditor/PhotoEditor;

    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->initGalleryBrightness(Landroid/content/Context;)V

    goto :goto_0
.end method
