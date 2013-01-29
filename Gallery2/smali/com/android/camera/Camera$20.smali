.class Lcom/android/camera/Camera$20;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/Camera;->onRestorePreferencesClicked()V
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
    .line 5480
    iput-object p1, p0, Lcom/android/camera/Camera$20;->this$0:Lcom/android/camera/Camera;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 5483
    iget-object v0, p0, Lcom/android/camera/Camera$20;->this$0:Lcom/android/camera/Camera;

    #calls: Lcom/android/camera/Camera;->restorePreferences()V
    invoke-static {v0}, Lcom/android/camera/Camera;->access$13000(Lcom/android/camera/Camera;)V

    .line 5484
    return-void
.end method
