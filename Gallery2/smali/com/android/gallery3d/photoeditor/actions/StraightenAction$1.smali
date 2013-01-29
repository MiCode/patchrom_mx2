.class Lcom/android/gallery3d/photoeditor/actions/StraightenAction$1;
.super Ljava/lang/Object;
.source "StraightenAction.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/RotateView$OnRotateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/StraightenAction;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/StraightenAction;

.field final synthetic val$filter:Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/StraightenAction;Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/StraightenAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/StraightenAction;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/StraightenAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAngleChanged(FZ)V
    .locals 2
    .parameter "degrees"
    .parameter "fromUser"

    .prologue
    .line 56
    if-eqz p2, :cond_0

    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/StraightenAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;->setAngle(F)V

    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/StraightenAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/StraightenAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/StraightenAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/StraightenFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/StraightenAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

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
    .locals 0

    .prologue
    .line 70
    return-void
.end method
