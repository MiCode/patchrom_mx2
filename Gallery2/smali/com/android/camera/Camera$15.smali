.class Lcom/android/camera/Camera$15;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method constructor <init>(Lcom/android/camera/Camera;)V
    .locals 0
    .parameter

    .prologue
    .line 2917
    iput-object p1, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

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
    .line 2921
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    if-eqz v0, :cond_0

    .line 2922
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFlashLightAdapter:Lcom/android/camera/Camera$FlashLightAdapter;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$11800(Lcom/android/camera/Camera;)Lcom/android/camera/Camera$FlashLightAdapter;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/camera/Camera$FlashLightAdapter;->setCurSel(I)V

    .line 2923
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->collapseFlashLightList()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$2700(Lcom/android/camera/Camera;)V

    .line 2924
    invoke-static {}, Lcom/android/camera/Util;->getCurCaptureMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2925
    packed-switch p3, :pswitch_data_0

    .line 2951
    :goto_0
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    invoke-virtual {v1}, Lcom/android/camera/CameraManager$CameraProxy;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, v0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    .line 2952
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    iget-object v1, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/camera/Camera;->access$11900(Lcom/android/camera/Camera;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 2953
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    iget-object v0, v0, Lcom/android/camera/ActivityBase;->mCameraDevice:Lcom/android/camera/CameraManager$CameraProxy;

    iget-object v1, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/ActivityBase;->mParameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraManager$CameraProxy;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 2954
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->updateFlashLightIcon(I)V
    invoke-static {v0, p3}, Lcom/android/camera/Camera;->access$12000(Lcom/android/camera/Camera;I)V

    .line 2955
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/camera/Camera;->access$1300(Lcom/android/camera/Camera;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2956
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    invoke-static {v0}, Lcom/android/camera/Util;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "pref_camera_flashmode_key"

    iget-object v2, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    #getter for: Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/camera/Camera;->access$11900(Lcom/android/camera/Camera;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2958
    :cond_0
    return-void

    .line 2927
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    const-string v1, "auto"

    #setter for: Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$11902(Lcom/android/camera/Camera;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2931
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    const-string v1, "on"

    #setter for: Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$11902(Lcom/android/camera/Camera;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2935
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    const-string v1, "off"

    #setter for: Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$11902(Lcom/android/camera/Camera;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2940
    :cond_1
    packed-switch p3, :pswitch_data_1

    goto :goto_0

    .line 2942
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    const-string v1, "on"

    #setter for: Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$11902(Lcom/android/camera/Camera;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2946
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/Camera$15;->this$0:Lcom/android/camera/Camera;

    const-string v1, "off"

    #setter for: Lcom/android/camera/Camera;->mFlashLightMode:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/camera/Camera;->access$11902(Lcom/android/camera/Camera;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 2925
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2940
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
