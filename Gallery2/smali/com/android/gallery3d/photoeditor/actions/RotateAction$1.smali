.class Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;
.super Ljava/lang/Object;
.source "RotateAction.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/RotateView$OnRotateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/RotateAction;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

.field queuedTransform:Ljava/lang/Runnable;

.field rotateDegrees:F

.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/RotateAction;

.field final synthetic val$filter:Lcom/android/gallery3d/photoeditor/filters/RotateFilter;

.field final synthetic val$rotateView:Lcom/android/gallery3d/photoeditor/actions/RotateView;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/RotateAction;Lcom/android/gallery3d/photoeditor/filters/RotateFilter;Lcom/android/gallery3d/photoeditor/actions/RotateView;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/RotateAction;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/RotateFilter;

    iput-object p3, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->val$rotateView:Lcom/android/gallery3d/photoeditor/actions/RotateView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/RotateAction;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->toolKit:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->getPhotoView()Lcom/android/gallery3d/photoeditor/PhotoView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    return-void
.end method

.method private transformPhotoView(F)V
    .locals 2
    .parameter "degrees"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->queuedTransform:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->queuedTransform:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->remove(Ljava/lang/Runnable;)V

    .line 81
    :cond_0
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1$1;

    invoke-direct {v0, p0, p1}, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;F)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->queuedTransform:Ljava/lang/Runnable;

    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->queuedTransform:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->queue(Ljava/lang/Runnable;)V

    .line 89
    return-void
.end method


# virtual methods
.method public onAngleChanged(FZ)V
    .locals 2
    .parameter "degrees"
    .parameter "fromUser"

    .prologue
    .line 52
    if-eqz p2, :cond_0

    .line 53
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->rotateDegrees:F

    .line 54
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->rotateDegrees:F

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->transformPhotoView(F)V

    .line 55
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/RotateAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/RotateFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 57
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public onStopTrackingTouch()V
    .locals 3

    .prologue
    const/high16 v2, 0x42b4

    .line 67
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->rotateDegrees:F

    rem-float/2addr v0, v2

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 68
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->rotateDegrees:F

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x5a

    int-to-float v0, v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->rotateDegrees:F

    .line 70
    :cond_0
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->rotateDegrees:F

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->transformPhotoView(F)V

    .line 71
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->val$rotateView:Lcom/android/gallery3d/photoeditor/actions/RotateView;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->rotateDegrees:F

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/RotateView;->setRotatedAngle(F)V

    .line 72
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/RotateFilter;

    iget v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->rotateDegrees:F

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/filters/RotateFilter;->setAngle(F)V

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/RotateAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/RotateAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/RotateFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/RotateAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 74
    return-void
.end method
