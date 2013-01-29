.class Lcom/android/gallery3d/photoeditor/actions/SaturationAction$1;
.super Ljava/lang/Object;
.source "SaturationAction.java"

# interfaces
.implements Lcom/android/gallery3d/photoeditor/actions/ScaleSeekBar$OnScaleChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/photoeditor/actions/SaturationAction;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/gallery3d/photoeditor/actions/SaturationAction;

.field final synthetic val$filter:Lcom/android/gallery3d/photoeditor/filters/CommonEffectSaturationFilter;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/photoeditor/actions/SaturationAction;Lcom/android/gallery3d/photoeditor/filters/CommonEffectSaturationFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/gallery3d/photoeditor/actions/SaturationAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/SaturationAction;

    iput-object p2, p0, Lcom/android/gallery3d/photoeditor/actions/SaturationAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/CommonEffectSaturationFilter;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(FZ)V
    .locals 2
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 55
    if-eqz p2, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/SaturationAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/CommonEffectSaturationFilter;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/filters/CommonEffectSaturationFilter;->setScale(F)V

    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/SaturationAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/SaturationAction;

    #getter for: Lcom/android/gallery3d/photoeditor/actions/SaturationAction;->commonParameter:Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;
    invoke-static {v0}, Lcom/android/gallery3d/photoeditor/actions/SaturationAction;->access$000(Lcom/android/gallery3d/photoeditor/actions/SaturationAction;)Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/photoeditor/actions/FilterCommonParameter;->setSaturation(F)V

    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/photoeditor/actions/SaturationAction$1;->this$0:Lcom/android/gallery3d/photoeditor/actions/SaturationAction;

    iget-object v1, p0, Lcom/android/gallery3d/photoeditor/actions/SaturationAction$1;->val$filter:Lcom/android/gallery3d/photoeditor/filters/CommonEffectSaturationFilter;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/photoeditor/actions/SaturationAction;->notifyChanged(Lcom/android/gallery3d/photoeditor/filters/Filter;)V

    .line 60
    :cond_0
    return-void
.end method
