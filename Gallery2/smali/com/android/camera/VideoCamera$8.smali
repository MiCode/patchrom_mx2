.class Lcom/android/camera/VideoCamera$8;
.super Ljava/lang/Object;
.source "VideoCamera.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/VideoCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/VideoCamera;


# direct methods
.method constructor <init>(Lcom/android/camera/VideoCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 1177
    iput-object p1, p0, Lcom/android/camera/VideoCamera$8;->this$0:Lcom/android/camera/VideoCamera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-wide/16 v1, 0xc8

    .line 1181
    iget-object v0, p0, Lcom/android/camera/VideoCamera$8;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/VideoCamera$8;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 1182
    iget-object v0, p0, Lcom/android/camera/VideoCamera$8;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mFlashLightAdapter:Lcom/android/camera/VideoCamera$FlashLightAdapter;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$4100(Lcom/android/camera/VideoCamera;)Lcom/android/camera/VideoCamera$FlashLightAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/camera/VideoCamera$FlashLightAdapter;->setCurSel(I)V

    .line 1183
    iget-object v0, p0, Lcom/android/camera/VideoCamera$8;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mFlashLightBtn:Lcom/android/camera/ui/RotateImageView;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$4200(Lcom/android/camera/VideoCamera;)Lcom/android/camera/ui/RotateImageView;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeIn(Landroid/view/View;J)V

    .line 1184
    iget-object v0, p0, Lcom/android/camera/VideoCamera$8;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mFlashLightList:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$4300(Lcom/android/camera/VideoCamera;)Landroid/widget/ListView;

    move-result-object v0

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->fadeOut(Landroid/view/View;J)V

    .line 1185
    packed-switch p3, :pswitch_data_0

    .line 1195
    :goto_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera$8;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v1, p0, Lcom/android/camera/VideoCamera$8;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 1196
    iget-object v0, p0, Lcom/android/camera/VideoCamera$8;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/VideoCamera$8;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mFlashLightMode:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/VideoCamera;->access$4400(Lcom/android/camera/VideoCamera;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 1197
    iget-object v0, p0, Lcom/android/camera/VideoCamera$8;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/VideoCamera$8;->this$0:Lcom/android/camera/VideoCamera;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 1198
    iget-object v0, p0, Lcom/android/camera/VideoCamera$8;->this$0:Lcom/android/camera/VideoCamera;

    #calls: Lcom/android/camera/VideoCamera;->updateFlashLightIcon(I)V
    invoke-static {v0, p3}, Lcom/android/camera/VideoCamera;->access$4500(Lcom/android/camera/VideoCamera;I)V

    .line 1199
    iget-object v0, p0, Lcom/android/camera/VideoCamera$8;->this$0:Lcom/android/camera/VideoCamera;

    #getter for: Lcom/android/camera/VideoCamera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/VideoCamera;->access$1300(Lcom/android/camera/VideoCamera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1201
    :cond_0
    return-void

    .line 1187
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/VideoCamera$8;->this$0:Lcom/android/camera/VideoCamera;

    const-string v1, "light-on"

    #setter for: Lcom/android/camera/VideoCamera;->mFlashLightMode:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->access$4402(Lcom/android/camera/VideoCamera;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1191
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/VideoCamera$8;->this$0:Lcom/android/camera/VideoCamera;

    const-string v1, "light-off"

    #setter for: Lcom/android/camera/VideoCamera;->mFlashLightMode:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/camera/VideoCamera;->access$4402(Lcom/android/camera/VideoCamera;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 1185
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
