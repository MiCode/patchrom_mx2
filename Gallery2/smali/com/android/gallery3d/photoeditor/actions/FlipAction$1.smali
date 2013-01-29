.class Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;
.super Ljava/lang/Object;
.source "FlipAction.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/FlipView$OnFlipChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/FlipAction;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field horizontalDegrees:F

.field photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

.field queuedTransform:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/FlipAction;

.field final synthetic val$filter:Lcom/android/gallery3d/photoeditor/filters/FlipFilter;

.field final synthetic val$flipView:Lcom/android/gallery3d/photoeditor/actions/FlipView;

.field verticalDegrees:F


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/FlipAction;Lcom/android/gallery3d/photoeditor/filters/FlipFilter;Lcom/android/gallery3d/photoeditor/actions/FlipView;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/FlipAction;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/FlipFilter;

    iput-object p3, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->val$flipView:Lcom/android/gallery3d/photoeditor/actions/FlipView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/FlipAction;

    iget-object v0, v0, Lcom/android/gallery3d/photoeditor/actions/EffectAction;->toolKit:Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;

    invoke-virtual {v0}, Lcom/android/gallery3d/photoeditor/actions/EffectToolKit;->getPhotoView()Lcom/android/gallery3d/photoeditor/PhotoView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    return-void
.end method

.method private roundTo180(F)F
    .locals 3
    .parameter "degrees"

    .prologue
    const/high16 v2, 0x4334

    .line 82
    rem-float v0, p1, v2

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 83
    div-float v0, p1, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    mul-int/lit16 v0, v0, 0xb4

    int-to-float p1, v0

    .line 85
    :cond_0
    return p1
.end method

.method private transformPhotoView(FF)V
    .locals 2
    .parameter "horizontalDegrees"
    .parameter "verticalDegrees"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->queuedTransform:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->queuedTransform:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->remove(Ljava/lang/Runnable;)V

    .line 94
    :cond_0
    new-instance v0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1$1;-><init>(Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;FF)V

    iput-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->queuedTransform:Ljava/lang/Runnable;

    .line 101
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->photoView:Lcom/android/gallery3d/photoeditor/PhotoView;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->queuedTransform:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/PhotoView;->queue(Ljava/lang/Runnable;)V

    .line 102
    return-void
.end method


# virtual methods
.method public onAngleChanged(FFZ)V
    .locals 2
    .parameter "horizontalDegrees"
    .parameter "verticalDegrees"
    .parameter "fromUser"

    .prologue
    .line 54
    if-eqz p3, :cond_0

    .line 55
    iput p1, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->horizontalDegrees:F

    .line 56
    iput p2, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->verticalDegrees:F

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->transformPhotoView(FF)V

    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/FlipAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/FlipFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 60
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch()V
    .locals 0

    .prologue
    .line 65
    return-void
.end method

.method public onStopTrackingTouch()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 70
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->horizontalDegrees:F

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->roundTo180(F)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->horizontalDegrees:F

    .line 71
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->verticalDegrees:F

    invoke-direct {p0, v0}, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->roundTo180(F)F

    move-result v0

    iput v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->verticalDegrees:F

    .line 72
    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->horizontalDegrees:F

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->verticalDegrees:F

    invoke-direct {p0, v0, v3}, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->transformPhotoView(FF)V

    .line 73
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->val$flipView:Lcom/android/gallery3d/photoeditor/actions/FlipView;

    iget v3, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->horizontalDegrees:F

    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->verticalDegrees:F

    invoke-virtual {v0, v3, v4}, Lcom/android/gallery3d/photoeditor/actions/FlipView;->setFlippedAngles(FF)V

    .line 76
    iget-object v3, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/FlipFilter;

    iget v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->horizontalDegrees:F

    float-to-int v0, v0

    div-int/lit16 v0, v0, 0xb4

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    iget v4, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->verticalDegrees:F

    float-to-int v4, v4

    div-int/lit16 v4, v4, 0xb4

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    :goto_1
    invoke-virtual {v3, v0, v1}, Lcom/android/gallery3d/photoeditor/filters/FlipFilter;->setFlip(ZZ)V

    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/FlipAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/FlipAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/FlipFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/FlipAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 79
    return-void

    :cond_0
    move v0, v2

    .line 76
    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
