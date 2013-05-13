.class Lcom/android/gallery3d/app/MovieControllerOverlay$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "MovieControllerOverlay.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/MovieControllerOverlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/app/MovieControllerOverlay;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "context"

    .prologue
    .line 3267
    iput-object p1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$MyOrientationEventListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    .line 3268
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 3269
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 3272
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$MyOrientationEventListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenRotation:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9500(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v0

    .line 3273
    .local v0, rotation:I
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$MyOrientationEventListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3274
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$MyOrientationEventListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mMovieActivityExtend:Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$2900(Lcom/android/gallery3d/app/MovieControllerOverlay;)Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay$MovieActivityExtend;->getScreenRotation()I

    move-result v0

    .line 3276
    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$MyOrientationEventListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #getter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenRotation:I
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9500(Lcom/android/gallery3d/app/MovieControllerOverlay;)I

    move-result v1

    if-eq v1, v0, :cond_1

    .line 3277
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$MyOrientationEventListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #calls: Lcom/android/gallery3d/app/MovieControllerOverlay;->onScreenOrientationChanged()V
    invoke-static {v1}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9800(Lcom/android/gallery3d/app/MovieControllerOverlay;)V

    .line 3278
    iget-object v1, p0, Lcom/android/gallery3d/app/MovieControllerOverlay$MyOrientationEventListener;->this$0:Lcom/android/gallery3d/app/MovieControllerOverlay;

    #setter for: Lcom/android/gallery3d/app/MovieControllerOverlay;->mScreenRotation:I
    invoke-static {v1, v0}, Lcom/android/gallery3d/app/MovieControllerOverlay;->access$9502(Lcom/android/gallery3d/app/MovieControllerOverlay;I)I

    .line 3280
    :cond_1
    return-void
.end method
