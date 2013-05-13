.class Lcom/android/gallery3d/app/CropImage$12;
.super Landroid/content/BroadcastReceiver;
.source "CropImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/CropImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/CropImage;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/app/CropImage;)V
    .locals 0
    .parameter

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/android/gallery3d/app/CropImage$12;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1169
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1170
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.meizu.recent.show"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1171
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$12;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-virtual {v1}, Lcom/android/gallery3d/app/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-static {}, Lcom/android/gallery3d/util/GalleryUtils;->getSystemBrightnessValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/gallery3d/util/GalleryUtils;->setWindowBrightness(Landroid/view/Window;IZ)V

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1172
    :cond_1
    const-string v1, "com.meizu.recent.dimiss"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1173
    iget-object v1, p0, Lcom/android/gallery3d/app/CropImage$12;->this$0:Lcom/android/gallery3d/app/CropImage;

    invoke-static {v1}, Lcom/android/gallery3d/util/GalleryUtils;->initGalleryBrightness(Landroid/content/Context;)V

    goto :goto_0
.end method
